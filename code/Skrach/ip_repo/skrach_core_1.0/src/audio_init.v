///////////////////////////////////////////////////////////////////////////////
//
// Digilent staff, Jeff Falkinburg, and Daria Solovey
//
// Updated April 24th, 2020
//
// Implements an I2C controller to send data to the audio codec's registers.
// To configure, simply change/add data in the initA switch statement. Make
// sure to update INIT_VECTORS if the number of entries changes.
//
// Currently configured in the same manner as the DMA demo.
// All 4 ports are enabled:
//  - line in -> L/R A2D_Data
//  - Mic in -> L only A2D_Data (with 90% biasing)
//  - Line out -> L/R D2A_Data
//  - Headphone -> L/R D2A_Data (boosted)
// Even with 4 ports, there are still only 2 channels of data, L/R in, L/R out.
// 
// 48KHz sampling rate at a max of 24 bits of audio data. The MClock must be
// generated and sent to the codec with a value of 12.288 Mhz. There are 64bits
// of data per LR clock frame, or 32bits per channel with 2 channels per in/out.
//
// This instantiation file requires a clock of 100Mhz.
//
// More information about the the codec can be found at:
// https://www.analog.com/en/products/adau1761.html
//
// TODO: Convert to VHDL to have better cohesiveness with other projects
//
///////////////////////////////////////////////////////////////////////////////


module audio_init(
    input clk_100,
    input rst,
    inout sda,
    inout scl
    );
    wire clk=clk_100;
    parameter stRegAddr1 = 4'b0000;
    parameter stRegAddr2 =   4'b0001;
    parameter stData1 = 4'b0010;
    parameter stData2 = 4'b0011;
    parameter stError =   4'b0100;
    parameter stDone = 4'b0101;
    parameter stIdle = 4'b0110;
    parameter stDelay = 4'b0111;
    parameter stPLLsecond = 4'b1111;
    
    parameter INIT_VECTORS = 36;
    parameter IRD = 1'b1;//init read
    parameter IWR = 1'b0;//init write
    parameter delay = 1000*24;
    
    reg [3:0] state=stIdle;//State machine
    reg [32:0] initWord;
    reg initFbWe;
    reg initEn;
    reg [6:0]initA=0;
    always @(posedge(clk))begin
        case (initA)
            // Start by telling codec to use PLL
            0: initWord <= {IWR,31'h40000E00};
            // PLL 12.288MHz MClk, VCO 49.152 MHz
            1: initWord <= {IWR,31'h4002007D}; 
            2: initWord <= {IWR,31'h000C2001};
            // Switch on core clock after config
            3: initWord <= {IWR,31'h40000F00};
            
            //slave: I2S
            4: initWord <= {IWR,31'h40150100};
            //64 bit audio frame(L+R)
            5: initWord <= {IWR,31'h40160000};
            //ADC, DAC sampling rate to 48KHz
            6: initWord <= {IWR,31'h40170000};
            //ADC, DAC sampling rate to 48KHz
            7: initWord <= {IWR,31'h40F80000};
            //ADC are both connected, normal mic polarity
            8: initWord <= {IWR,31'h40191300};
            //DAC are both connected
            9: initWord <= {IWR,31'h402A0300};
            //Enabling both channels
            10: initWord <= {IWR,31'h40290300};
            //Serial input [L0,R0] to DAC
            11: initWord <= {IWR,31'h40F20100};
            //Enable all digital circuits except Codec slew
            12: initWord <= {IWR,31'h40F97F00};
            //Turns on CLK0 and CLK1
            13: initWord <= {IWR,31'h40FA0300};
            
            //Mixer5 0dB
            14: initWord <= {IWR,31'h40200300};
            //Mixer7 enabled
            15: initWord <= {IWR,31'h40220100};
            //Mixer6 0dB
            16: initWord <= {IWR,31'h40210900};
            //Left output: 0db Line out
            17: initWord <= {IWR,31'h4025E600};
            //Right output: 0db Line out
            18: initWord <= {IWR,31'h4026E600};
            //Mono output: -57 dB unmute HP out
            19: initWord <= {IWR,31'h40270300};
            //Mic bias 90%
            20: initWord <= {IWR,31'h40100100};
            //enable pop and click suppression
            21: initWord <= {IWR,31'h40280000};
            //enable Left headphone and set 0dB
            22: initWord <= {IWR,31'h4023E700};
            //enable Right headphone and set 0dB
            23: initWord <= {IWR,31'h4024E700};
            
            //enable Mixer1, mute left single ended
            24: initWord <= {IWR,31'h400A0100};
            //enable MixerAux1, mute left differential input
            25: initWord <= {IWR,31'h400B0D00};
            //enable Mixer2, mute right single ended
            26: initWord <= {IWR,31'h400C0100};
            //enable MixerAux2, mute right differential input
            27: initWord <= {IWR,31'h400D0500};
            //disable Left differential input
            28: initWord <= {IWR,31'h400E0300};
            //disable right differential input
            29: initWord <= {IWR,31'h400F0300};
            //Enable Mixer3 with the the left DAC channel, mute MixerAux3
            30: initWord <= {IWR,31'h401C2100};
            //Mute Right and Left input mixers
            31: initWord <= {IWR,31'h401D0000};
            //Enable Mixer4 with the the right DAC channel, mute MixerAux4
            32: initWord <= {IWR,31'h401E4100};
            //Mute Right and Left input mixers
            33: initWord <= {IWR,31'h401F0000};
            //Serial output to L0 R0
            34: initWord <= {IWR,31'h40F30100};
            //Enable LRCLK and BLCK
            35: initWord <= {IWR,31'h40F40000};
        endcase
    end
    reg msg;//New message signal
    reg stb;//Strobe signal
    reg [7:0] data_i;//Data into TWI controller
    wire [7:0] data_o;//Data out of TWI controller
    wire done;
    wire error;
    wire errortype;
    wire [7:0] twiAddr;//Address of device on TWI
    reg [7:0] regData1;
    
    reg delayEn=0;
    integer delaycnt;
    
    
    assign twiAddr[7:1] = 7'b0111011;

    assign twiAddr[0] = 0;
    
    // User #() to do a generic map
    TWICtl #(100) twi_controller(
            .MSG_I(msg),
            .STB_I(stb),
            .A_I(twiAddr),
            .D_I(data_i),
            .D_O(data_o),
            .DONE_O(done),
            .ERR_O(error),
            .CLK(clk),
            .SRST(rst),
            .SDA(sda),
            .SCL(scl)
        );


    
always @(posedge(clk))begin
    if (delayEn==1)
        delaycnt<=delaycnt-1;
    else
        delaycnt<=delay;
end


always @(posedge(clk))begin
    if (state == stData1 && done == 1 && error != 1)
        regData1 <= data_o;
end


always @(posedge(clk))begin
    if (rst==1)begin
        state<= stIdle;
        delayEn <= 0;
        initA <=0;
        end
    else begin
        data_i <= "--------";
        stb <= 0;
        msg <= 0;
        
        initFbWe <= 0;
        case (state) 
            stRegAddr1: begin// Sends x40
                if (done == 1)begin
                    if (error == 1) 
                        state <= stError;
                    else
                        state <= stRegAddr2;
                end
                data_i <= initWord[31:24];
                stb <= 1;
                msg <= 1;
            end
            stRegAddr2: begin    //Sends register address x40(XX)
                if (done == 1)begin
                    if (error == 1)
                        state <= stError;
                    else
                        state <= stData1;
                end
                data_i <= initWord[23:16];
                stb <= 1;
            end
            stData1: begin
                if (done == 1) begin
                    if (error == 1)
                        state <= stError;
                    else begin
                        if (initWord[7:0]!=0)//If there is another byte, send it
                            state <= stData2;
                        else begin//no more bytes to send
                            initEn <= 1;
                            
                            if (initA == INIT_VECTORS-1)//Done with all instructions
                                state <= stDone;
                            else            //Only 3 bytes to send
                                state <= stDelay;
                        end
                    end
                end
                if (initWord[32] == 1) msg <= 1;
                data_i <= initWord[15:8];
                stb <= 1;
            end
            stData2: begin
                if (done == 1)begin
                    if (error == 1)
                        state <= stError;
                    else begin
                        initEn<=1;
                        if (initWord[32] == 1) initFbWe <= 1;
                        if (initWord[23:16]== 8'h02)begin//If its the PLL register
                            initA<=initA+1;//Move initWord to the remaining PLL config bits
                            state <= stPLLsecond;//And send them
                        end
                        else if (initA == INIT_VECTORS-1)
                            state <= stDone;
                        else
                            state <= stDelay;
                    end
                end
                data_i <= initWord[7:0];
                stb <= 1;
            end
            stPLLsecond:begin
                if (done == 1)begin
                    if (error == 1) 
                        state <= stError;
                    else
                        state <= stRegAddr2;
                end
                data_i <= initWord[31:24];
                stb <= 1;
            end
            stError: begin
                state <= stRegAddr1;
            end
            stDone: begin
            end
            stIdle:begin
                state <= stRegAddr1;
            end
            stDelay:begin
                delayEn <= 1;
                if (delaycnt==0)begin
                    delayEn<=0;
                    if (initEn)begin
                        initA<=initA+1;
                        initEn <= 0;
                    end
                    state<=stRegAddr1;
                end
            end
        endcase
    end
end
endmodule
