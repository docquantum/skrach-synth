`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/08/2015 06:07:53 PM
// Design Name: 
// Module Name: audio_init
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module audio_init(
    input clk,
    input rst,
    inout sda,
    inout scl
    );
    parameter stRegAddr1 = 4'b0000;
    parameter stRegAddr2 =   4'b0001;
    parameter stData1 = 4'b0010;
    parameter stData2 = 4'b0011;
    parameter stError =   4'b0100;
    parameter stDone = 4'b0101;
    parameter stIdle = 4'b0110;
    parameter stDelay = 4'b0111;
    parameter stPLLsecond = 4'b1111;
    
    parameter INIT_VECTORS = 35;
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
            0: initWord <= {IWR,31'h40150100}; // jlf 50% duty cycle, falling-edge, slave mode
            1: initWord <= {IWR,31'h40168000}; // jlf changed h40160000 changes the LRCLK Audio Frame
            2: initWord <= {IWR,31'h40170000};
            3: initWord <= {IWR,31'h40F80000};
            4: initWord <= {IWR,31'h40191300};
            5: initWord <= {IWR,31'h402A0300};
            6: initWord <= {IWR,31'h40290300};
            7: initWord <= {IWR,31'h40F20100};
            8: initWord <= {IWR,31'h40F97F00};
            9: initWord <= {IWR,31'h40FA0300};
            
            10: initWord <= {IWR,31'h40200300};
            11: initWord <= {IWR,31'h40220100};
            12: initWord <= {IWR,31'h40210900};
            13: initWord <= {IWR,31'h4025E600};
            14: initWord <= {IWR,31'h4026E600};
            15: initWord <= {IWR,31'h40270300};
            16: initWord <= {IWR,31'h40100100};
            17: initWord <= {IWR,31'h40280000};
            18: initWord <= {IWR,31'h4023E600};
            19: initWord <= {IWR,31'h4024E600};
            
            20: initWord <= {IWR,31'h400A0100};
            21: initWord <= {IWR,31'h400B0500};
            22: initWord <= {IWR,31'h400C0100};
            23: initWord <= {IWR,31'h400D0500};
            24: initWord <= {IWR,31'h400E0300};
            25: initWord <= {IWR,31'h400F0300};
            26: initWord <= {IWR,31'h401C2100};
            27: initWord <= {IWR,31'h401D0000};
            28: initWord <= {IWR,31'h401E4100};
            29: initWord <= {IWR,31'h401F0000};
            30: initWord <= {IWR,31'h40F30100};
            31: initWord <= {IWR,31'h40F40000};
            32: initWord <= {IWR,31'h40000900}; // jlf changed from h40000F00 to make Fs = 48KHz
            33: initWord <= {IWR,31'h4002007D};//This sends the address of the PLL reg and the first config bits
            34: initWord <= {IWR,31'h000C2101}; //These are the config bytes for the PLL reg
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
    
    TWICtl twi_controller(
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
