// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sun Apr 12 23:34:06 2020
// Host        : QuantumNet-L4 running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim
//               /home/docquantum/homework/ce446_solovey/final/code/Skrach.srcs/sources_1/bd/lab4_design/ip/lab4_design_lab4_ip_0_6/lab4_design_lab4_ip_0_6_sim_netlist.v
// Design      : lab4_design_lab4_ip_0_6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "lab4_design_lab4_ip_0_6,lab4_ip_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "lab4_ip_v1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module lab4_design_lab4_ip_0_6
   (ac_mclk,
    ac_adc_sdata,
    ac_dac_sdata,
    ac_bclk,
    ac_lrclk,
    scl,
    sda,
    btn,
    switch,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  output ac_mclk;
  input ac_adc_sdata;
  output ac_dac_sdata;
  output ac_bclk;
  output ac_lrclk;
  inout scl;
  inout sda;
  input [4:0]btn;
  input [7:0]switch;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire \Data_Out_int[18]_i_4_n_0 ;
  wire \Data_Out_int[22]_i_11_n_0 ;
  wire \Data_Out_int[22]_i_14_n_0 ;
  wire \Data_Out_int[22]_i_17_n_0 ;
  wire \Data_Out_int[22]_i_8_n_0 ;
  wire \Data_Out_int[26]_i_11_n_0 ;
  wire \Data_Out_int[26]_i_14_n_0 ;
  wire \Data_Out_int[26]_i_17_n_0 ;
  wire \Data_Out_int[26]_i_8_n_0 ;
  wire \Data_Out_int[30]_i_12_n_0 ;
  wire \Data_Out_int[30]_i_15_n_0 ;
  wire \Data_Out_int[30]_i_3_n_0 ;
  wire L__972_carry_i_19_n_0;
  wire U0_n_21;
  wire U0_n_22;
  wire U0_n_23;
  wire U0_n_24;
  wire U0_n_25;
  wire U0_n_26;
  wire U0_n_27;
  wire U0_n_28;
  wire U0_n_29;
  wire U0_n_30;
  wire U0_n_31;
  wire U0_n_32;
  wire ac_bclk;
  wire ac_dac_sdata;
  wire ac_lrclk;
  wire ac_mclk;
  wire [4:0]btn;
  wire [15:3]\lab4_ip_v1_0_S00_AXI_inst/dp_inst/L ;
  (* IBUF_LOW_PWR *) wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire scl;
  wire sda;
  wire [7:0]switch;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  LUT2 #(
    .INIT(4'h6)) 
    \Data_Out_int[18]_i_4 
       (.I0(\lab4_ip_v1_0_S00_AXI_inst/dp_inst/L [4]),
        .I1(U0_n_31),
        .O(\Data_Out_int[18]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Data_Out_int[22]_i_11 
       (.I0(\lab4_ip_v1_0_S00_AXI_inst/dp_inst/L [7]),
        .I1(U0_n_28),
        .O(\Data_Out_int[22]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Data_Out_int[22]_i_14 
       (.I0(\lab4_ip_v1_0_S00_AXI_inst/dp_inst/L [6]),
        .I1(U0_n_29),
        .O(\Data_Out_int[22]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Data_Out_int[22]_i_17 
       (.I0(\lab4_ip_v1_0_S00_AXI_inst/dp_inst/L [5]),
        .I1(U0_n_30),
        .O(\Data_Out_int[22]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Data_Out_int[22]_i_8 
       (.I0(\lab4_ip_v1_0_S00_AXI_inst/dp_inst/L [8]),
        .I1(U0_n_27),
        .O(\Data_Out_int[22]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Data_Out_int[26]_i_11 
       (.I0(\lab4_ip_v1_0_S00_AXI_inst/dp_inst/L [11]),
        .I1(U0_n_24),
        .O(\Data_Out_int[26]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Data_Out_int[26]_i_14 
       (.I0(\lab4_ip_v1_0_S00_AXI_inst/dp_inst/L [10]),
        .I1(U0_n_25),
        .O(\Data_Out_int[26]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Data_Out_int[26]_i_17 
       (.I0(\lab4_ip_v1_0_S00_AXI_inst/dp_inst/L [9]),
        .I1(U0_n_26),
        .O(\Data_Out_int[26]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Data_Out_int[26]_i_8 
       (.I0(\lab4_ip_v1_0_S00_AXI_inst/dp_inst/L [12]),
        .I1(U0_n_23),
        .O(\Data_Out_int[26]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Data_Out_int[30]_i_12 
       (.I0(\lab4_ip_v1_0_S00_AXI_inst/dp_inst/L [14]),
        .I1(U0_n_21),
        .O(\Data_Out_int[30]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Data_Out_int[30]_i_15 
       (.I0(\lab4_ip_v1_0_S00_AXI_inst/dp_inst/L [13]),
        .I1(U0_n_22),
        .O(\Data_Out_int[30]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Data_Out_int[30]_i_3 
       (.I0(\lab4_ip_v1_0_S00_AXI_inst/dp_inst/L [15]),
        .O(\Data_Out_int[30]_i_3_n_0 ));
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h6)) 
    L__972_carry_i_19
       (.I0(\lab4_ip_v1_0_S00_AXI_inst/dp_inst/L [3]),
        .I1(U0_n_32),
        .O(L__972_carry_i_19_n_0));
  lab4_design_lab4_ip_0_6_lab4_ip_v1_0 U0
       (.BCLK_int_reg(ac_bclk),
        .\Data_Out_int[18]_i_4 (\Data_Out_int[22]_i_17_n_0 ),
        .\Data_Out_int[22]_i_11 (\Data_Out_int[22]_i_8_n_0 ),
        .\Data_Out_int[22]_i_14 (\Data_Out_int[22]_i_11_n_0 ),
        .\Data_Out_int[22]_i_17 (\Data_Out_int[22]_i_14_n_0 ),
        .\Data_Out_int[22]_i_8 (\Data_Out_int[26]_i_17_n_0 ),
        .\Data_Out_int[26]_i_11 (\Data_Out_int[26]_i_8_n_0 ),
        .\Data_Out_int[26]_i_14 (\Data_Out_int[26]_i_11_n_0 ),
        .\Data_Out_int[26]_i_17 (\Data_Out_int[26]_i_14_n_0 ),
        .\Data_Out_int[26]_i_8 (\Data_Out_int[30]_i_15_n_0 ),
        .\Data_Out_int_reg[30] (\Data_Out_int[30]_i_3_n_0 ),
        .LRCLK_reg(ac_lrclk),
        .L__972_carry_i_10(L__972_carry_i_19_n_0),
        .L__972_carry_i_19(\Data_Out_int[18]_i_4_n_0 ),
        .L_carry__2(\lab4_ip_v1_0_S00_AXI_inst/dp_inst/L ),
        .O(U0_n_21),
        .S(\Data_Out_int[30]_i_12_n_0 ),
        .ac_dac_sdata(ac_dac_sdata),
        .ac_mclk(ac_mclk),
        .axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_wready_reg(s00_axi_wready),
        .btn(btn),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .scl(scl),
        .sda(sda),
        .\slv_reg2_reg[15] (U0_n_22),
        .\slv_reg2_reg[15]_0 (U0_n_23),
        .\slv_reg2_reg[15]_1 (U0_n_24),
        .\slv_reg2_reg[15]_2 (U0_n_25),
        .\slv_reg2_reg[15]_3 (U0_n_26),
        .\slv_reg2_reg[15]_4 (U0_n_27),
        .\slv_reg2_reg[15]_5 (U0_n_28),
        .\slv_reg2_reg[15]_6 (U0_n_29),
        .\slv_reg2_reg[15]_7 (U0_n_30),
        .\slv_reg2_reg[15]_8 (U0_n_31),
        .\slv_reg2_reg[15]_9 (U0_n_32),
        .switch(switch));
endmodule

(* ORIG_REF_NAME = "Audio_Codec_Wrapper" *) 
module lab4_design_lab4_ip_0_6_Audio_Codec_Wrapper
   (ac_mclk,
    BCLK_int_reg,
    LRCLK_reg,
    sw,
    ac_dac_sdata,
    scl,
    sda,
    s00_axi_aresetn,
    s00_axi_aclk,
    rst,
    CO,
    O,
    \Data_Out_int_reg[22] ,
    \Data_Out_int_reg[26] ,
    \Data_Out_int_reg[30] );
  output ac_mclk;
  output BCLK_int_reg;
  output LRCLK_reg;
  output sw;
  output ac_dac_sdata;
  inout scl;
  inout sda;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input rst;
  input [0:0]CO;
  input [2:0]O;
  input [3:0]\Data_Out_int_reg[22] ;
  input [3:0]\Data_Out_int_reg[26] ;
  input [3:0]\Data_Out_int_reg[30] ;

  wire BCLK_int_reg;
  wire [0:0]CO;
  wire [3:0]\Data_Out_int_reg[22] ;
  wire [3:0]\Data_Out_int_reg[26] ;
  wire [3:0]\Data_Out_int_reg[30] ;
  wire LRCLK_reg;
  wire [2:0]O;
  wire ac_dac_sdata;
  wire [2:0]ac_lrclk_count__0;
  wire ac_lrclk_sig_prev_reg_n_0;
  wire ac_mclk;
  wire audio_inout_n_2;
  wire audio_inout_n_3;
  wire audio_inout_n_4;
  wire audio_inout_n_5;
  wire audio_inout_n_6;
  wire clk_50;
  wire rst;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire scl;
  wire sda;
  wire sw;

  FDRE \ac_lrclk_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(audio_inout_n_6),
        .Q(ac_lrclk_count__0[0]),
        .R(1'b0));
  FDRE \ac_lrclk_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(audio_inout_n_5),
        .Q(ac_lrclk_count__0[1]),
        .R(1'b0));
  FDRE \ac_lrclk_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(audio_inout_n_4),
        .Q(ac_lrclk_count__0[2]),
        .R(1'b0));
  FDRE ac_lrclk_sig_prev_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(audio_inout_n_2),
        .Q(ac_lrclk_sig_prev_reg_n_0),
        .R(1'b0));
  lab4_design_lab4_ip_0_6_i2s_ctl audio_inout
       (.BCLK_int_reg_0(BCLK_int_reg),
        .CO(CO),
        .\Data_Out_int_reg[22]_0 (\Data_Out_int_reg[22] ),
        .\Data_Out_int_reg[26]_0 (\Data_Out_int_reg[26] ),
        .\Data_Out_int_reg[30]_0 (\Data_Out_int_reg[30] ),
        .LRCLK_reg_0(LRCLK_reg),
        .O(O),
        .ac_dac_sdata(ac_dac_sdata),
        .ac_lrclk_count__0(ac_lrclk_count__0),
        .\ac_lrclk_count_reg[2] (ac_lrclk_sig_prev_reg_n_0),
        .ready_sig_reg(audio_inout_n_3),
        .rst(rst),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(audio_inout_n_2),
        .s00_axi_aresetn_1(audio_inout_n_4),
        .s00_axi_aresetn_2(audio_inout_n_5),
        .s00_axi_aresetn_3(audio_inout_n_6),
        .sw(sw));
  lab4_design_lab4_ip_0_6_audio_clk_wiz audiocodec_master_clock
       (.clk_in1(s00_axi_aclk),
        .clk_out1(ac_mclk),
        .clk_out2(clk_50),
        .resetn(s00_axi_aresetn));
  lab4_design_lab4_ip_0_6_audio_init initialize_audio
       (.CLK(clk_50),
        .rst(rst),
        .s00_axi_aresetn(s00_axi_aresetn),
        .scl(scl),
        .sda(sda));
  FDRE ready_sig_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(audio_inout_n_3),
        .Q(sw),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TWICtl" *) 
module lab4_design_lab4_ip_0_6_TWICtl
   (D,
    E,
    DONE_O_reg_0,
    \state_reg[2] ,
    scl,
    sda,
    CLK,
    stb,
    s00_axi_aresetn,
    Q,
    \state_reg[0] ,
    \state_reg[2]_0 ,
    \state_reg[0]_0 ,
    initEn_reg,
    \state_reg[1] ,
    \state_reg[1]_0 ,
    \state_reg[1]_1 ,
    msg,
    initEn);
  output [3:0]D;
  output [0:0]E;
  output [0:0]DONE_O_reg_0;
  output \state_reg[2] ;
  inout scl;
  inout sda;
  input CLK;
  input stb;
  input s00_axi_aresetn;
  input [7:0]Q;
  input [3:0]\state_reg[0] ;
  input \state_reg[2]_0 ;
  input \state_reg[0]_0 ;
  input initEn_reg;
  input \state_reg[1] ;
  input \state_reg[1]_0 ;
  input \state_reg[1]_1 ;
  input msg;
  input initEn;

  wire CLK;
  wire [3:0]D;
  wire DONE_O_i_1_n_0;
  wire DONE_O_i_2_n_0;
  wire DONE_O_i_3_n_0;
  wire DONE_O_i_4_n_0;
  wire DONE_O_i_5_n_0;
  wire [0:0]DONE_O_reg_0;
  wire [0:0]E;
  wire ERR_O_i_1_n_0;
  wire ERR_O_i_2_n_0;
  wire \FSM_gray_state[0]_i_1_n_0 ;
  wire \FSM_gray_state[0]_i_2_n_0 ;
  wire \FSM_gray_state[1]_i_1_n_0 ;
  wire \FSM_gray_state[1]_i_2_n_0 ;
  wire \FSM_gray_state[1]_i_3_n_0 ;
  wire \FSM_gray_state[1]_i_4_n_0 ;
  wire \FSM_gray_state[2]_i_1_n_0 ;
  wire \FSM_gray_state[2]_i_2_n_0 ;
  wire \FSM_gray_state[3]_i_10_n_0 ;
  wire \FSM_gray_state[3]_i_11_n_0 ;
  wire \FSM_gray_state[3]_i_1_n_0 ;
  wire \FSM_gray_state[3]_i_2_n_0 ;
  wire \FSM_gray_state[3]_i_3_n_0 ;
  wire \FSM_gray_state[3]_i_4_n_0 ;
  wire \FSM_gray_state[3]_i_5_n_0 ;
  wire \FSM_gray_state[3]_i_6_n_0 ;
  wire \FSM_gray_state[3]_i_7_n_0 ;
  wire \FSM_gray_state[3]_i_8_n_0 ;
  wire \FSM_gray_state[3]_i_9_n_0 ;
  wire [7:0]Q;
  wire addrNData;
  wire addrNData_i_1_n_0;
  wire [2:0]bitCount;
  wire \bitCount[0]_i_1_n_0 ;
  wire \bitCount[1]_i_1_n_0 ;
  wire \bitCount[2]_i_1_n_0 ;
  wire [6:0]busFreeCnt0;
  wire busFreeCnt0_1;
  wire \busFreeCnt[1]_i_1_n_0 ;
  wire \busFreeCnt[6]_i_3_n_0 ;
  wire [6:0]busFreeCnt_reg;
  wire busState0;
  wire \busState[0]_i_1_n_0 ;
  wire \busState[1]_i_1_n_0 ;
  wire \busState_reg_n_0_[0] ;
  wire \busState_reg_n_0_[1] ;
  wire dScl;
  wire [7:1]dataByte;
  wire dataByte0;
  wire dataByte1;
  wire \dataByte[7]_i_1_n_0 ;
  wire \dataByte[7]_i_3_n_0 ;
  wire \dataByte[7]_i_5_n_0 ;
  wire \dataByte[7]_i_6_n_0 ;
  wire \dataByte[7]_i_7_n_0 ;
  wire \dataByte_reg_n_0_[0] ;
  wire ddSda;
  wire done;
  wire error;
  wire initEn;
  wire initEn_i_2_n_0;
  wire initEn_reg;
  wire int_Rst;
  wire int_Rst_i_1_n_0;
  wire msg;
  wire [0:0]p_0_in;
  wire [7:0]p_1_in_0;
  wire rScl;
  wire rScl_i_1_n_0;
  wire rScl_i_2_n_0;
  wire rSda;
  wire rSda_i_1_n_0;
  wire rSda_i_2_n_0;
  wire rSda_i_3_n_0;
  wire s00_axi_aresetn;
  wire scl;
  wire [6:0]sclCnt0;
  wire sclCnt0_0;
  wire \sclCnt[1]_i_1_n_0 ;
  wire \sclCnt[6]_i_2_n_0 ;
  wire \sclCnt[6]_i_4_n_0 ;
  wire [6:0]sclCnt_reg;
  wire scl_INST_0_i_1_n_0;
  wire sda;
  wire sda_INST_0_i_1_n_0;
  wire [3:0]state;
  wire [3:0]\state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[1] ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire \state_reg[2] ;
  wire \state_reg[2]_0 ;
  wire stb;
  wire subState;
  wire \subState[0]_i_1_n_0 ;
  wire \subState[1]_i_1_n_0 ;
  wire \subState[1]_i_2_n_0 ;
  wire \subState_reg_n_0_[0] ;
  wire \subState_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF000D)) 
    DONE_O_i_1
       (.I0(addrNData),
        .I1(p_0_in),
        .I2(\subState_reg_n_0_[1] ),
        .I3(DONE_O_i_2_n_0),
        .I4(DONE_O_i_3_n_0),
        .I5(DONE_O_i_4_n_0),
        .O(DONE_O_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    DONE_O_i_2
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\subState_reg_n_0_[0] ),
        .I5(\subState[1]_i_2_n_0 ),
        .O(DONE_O_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    DONE_O_i_3
       (.I0(\subState[1]_i_2_n_0 ),
        .I1(state[0]),
        .I2(bitCount[1]),
        .I3(bitCount[0]),
        .I4(bitCount[2]),
        .I5(DONE_O_i_5_n_0),
        .O(DONE_O_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    DONE_O_i_4
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\FSM_gray_state[3]_i_7_n_0 ),
        .O(DONE_O_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    DONE_O_i_5
       (.I0(state[2]),
        .I1(state[1]),
        .I2(\subState_reg_n_0_[1] ),
        .I3(\subState_reg_n_0_[0] ),
        .I4(state[3]),
        .O(DONE_O_i_5_n_0));
  FDRE DONE_O_reg
       (.C(CLK),
        .CE(1'b1),
        .D(DONE_O_i_1_n_0),
        .Q(done),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1111F00011110000)) 
    ERR_O_i_1
       (.I0(\subState_reg_n_0_[1] ),
        .I1(DONE_O_i_2_n_0),
        .I2(rSda),
        .I3(dScl),
        .I4(p_0_in),
        .I5(ERR_O_i_2_n_0),
        .O(ERR_O_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    ERR_O_i_2
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[0]),
        .O(ERR_O_i_2_n_0));
  FDRE ERR_O_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ERR_O_i_1_n_0),
        .Q(error),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFEAAFFFFFEEAF)) 
    \FSM_gray_state[0]_i_1 
       (.I0(\FSM_gray_state[0]_i_2_n_0 ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[3]),
        .I5(\FSM_gray_state[2]_i_2_n_0 ),
        .O(\FSM_gray_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100055555555)) 
    \FSM_gray_state[0]_i_2 
       (.I0(state[0]),
        .I1(int_Rst),
        .I2(stb),
        .I3(msg),
        .I4(state[2]),
        .I5(state[1]),
        .O(\FSM_gray_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFEAAAAAAFEFF)) 
    \FSM_gray_state[1]_i_1 
       (.I0(\FSM_gray_state[1]_i_2_n_0 ),
        .I1(\FSM_gray_state[1]_i_3_n_0 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\FSM_gray_state[1]_i_4_n_0 ),
        .I5(\FSM_gray_state[3]_i_7_n_0 ),
        .O(\FSM_gray_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \FSM_gray_state[1]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(\FSM_gray_state[3]_i_6_n_0 ),
        .O(\FSM_gray_state[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_gray_state[1]_i_3 
       (.I0(stb),
        .I1(int_Rst),
        .O(\FSM_gray_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_gray_state[1]_i_4 
       (.I0(state[0]),
        .I1(state[3]),
        .O(\FSM_gray_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000013300000D33C)) 
    \FSM_gray_state[2]_i_1 
       (.I0(\FSM_gray_state[2]_i_2_n_0 ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[3]),
        .I5(\FSM_gray_state[3]_i_7_n_0 ),
        .O(\FSM_gray_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h11001110)) 
    \FSM_gray_state[2]_i_2 
       (.I0(int_Rst),
        .I1(\dataByte_reg_n_0_[0] ),
        .I2(stb),
        .I3(addrNData),
        .I4(msg),
        .O(\FSM_gray_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \FSM_gray_state[3]_i_1 
       (.I0(\FSM_gray_state[3]_i_3_n_0 ),
        .I1(stb),
        .I2(\busState_reg_n_0_[1] ),
        .I3(\busState_reg_n_0_[0] ),
        .I4(\FSM_gray_state[3]_i_4_n_0 ),
        .I5(\FSM_gray_state[3]_i_5_n_0 ),
        .O(\FSM_gray_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \FSM_gray_state[3]_i_10 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\FSM_gray_state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF0000000001)) 
    \FSM_gray_state[3]_i_11 
       (.I0(bitCount[2]),
        .I1(bitCount[0]),
        .I2(bitCount[1]),
        .I3(state[1]),
        .I4(state[3]),
        .I5(state[0]),
        .O(\FSM_gray_state[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000304000400)) 
    \FSM_gray_state[3]_i_2 
       (.I0(\FSM_gray_state[3]_i_6_n_0 ),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[1]),
        .I4(\FSM_gray_state[3]_i_7_n_0 ),
        .I5(state[2]),
        .O(\FSM_gray_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \FSM_gray_state[3]_i_3 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(s00_axi_aresetn),
        .O(\FSM_gray_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h20020002)) 
    \FSM_gray_state[3]_i_4 
       (.I0(\FSM_gray_state[3]_i_7_n_0 ),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(\FSM_gray_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h20A0008000800080)) 
    \FSM_gray_state[3]_i_5 
       (.I0(\subState[1]_i_2_n_0 ),
        .I1(\subState_reg_n_0_[0] ),
        .I2(\subState_reg_n_0_[1] ),
        .I3(\FSM_gray_state[3]_i_8_n_0 ),
        .I4(\FSM_gray_state[3]_i_9_n_0 ),
        .I5(state[3]),
        .O(\FSM_gray_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    \FSM_gray_state[3]_i_6 
       (.I0(addrNData),
        .I1(stb),
        .I2(\dataByte_reg_n_0_[0] ),
        .I3(int_Rst),
        .O(\FSM_gray_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_gray_state[3]_i_7 
       (.I0(rSda),
        .I1(dScl),
        .I2(p_0_in),
        .O(\FSM_gray_state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000001555FFFF)) 
    \FSM_gray_state[3]_i_8 
       (.I0(state[2]),
        .I1(bitCount[2]),
        .I2(bitCount[1]),
        .I3(bitCount[0]),
        .I4(\FSM_gray_state[3]_i_10_n_0 ),
        .I5(\FSM_gray_state[3]_i_11_n_0 ),
        .O(\FSM_gray_state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_gray_state[3]_i_9 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(\FSM_gray_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "stwrite:0000,stread:0010,ststart:0101,stidle:0001,stmnackstart:0111,stmack:0110,stsack:0011,stmnackstop:0100,ststop:1111" *) 
  FDRE \FSM_gray_state_reg[0] 
       (.C(CLK),
        .CE(\FSM_gray_state[3]_i_1_n_0 ),
        .D(\FSM_gray_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stwrite:0000,stread:0010,ststart:0101,stidle:0001,stmnackstart:0111,stmack:0110,stsack:0011,stmnackstop:0100,ststop:1111" *) 
  FDRE \FSM_gray_state_reg[1] 
       (.C(CLK),
        .CE(\FSM_gray_state[3]_i_1_n_0 ),
        .D(\FSM_gray_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stwrite:0000,stread:0010,ststart:0101,stidle:0001,stmnackstart:0111,stmack:0110,stsack:0011,stmnackstop:0100,ststop:1111" *) 
  FDRE \FSM_gray_state_reg[2] 
       (.C(CLK),
        .CE(\FSM_gray_state[3]_i_1_n_0 ),
        .D(\FSM_gray_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stwrite:0000,stread:0010,ststart:0101,stidle:0001,stmnackstart:0111,stmack:0110,stsack:0011,stmnackstop:0100,ststop:1111" *) 
  FDRE \FSM_gray_state_reg[3] 
       (.C(CLK),
        .CE(\FSM_gray_state[3]_i_1_n_0 ),
        .D(\FSM_gray_state[3]_i_2_n_0 ),
        .Q(state[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0E)) 
    addrNData_i_1
       (.I0(addrNData),
        .I1(\dataByte[7]_i_5_n_0 ),
        .I2(\dataByte[7]_i_6_n_0 ),
        .O(addrNData_i_1_n_0));
  FDRE addrNData_reg
       (.C(CLK),
        .CE(1'b1),
        .D(addrNData_i_1_n_0),
        .Q(addrNData),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF6)) 
    \bitCount[0]_i_1 
       (.I0(bitCount[0]),
        .I1(dataByte0),
        .I2(dataByte1),
        .O(\bitCount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFA6)) 
    \bitCount[1]_i_1 
       (.I0(bitCount[1]),
        .I1(dataByte0),
        .I2(bitCount[0]),
        .I3(dataByte1),
        .O(\bitCount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFAAA6)) 
    \bitCount[2]_i_1 
       (.I0(bitCount[2]),
        .I1(dataByte0),
        .I2(bitCount[1]),
        .I3(bitCount[0]),
        .I4(dataByte1),
        .O(\bitCount[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAAAAAA)) 
    \bitCount[2]_i_2 
       (.I0(\dataByte[7]_i_6_n_0 ),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(\subState[1]_i_2_n_0 ),
        .O(dataByte1));
  FDRE #(
    .INIT(1'b1)) 
    \bitCount_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitCount[0]_i_1_n_0 ),
        .Q(bitCount[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bitCount_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitCount[1]_i_1_n_0 ),
        .Q(bitCount[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bitCount_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitCount[2]_i_1_n_0 ),
        .Q(bitCount[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \busFreeCnt[0]_i_1 
       (.I0(busFreeCnt_reg[0]),
        .O(busFreeCnt0[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \busFreeCnt[1]_i_1 
       (.I0(busFreeCnt_reg[1]),
        .I1(busFreeCnt_reg[0]),
        .O(\busFreeCnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \busFreeCnt[2]_i_1 
       (.I0(busFreeCnt_reg[2]),
        .I1(busFreeCnt_reg[0]),
        .I2(busFreeCnt_reg[1]),
        .O(busFreeCnt0[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \busFreeCnt[3]_i_1 
       (.I0(busFreeCnt_reg[3]),
        .I1(busFreeCnt_reg[2]),
        .I2(busFreeCnt_reg[1]),
        .I3(busFreeCnt_reg[0]),
        .O(busFreeCnt0[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \busFreeCnt[4]_i_1 
       (.I0(busFreeCnt_reg[4]),
        .I1(busFreeCnt_reg[3]),
        .I2(busFreeCnt_reg[0]),
        .I3(busFreeCnt_reg[1]),
        .I4(busFreeCnt_reg[2]),
        .O(busFreeCnt0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \busFreeCnt[5]_i_1 
       (.I0(busFreeCnt_reg[5]),
        .I1(busFreeCnt_reg[4]),
        .I2(busFreeCnt_reg[2]),
        .I3(busFreeCnt_reg[1]),
        .I4(busFreeCnt_reg[0]),
        .I5(busFreeCnt_reg[3]),
        .O(busFreeCnt0[5]));
  LUT3 #(
    .INIT(8'hBF)) 
    \busFreeCnt[6]_i_1 
       (.I0(int_Rst),
        .I1(p_0_in),
        .I2(dScl),
        .O(busFreeCnt0_1));
  LUT2 #(
    .INIT(4'h6)) 
    \busFreeCnt[6]_i_2 
       (.I0(busFreeCnt_reg[6]),
        .I1(\busFreeCnt[6]_i_3_n_0 ),
        .O(busFreeCnt0[6]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \busFreeCnt[6]_i_3 
       (.I0(busFreeCnt_reg[4]),
        .I1(busFreeCnt_reg[2]),
        .I2(busFreeCnt_reg[1]),
        .I3(busFreeCnt_reg[0]),
        .I4(busFreeCnt_reg[3]),
        .I5(busFreeCnt_reg[5]),
        .O(\busFreeCnt[6]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(busFreeCnt0[0]),
        .Q(busFreeCnt_reg[0]),
        .S(busFreeCnt0_1));
  FDRE #(
    .INIT(1'b0)) 
    \busFreeCnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\busFreeCnt[1]_i_1_n_0 ),
        .Q(busFreeCnt_reg[1]),
        .R(busFreeCnt0_1));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(busFreeCnt0[2]),
        .Q(busFreeCnt_reg[2]),
        .S(busFreeCnt0_1));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(busFreeCnt0[3]),
        .Q(busFreeCnt_reg[3]),
        .S(busFreeCnt0_1));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(busFreeCnt0[4]),
        .Q(busFreeCnt_reg[4]),
        .S(busFreeCnt0_1));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(busFreeCnt0[5]),
        .Q(busFreeCnt_reg[5]),
        .S(busFreeCnt0_1));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(busFreeCnt0[6]),
        .Q(busFreeCnt_reg[6]),
        .S(busFreeCnt0_1));
  LUT6 #(
    .INIT(64'h4555FFFF45550000)) 
    \busState[0]_i_1 
       (.I0(int_Rst),
        .I1(p_0_in),
        .I2(dScl),
        .I3(ddSda),
        .I4(busState0),
        .I5(\busState_reg_n_0_[0] ),
        .O(\busState[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \busState[1]_i_1 
       (.I0(p_0_in),
        .I1(dScl),
        .I2(ddSda),
        .I3(int_Rst),
        .I4(busState0),
        .I5(\busState_reg_n_0_[1] ),
        .O(\busState[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4444F444)) 
    \busState[1]_i_2 
       (.I0(busFreeCnt_reg[6]),
        .I1(\busFreeCnt[6]_i_3_n_0 ),
        .I2(ddSda),
        .I3(dScl),
        .I4(p_0_in),
        .I5(int_Rst),
        .O(busState0));
  FDRE #(
    .INIT(1'b0)) 
    \busState_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\busState[0]_i_1_n_0 ),
        .Q(\busState_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \busState_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\busState[1]_i_1_n_0 ),
        .Q(\busState_reg_n_0_[1] ),
        .R(1'b0));
  FDRE dScl_reg
       (.C(CLK),
        .CE(1'b1),
        .D(scl),
        .Q(dScl),
        .R(1'b0));
  FDRE dSda_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sda),
        .Q(p_0_in),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF404)) 
    \dataByte[0]_i_1 
       (.I0(\dataByte[7]_i_5_n_0 ),
        .I1(p_0_in),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(Q[0]),
        .O(p_1_in_0[0]));
  LUT4 #(
    .INIT(16'hFFCA)) 
    \dataByte[1]_i_1 
       (.I0(\dataByte_reg_n_0_[0] ),
        .I1(Q[1]),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(\dataByte[7]_i_5_n_0 ),
        .O(p_1_in_0[1]));
  LUT4 #(
    .INIT(16'hFFCA)) 
    \dataByte[2]_i_1 
       (.I0(dataByte[1]),
        .I1(Q[2]),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(\dataByte[7]_i_5_n_0 ),
        .O(p_1_in_0[2]));
  LUT4 #(
    .INIT(16'hF404)) 
    \dataByte[3]_i_1 
       (.I0(\dataByte[7]_i_5_n_0 ),
        .I1(dataByte[2]),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(Q[3]),
        .O(p_1_in_0[3]));
  LUT4 #(
    .INIT(16'hFFCA)) 
    \dataByte[4]_i_1 
       (.I0(dataByte[3]),
        .I1(Q[4]),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(\dataByte[7]_i_5_n_0 ),
        .O(p_1_in_0[4]));
  LUT4 #(
    .INIT(16'hFFCA)) 
    \dataByte[5]_i_1 
       (.I0(dataByte[4]),
        .I1(Q[5]),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(\dataByte[7]_i_5_n_0 ),
        .O(p_1_in_0[5]));
  LUT4 #(
    .INIT(16'hFFCA)) 
    \dataByte[6]_i_1 
       (.I0(dataByte[5]),
        .I1(Q[6]),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(\dataByte[7]_i_5_n_0 ),
        .O(p_1_in_0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFF28080000)) 
    \dataByte[7]_i_1 
       (.I0(\dataByte[7]_i_3_n_0 ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\subState_reg_n_0_[0] ),
        .I4(\subState[1]_i_2_n_0 ),
        .I5(dataByte0),
        .O(\dataByte[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF404)) 
    \dataByte[7]_i_2 
       (.I0(\dataByte[7]_i_5_n_0 ),
        .I1(dataByte[6]),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(Q[7]),
        .O(p_1_in_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dataByte[7]_i_3 
       (.I0(state[0]),
        .I1(state[3]),
        .O(\dataByte[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA000A80000000800)) 
    \dataByte[7]_i_4 
       (.I0(\subState[1]_i_2_n_0 ),
        .I1(\dataByte[7]_i_7_n_0 ),
        .I2(\subState_reg_n_0_[1] ),
        .I3(\subState_reg_n_0_[0] ),
        .I4(state[3]),
        .I5(ERR_O_i_2_n_0),
        .O(dataByte0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \dataByte[7]_i_5 
       (.I0(\subState[1]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[3]),
        .O(\dataByte[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \dataByte[7]_i_6 
       (.I0(\subState_reg_n_0_[1] ),
        .I1(\subState[1]_i_2_n_0 ),
        .I2(\subState_reg_n_0_[0] ),
        .I3(state[1]),
        .I4(state[2]),
        .I5(\dataByte[7]_i_3_n_0 ),
        .O(\dataByte[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dataByte[7]_i_7 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\dataByte[7]_i_7_n_0 ));
  FDRE \dataByte_reg[0] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in_0[0]),
        .Q(\dataByte_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dataByte_reg[1] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in_0[1]),
        .Q(dataByte[1]),
        .R(1'b0));
  FDRE \dataByte_reg[2] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in_0[2]),
        .Q(dataByte[2]),
        .R(1'b0));
  FDRE \dataByte_reg[3] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in_0[3]),
        .Q(dataByte[3]),
        .R(1'b0));
  FDRE \dataByte_reg[4] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in_0[4]),
        .Q(dataByte[4]),
        .R(1'b0));
  FDRE \dataByte_reg[5] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in_0[5]),
        .Q(dataByte[5]),
        .R(1'b0));
  FDRE \dataByte_reg[6] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in_0[6]),
        .Q(dataByte[6]),
        .R(1'b0));
  FDRE \dataByte_reg[7] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in_0[7]),
        .Q(dataByte[7]),
        .R(1'b0));
  FDRE ddSda_reg
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in),
        .Q(ddSda),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF8)) 
    \initA[6]_i_1 
       (.I0(D[3]),
        .I1(done),
        .I2(initEn_reg),
        .O(DONE_O_reg_0));
  LUT5 #(
    .INIT(32'h7F774044)) 
    initEn_i_1
       (.I0(\state_reg[0] [2]),
        .I1(s00_axi_aresetn),
        .I2(initEn_reg),
        .I3(initEn_i_2_n_0),
        .I4(initEn),
        .O(\state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    initEn_i_2
       (.I0(done),
        .I1(error),
        .I2(\state_reg[2]_0 ),
        .O(initEn_i_2_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBB3BB)) 
    int_Rst_i_1
       (.I0(int_Rst),
        .I1(s00_axi_aresetn),
        .I2(state[3]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(state[2]),
        .O(int_Rst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_Rst_reg
       (.C(CLK),
        .CE(1'b1),
        .D(int_Rst_i_1_n_0),
        .Q(int_Rst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFBFBFBF283C3C3C)) 
    rScl_i_1
       (.I0(state[3]),
        .I1(\subState_reg_n_0_[0] ),
        .I2(\subState_reg_n_0_[1] ),
        .I3(rScl_i_2_n_0),
        .I4(state[0]),
        .I5(rScl),
        .O(rScl_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h1)) 
    rScl_i_2
       (.I0(state[2]),
        .I1(state[1]),
        .O(rScl_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    rScl_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rScl_i_1_n_0),
        .Q(rScl),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hABEAFFFFABEA0000)) 
    rSda_i_1
       (.I0(rSda_i_2_n_0),
        .I1(state[3]),
        .I2(\subState_reg_n_0_[1] ),
        .I3(\subState_reg_n_0_[0] ),
        .I4(rSda_i_3_n_0),
        .I5(rSda),
        .O(rSda_i_1_n_0));
  LUT6 #(
    .INIT(64'h0405050504050504)) 
    rSda_i_2
       (.I0(\subState_reg_n_0_[1] ),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(dataByte[7]),
        .O(rSda_i_2_n_0));
  LUT6 #(
    .INIT(64'h0FFF222F0FFF000D)) 
    rSda_i_3
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\subState_reg_n_0_[0] ),
        .I3(\subState_reg_n_0_[1] ),
        .I4(state[3]),
        .I5(state[2]),
        .O(rSda_i_3_n_0));
  FDRE #(
    .INIT(1'b1)) 
    rSda_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rSda_i_1_n_0),
        .Q(rSda),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \sclCnt[0]_i_1 
       (.I0(sclCnt_reg[0]),
        .O(sclCnt0[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \sclCnt[1]_i_1 
       (.I0(sclCnt_reg[1]),
        .I1(sclCnt_reg[0]),
        .O(\sclCnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \sclCnt[2]_i_1 
       (.I0(sclCnt_reg[1]),
        .I1(sclCnt_reg[0]),
        .I2(sclCnt_reg[2]),
        .O(sclCnt0[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \sclCnt[3]_i_1 
       (.I0(sclCnt_reg[2]),
        .I1(sclCnt_reg[0]),
        .I2(sclCnt_reg[1]),
        .I3(sclCnt_reg[3]),
        .O(sclCnt0[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \sclCnt[4]_i_1 
       (.I0(sclCnt_reg[3]),
        .I1(sclCnt_reg[1]),
        .I2(sclCnt_reg[0]),
        .I3(sclCnt_reg[2]),
        .I4(sclCnt_reg[4]),
        .O(sclCnt0[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \sclCnt[5]_i_1 
       (.I0(sclCnt_reg[4]),
        .I1(sclCnt_reg[2]),
        .I2(sclCnt_reg[0]),
        .I3(sclCnt_reg[1]),
        .I4(sclCnt_reg[3]),
        .I5(sclCnt_reg[5]),
        .O(sclCnt0[5]));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \sclCnt[6]_i_1 
       (.I0(\subState[1]_i_2_n_0 ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[3]),
        .O(sclCnt0_0));
  LUT2 #(
    .INIT(4'hB)) 
    \sclCnt[6]_i_2 
       (.I0(dScl),
        .I1(rScl),
        .O(\sclCnt[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \sclCnt[6]_i_3 
       (.I0(\sclCnt[6]_i_4_n_0 ),
        .I1(sclCnt_reg[6]),
        .O(sclCnt0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sclCnt[6]_i_4 
       (.I0(sclCnt_reg[5]),
        .I1(sclCnt_reg[3]),
        .I2(sclCnt_reg[1]),
        .I3(sclCnt_reg[0]),
        .I4(sclCnt_reg[2]),
        .I5(sclCnt_reg[4]),
        .O(\sclCnt[6]_i_4_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \sclCnt_reg[0] 
       (.C(CLK),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[0]),
        .Q(sclCnt_reg[0]),
        .S(sclCnt0_0));
  FDSE #(
    .INIT(1'b0)) 
    \sclCnt_reg[1] 
       (.C(CLK),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(\sclCnt[1]_i_1_n_0 ),
        .Q(sclCnt_reg[1]),
        .S(sclCnt0_0));
  FDSE #(
    .INIT(1'b1)) 
    \sclCnt_reg[2] 
       (.C(CLK),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[2]),
        .Q(sclCnt_reg[2]),
        .S(sclCnt0_0));
  FDSE #(
    .INIT(1'b1)) 
    \sclCnt_reg[3] 
       (.C(CLK),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[3]),
        .Q(sclCnt_reg[3]),
        .S(sclCnt0_0));
  FDSE #(
    .INIT(1'b1)) 
    \sclCnt_reg[4] 
       (.C(CLK),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[4]),
        .Q(sclCnt_reg[4]),
        .S(sclCnt0_0));
  FDRE #(
    .INIT(1'b1)) 
    \sclCnt_reg[5] 
       (.C(CLK),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[5]),
        .Q(sclCnt_reg[5]),
        .R(sclCnt0_0));
  FDRE #(
    .INIT(1'b1)) 
    \sclCnt_reg[6] 
       (.C(CLK),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[6]),
        .Q(sclCnt_reg[6]),
        .R(sclCnt0_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    scl_INST_0
       (.I0(1'b0),
        .I1(scl_INST_0_i_1_n_0),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(scl));
  LUT1 #(
    .INIT(2'h1)) 
    scl_INST_0_i_1
       (.I0(rScl),
        .O(scl_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sda_INST_0
       (.I0(1'b0),
        .I1(sda_INST_0_i_1_n_0),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(sda));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT1 #(
    .INIT(2'h1)) 
    sda_INST_0_i_1
       (.I0(rSda),
        .O(sda_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h0000FF0B)) 
    \state[0]_i_1 
       (.I0(\state_reg[0] [1]),
        .I1(\state_reg[0] [0]),
        .I2(\state_reg[0] [2]),
        .I3(\state_reg[0] [3]),
        .I4(error),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h4040444044444440)) 
    \state[1]_i_1 
       (.I0(error),
        .I1(\state_reg[1] ),
        .I2(\state_reg[1]_0 ),
        .I3(\state_reg[0] [0]),
        .I4(\state_reg[0] [1]),
        .I5(\state_reg[1]_1 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFD0)) 
    \state[2]_i_1 
       (.I0(\state_reg[0] [2]),
        .I1(\state_reg[0] [3]),
        .I2(error),
        .I3(\state_reg[2]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hB232023282320232)) 
    \state[3]_i_1 
       (.I0(done),
        .I1(\state_reg[0] [3]),
        .I2(\state_reg[0] [2]),
        .I3(\state_reg[0] [0]),
        .I4(\state_reg[0] [1]),
        .I5(\state_reg[0]_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'h00020000)) 
    \state[3]_i_2 
       (.I0(\state_reg[1]_0 ),
        .I1(\state_reg[0] [3]),
        .I2(\state_reg[0] [2]),
        .I3(error),
        .I4(\state_reg[0] [1]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h6666666666606666)) 
    \subState[0]_i_1 
       (.I0(\subState_reg_n_0_[0] ),
        .I1(\subState[1]_i_2_n_0 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(state[3]),
        .O(\subState[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h006A)) 
    \subState[1]_i_1 
       (.I0(\subState_reg_n_0_[1] ),
        .I1(\subState[1]_i_2_n_0 ),
        .I2(\subState_reg_n_0_[0] ),
        .I3(subState),
        .O(\subState[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \subState[1]_i_2 
       (.I0(sclCnt_reg[6]),
        .I1(\sclCnt[6]_i_4_n_0 ),
        .O(\subState[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \subState[1]_i_3 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .O(subState));
  FDRE #(
    .INIT(1'b0)) 
    \subState_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\subState[0]_i_1_n_0 ),
        .Q(\subState_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \subState_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\subState[1]_i_1_n_0 ),
        .Q(\subState_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "addr_counter" *) 
module lab4_design_lab4_ip_0_6_addr_counter
   (Q,
    p_0_in,
    S,
    \processCount_reg[7]_0 ,
    \processCount_reg[11]_0 ,
    \processCount_reg[15]_0 ,
    SR,
    E,
    s00_axi_aclk);
  output [15:0]Q;
  input [14:0]p_0_in;
  input [3:0]S;
  input [3:0]\processCount_reg[7]_0 ;
  input [3:0]\processCount_reg[11]_0 ;
  input [3:0]\processCount_reg[15]_0 ;
  input [0:0]SR;
  input [0:0]E;
  input s00_axi_aclk;

  wire [0:0]E;
  wire [15:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [14:0]p_0_in;
  wire \processCount0_inferred__0/i__carry__0_n_0 ;
  wire \processCount0_inferred__0/i__carry__0_n_1 ;
  wire \processCount0_inferred__0/i__carry__0_n_2 ;
  wire \processCount0_inferred__0/i__carry__0_n_3 ;
  wire \processCount0_inferred__0/i__carry__1_n_0 ;
  wire \processCount0_inferred__0/i__carry__1_n_1 ;
  wire \processCount0_inferred__0/i__carry__1_n_2 ;
  wire \processCount0_inferred__0/i__carry__1_n_3 ;
  wire \processCount0_inferred__0/i__carry__2_n_1 ;
  wire \processCount0_inferred__0/i__carry__2_n_2 ;
  wire \processCount0_inferred__0/i__carry__2_n_3 ;
  wire \processCount0_inferred__0/i__carry_n_0 ;
  wire \processCount0_inferred__0/i__carry_n_1 ;
  wire \processCount0_inferred__0/i__carry_n_2 ;
  wire \processCount0_inferred__0/i__carry_n_3 ;
  wire [15:0]processCount1_in;
  wire [3:0]\processCount_reg[11]_0 ;
  wire [3:0]\processCount_reg[15]_0 ;
  wire [3:0]\processCount_reg[7]_0 ;
  wire s00_axi_aclk;
  wire [3:3]\NLW_processCount0_inferred__0/i__carry__2_CO_UNCONNECTED ;

  CARRY4 \processCount0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\processCount0_inferred__0/i__carry_n_0 ,\processCount0_inferred__0/i__carry_n_1 ,\processCount0_inferred__0/i__carry_n_2 ,\processCount0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(p_0_in[3:0]),
        .O(processCount1_in[3:0]),
        .S(S));
  CARRY4 \processCount0_inferred__0/i__carry__0 
       (.CI(\processCount0_inferred__0/i__carry_n_0 ),
        .CO({\processCount0_inferred__0/i__carry__0_n_0 ,\processCount0_inferred__0/i__carry__0_n_1 ,\processCount0_inferred__0/i__carry__0_n_2 ,\processCount0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(p_0_in[7:4]),
        .O(processCount1_in[7:4]),
        .S(\processCount_reg[7]_0 ));
  CARRY4 \processCount0_inferred__0/i__carry__1 
       (.CI(\processCount0_inferred__0/i__carry__0_n_0 ),
        .CO({\processCount0_inferred__0/i__carry__1_n_0 ,\processCount0_inferred__0/i__carry__1_n_1 ,\processCount0_inferred__0/i__carry__1_n_2 ,\processCount0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(p_0_in[11:8]),
        .O(processCount1_in[11:8]),
        .S(\processCount_reg[11]_0 ));
  CARRY4 \processCount0_inferred__0/i__carry__2 
       (.CI(\processCount0_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_processCount0_inferred__0/i__carry__2_CO_UNCONNECTED [3],\processCount0_inferred__0/i__carry__2_n_1 ,\processCount0_inferred__0/i__carry__2_n_2 ,\processCount0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_0_in[14:12]}),
        .O(processCount1_in[15:12]),
        .S(\processCount_reg[15]_0 ));
  FDRE \processCount_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processCount1_in[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \processCount_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processCount1_in[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \processCount_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processCount1_in[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \processCount_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processCount1_in[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \processCount_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processCount1_in[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \processCount_reg[14] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processCount1_in[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \processCount_reg[15] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processCount1_in[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \processCount_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processCount1_in[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \processCount_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processCount1_in[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \processCount_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processCount1_in[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \processCount_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processCount1_in[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \processCount_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processCount1_in[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \processCount_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processCount1_in[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \processCount_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processCount1_in[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \processCount_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processCount1_in[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \processCount_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processCount1_in[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "audio_clk_wiz" *) 
module lab4_design_lab4_ip_0_6_audio_clk_wiz
   (clk_out1,
    clk_out2,
    resetn,
    clk_in1);
  output clk_out1;
  output clk_out2;
  input resetn;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire clk_out2;
  wire resetn;

  lab4_design_lab4_ip_0_6_audio_clk_wiz_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .clk_out2(clk_out2),
        .resetn(resetn));
endmodule

(* ORIG_REF_NAME = "audio_clk_wiz_clk_wiz" *) 
module lab4_design_lab4_ip_0_6_audio_clk_wiz_clk_wiz
   (clk_out1,
    clk_out2,
    resetn,
    clk_in1);
  output clk_out1;
  output clk_out2;
  input resetn;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_audio_clk_wiz;
  wire clk_out1;
  wire clk_out1_audio_clk_wiz;
  wire clk_out2;
  wire clk_out2_audio_clk_wiz;
  wire clkfbout_audio_clk_wiz;
  wire clkfbout_buf_audio_clk_wiz;
  wire reset_high;
  wire resetn;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_audio_clk_wiz),
        .O(clkfbout_buf_audio_clk_wiz));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_audio_clk_wiz));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_audio_clk_wiz),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout2_buf
       (.I(clk_out2_audio_clk_wiz),
        .O(clk_out2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(10.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(81.375000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(20),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_audio_clk_wiz),
        .CLKFBOUT(clkfbout_audio_clk_wiz),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_audio_clk_wiz),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_audio_clk_wiz),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clk_out2_audio_clk_wiz),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset_high));
  LUT1 #(
    .INIT(2'h1)) 
    mmcm_adv_inst_i_1
       (.I0(resetn),
        .O(reset_high));
endmodule

(* ORIG_REF_NAME = "audio_init" *) 
module lab4_design_lab4_ip_0_6_audio_init
   (scl,
    sda,
    CLK,
    s00_axi_aresetn,
    rst);
  inout scl;
  inout sda;
  input CLK;
  input s00_axi_aresetn;
  input rst;

  wire CLK;
  wire [6:6]data0;
  wire [7:0]data1;
  wire [7:0]data2;
  wire [7:0]data_i;
  wire \data_i[0]_i_1_n_0 ;
  wire \data_i[0]_i_2_n_0 ;
  wire \data_i[1]_i_1_n_0 ;
  wire \data_i[2]_i_1_n_0 ;
  wire \data_i[3]_i_1_n_0 ;
  wire \data_i[4]_i_1_n_0 ;
  wire \data_i[5]_i_1_n_0 ;
  wire \data_i[5]_i_2_n_0 ;
  wire \data_i[6]_i_1_n_0 ;
  wire \data_i[6]_i_2_n_0 ;
  wire \data_i[7]_i_1_n_0 ;
  wire delayEn;
  wire delayEn_i_1_n_0;
  wire delayEn_i_2_n_0;
  wire [31:0]delaycnt;
  wire delaycnt0;
  wire delaycnt0_carry__0_i_1_n_0;
  wire delaycnt0_carry__0_i_2_n_0;
  wire delaycnt0_carry__0_i_3_n_0;
  wire delaycnt0_carry__0_i_4_n_0;
  wire delaycnt0_carry__0_n_0;
  wire delaycnt0_carry__0_n_1;
  wire delaycnt0_carry__0_n_2;
  wire delaycnt0_carry__0_n_3;
  wire delaycnt0_carry__0_n_4;
  wire delaycnt0_carry__0_n_5;
  wire delaycnt0_carry__0_n_6;
  wire delaycnt0_carry__0_n_7;
  wire delaycnt0_carry__1_i_1_n_0;
  wire delaycnt0_carry__1_i_2_n_0;
  wire delaycnt0_carry__1_i_3_n_0;
  wire delaycnt0_carry__1_i_4_n_0;
  wire delaycnt0_carry__1_n_0;
  wire delaycnt0_carry__1_n_1;
  wire delaycnt0_carry__1_n_2;
  wire delaycnt0_carry__1_n_3;
  wire delaycnt0_carry__1_n_4;
  wire delaycnt0_carry__1_n_5;
  wire delaycnt0_carry__1_n_6;
  wire delaycnt0_carry__1_n_7;
  wire delaycnt0_carry__2_i_1_n_0;
  wire delaycnt0_carry__2_i_2_n_0;
  wire delaycnt0_carry__2_i_3_n_0;
  wire delaycnt0_carry__2_i_4_n_0;
  wire delaycnt0_carry__2_n_0;
  wire delaycnt0_carry__2_n_1;
  wire delaycnt0_carry__2_n_2;
  wire delaycnt0_carry__2_n_3;
  wire delaycnt0_carry__2_n_4;
  wire delaycnt0_carry__2_n_5;
  wire delaycnt0_carry__2_n_6;
  wire delaycnt0_carry__2_n_7;
  wire delaycnt0_carry__3_i_1_n_0;
  wire delaycnt0_carry__3_i_2_n_0;
  wire delaycnt0_carry__3_i_3_n_0;
  wire delaycnt0_carry__3_i_4_n_0;
  wire delaycnt0_carry__3_n_0;
  wire delaycnt0_carry__3_n_1;
  wire delaycnt0_carry__3_n_2;
  wire delaycnt0_carry__3_n_3;
  wire delaycnt0_carry__3_n_4;
  wire delaycnt0_carry__3_n_5;
  wire delaycnt0_carry__3_n_6;
  wire delaycnt0_carry__3_n_7;
  wire delaycnt0_carry__4_i_1_n_0;
  wire delaycnt0_carry__4_i_2_n_0;
  wire delaycnt0_carry__4_i_3_n_0;
  wire delaycnt0_carry__4_i_4_n_0;
  wire delaycnt0_carry__4_n_0;
  wire delaycnt0_carry__4_n_1;
  wire delaycnt0_carry__4_n_2;
  wire delaycnt0_carry__4_n_3;
  wire delaycnt0_carry__4_n_4;
  wire delaycnt0_carry__4_n_5;
  wire delaycnt0_carry__4_n_6;
  wire delaycnt0_carry__4_n_7;
  wire delaycnt0_carry__5_i_1_n_0;
  wire delaycnt0_carry__5_i_2_n_0;
  wire delaycnt0_carry__5_i_3_n_0;
  wire delaycnt0_carry__5_i_4_n_0;
  wire delaycnt0_carry__5_n_0;
  wire delaycnt0_carry__5_n_1;
  wire delaycnt0_carry__5_n_2;
  wire delaycnt0_carry__5_n_3;
  wire delaycnt0_carry__5_n_4;
  wire delaycnt0_carry__5_n_5;
  wire delaycnt0_carry__5_n_6;
  wire delaycnt0_carry__5_n_7;
  wire delaycnt0_carry__6_i_1_n_0;
  wire delaycnt0_carry__6_i_2_n_0;
  wire delaycnt0_carry__6_i_3_n_0;
  wire delaycnt0_carry__6_n_2;
  wire delaycnt0_carry__6_n_3;
  wire delaycnt0_carry__6_n_5;
  wire delaycnt0_carry__6_n_6;
  wire delaycnt0_carry__6_n_7;
  wire delaycnt0_carry_i_1_n_0;
  wire delaycnt0_carry_i_2_n_0;
  wire delaycnt0_carry_i_3_n_0;
  wire delaycnt0_carry_i_4_n_0;
  wire delaycnt0_carry_n_0;
  wire delaycnt0_carry_n_1;
  wire delaycnt0_carry_n_2;
  wire delaycnt0_carry_n_3;
  wire delaycnt0_carry_n_4;
  wire delaycnt0_carry_n_5;
  wire delaycnt0_carry_n_6;
  wire delaycnt0_carry_n_7;
  wire \delaycnt[0]_i_1_n_0 ;
  wire \initA[0]_i_1_n_0 ;
  wire \initA[6]_i_3_n_0 ;
  wire [6:0]initA_reg;
  wire initEn;
  wire \initWord[0]_i_1_n_0 ;
  wire \initWord[10]_i_1_n_0 ;
  wire \initWord[11]_i_1_n_0 ;
  wire \initWord[12]_i_1_n_0 ;
  wire \initWord[13]_i_1_n_0 ;
  wire \initWord[14]_i_1_n_0 ;
  wire \initWord[15]_i_1_n_0 ;
  wire \initWord[16]_i_1_n_0 ;
  wire \initWord[17]_i_1_n_0 ;
  wire \initWord[18]_i_1_n_0 ;
  wire \initWord[19]_i_1_n_0 ;
  wire \initWord[20]_i_1_n_0 ;
  wire \initWord[21]_i_1_n_0 ;
  wire \initWord[23]_i_1_n_0 ;
  wire \initWord[30]_i_1_n_0 ;
  wire \initWord[30]_i_2_n_0 ;
  wire \initWord[30]_i_3_n_0 ;
  wire \initWord[5]_i_1_n_0 ;
  wire \initWord[8]_i_1_n_0 ;
  wire \initWord[9]_i_1_n_0 ;
  wire \initWord_reg_n_0_[0] ;
  wire \initWord_reg_n_0_[5] ;
  wire msg;
  wire msg0;
  wire [6:1]p_1_in;
  wire rst;
  wire s00_axi_aresetn;
  wire scl;
  wire sda;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[1]_i_5_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[3]_i_10_n_0 ;
  wire \state[3]_i_11_n_0 ;
  wire \state[3]_i_12_n_0 ;
  wire \state[3]_i_13_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state[3]_i_4_n_0 ;
  wire \state[3]_i_5_n_0 ;
  wire \state[3]_i_6_n_0 ;
  wire \state[3]_i_7_n_0 ;
  wire \state[3]_i_8_n_0 ;
  wire \state[3]_i_9_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire stb;
  wire stb_i_1_n_0;
  wire twi_controller_n_0;
  wire twi_controller_n_1;
  wire twi_controller_n_2;
  wire twi_controller_n_3;
  wire twi_controller_n_4;
  wire twi_controller_n_5;
  wire twi_controller_n_6;
  wire [3:2]NLW_delaycnt0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_delaycnt0_carry__6_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hFFFF7FF0)) 
    \data_i[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\data_i[0]_i_2_n_0 ),
        .O(\data_i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44FFF0004400F000)) 
    \data_i[0]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\initWord_reg_n_0_[0] ),
        .I2(data2[0]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(data1[0]),
        .O(\data_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002C00000020)) 
    \data_i[1]_i_1 
       (.I0(data1[1]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(data2[1]),
        .O(\data_i[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFEAAAEA)) 
    \data_i[2]_i_1 
       (.I0(\data_i[5]_i_2_n_0 ),
        .I1(data2[2]),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data1[2]),
        .O(\data_i[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFEAAAEA)) 
    \data_i[3]_i_1 
       (.I0(\data_i[5]_i_2_n_0 ),
        .I1(data2[3]),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data1[3]),
        .O(\data_i[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0C0A00000C0A000)) 
    \data_i[4]_i_1 
       (.I0(data2[4]),
        .I1(data1[4]),
        .I2(\state[1]_i_2_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\initWord_reg_n_0_[5] ),
        .O(\data_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFEAAAEA)) 
    \data_i[5]_i_1 
       (.I0(\data_i[5]_i_2_n_0 ),
        .I1(data2[5]),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data1[5]),
        .O(\data_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h3EFCFCFC)) 
    \data_i[5]_i_2 
       (.I0(\initWord_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\data_i[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80010000)) 
    \data_i[6]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(data0),
        .I5(\data_i[6]_i_2_n_0 ),
        .O(\data_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8380000C8080000)) 
    \data_i[6]_i_2 
       (.I0(data2[6]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\initWord_reg_n_0_[5] ),
        .I4(\state[1]_i_2_n_0 ),
        .I5(data1[7]),
        .O(\data_i[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002C00000020)) 
    \data_i[7]_i_1 
       (.I0(data1[7]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(data2[7]),
        .O(\data_i[7]_i_1_n_0 ));
  FDRE \data_i_reg[0] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[0]_i_1_n_0 ),
        .Q(data_i[0]),
        .R(1'b0));
  FDRE \data_i_reg[1] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[1]_i_1_n_0 ),
        .Q(data_i[1]),
        .R(1'b0));
  FDRE \data_i_reg[2] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[2]_i_1_n_0 ),
        .Q(data_i[2]),
        .R(1'b0));
  FDRE \data_i_reg[3] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[3]_i_1_n_0 ),
        .Q(data_i[3]),
        .R(1'b0));
  FDRE \data_i_reg[4] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[4]_i_1_n_0 ),
        .Q(data_i[4]),
        .R(1'b0));
  FDRE \data_i_reg[5] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[5]_i_1_n_0 ),
        .Q(data_i[5]),
        .R(1'b0));
  FDRE \data_i_reg[6] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[6]_i_1_n_0 ),
        .Q(data_i[6]),
        .R(1'b0));
  FDRE \data_i_reg[7] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[7]_i_1_n_0 ),
        .Q(data_i[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2AAAEAAA00000000)) 
    delayEn_i_1
       (.I0(delayEn),
        .I1(delayEn_i_2_n_0),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state[3]_i_3_n_0 ),
        .I5(s00_axi_aresetn),
        .O(delayEn_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    delayEn_i_2
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .O(delayEn_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    delayEn_reg
       (.C(CLK),
        .CE(1'b1),
        .D(delayEn_i_1_n_0),
        .Q(delayEn),
        .R(1'b0));
  CARRY4 delaycnt0_carry
       (.CI(1'b0),
        .CO({delaycnt0_carry_n_0,delaycnt0_carry_n_1,delaycnt0_carry_n_2,delaycnt0_carry_n_3}),
        .CYINIT(delaycnt[0]),
        .DI(delaycnt[4:1]),
        .O({delaycnt0_carry_n_4,delaycnt0_carry_n_5,delaycnt0_carry_n_6,delaycnt0_carry_n_7}),
        .S({delaycnt0_carry_i_1_n_0,delaycnt0_carry_i_2_n_0,delaycnt0_carry_i_3_n_0,delaycnt0_carry_i_4_n_0}));
  CARRY4 delaycnt0_carry__0
       (.CI(delaycnt0_carry_n_0),
        .CO({delaycnt0_carry__0_n_0,delaycnt0_carry__0_n_1,delaycnt0_carry__0_n_2,delaycnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delaycnt[8:5]),
        .O({delaycnt0_carry__0_n_4,delaycnt0_carry__0_n_5,delaycnt0_carry__0_n_6,delaycnt0_carry__0_n_7}),
        .S({delaycnt0_carry__0_i_1_n_0,delaycnt0_carry__0_i_2_n_0,delaycnt0_carry__0_i_3_n_0,delaycnt0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__0_i_1
       (.I0(delaycnt[8]),
        .O(delaycnt0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__0_i_2
       (.I0(delaycnt[7]),
        .O(delaycnt0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__0_i_3
       (.I0(delaycnt[6]),
        .O(delaycnt0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__0_i_4
       (.I0(delaycnt[5]),
        .O(delaycnt0_carry__0_i_4_n_0));
  CARRY4 delaycnt0_carry__1
       (.CI(delaycnt0_carry__0_n_0),
        .CO({delaycnt0_carry__1_n_0,delaycnt0_carry__1_n_1,delaycnt0_carry__1_n_2,delaycnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delaycnt[12:9]),
        .O({delaycnt0_carry__1_n_4,delaycnt0_carry__1_n_5,delaycnt0_carry__1_n_6,delaycnt0_carry__1_n_7}),
        .S({delaycnt0_carry__1_i_1_n_0,delaycnt0_carry__1_i_2_n_0,delaycnt0_carry__1_i_3_n_0,delaycnt0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__1_i_1
       (.I0(delaycnt[12]),
        .O(delaycnt0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__1_i_2
       (.I0(delaycnt[11]),
        .O(delaycnt0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__1_i_3
       (.I0(delaycnt[10]),
        .O(delaycnt0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__1_i_4
       (.I0(delaycnt[9]),
        .O(delaycnt0_carry__1_i_4_n_0));
  CARRY4 delaycnt0_carry__2
       (.CI(delaycnt0_carry__1_n_0),
        .CO({delaycnt0_carry__2_n_0,delaycnt0_carry__2_n_1,delaycnt0_carry__2_n_2,delaycnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(delaycnt[16:13]),
        .O({delaycnt0_carry__2_n_4,delaycnt0_carry__2_n_5,delaycnt0_carry__2_n_6,delaycnt0_carry__2_n_7}),
        .S({delaycnt0_carry__2_i_1_n_0,delaycnt0_carry__2_i_2_n_0,delaycnt0_carry__2_i_3_n_0,delaycnt0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__2_i_1
       (.I0(delaycnt[16]),
        .O(delaycnt0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__2_i_2
       (.I0(delaycnt[15]),
        .O(delaycnt0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__2_i_3
       (.I0(delaycnt[14]),
        .O(delaycnt0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__2_i_4
       (.I0(delaycnt[13]),
        .O(delaycnt0_carry__2_i_4_n_0));
  CARRY4 delaycnt0_carry__3
       (.CI(delaycnt0_carry__2_n_0),
        .CO({delaycnt0_carry__3_n_0,delaycnt0_carry__3_n_1,delaycnt0_carry__3_n_2,delaycnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(delaycnt[20:17]),
        .O({delaycnt0_carry__3_n_4,delaycnt0_carry__3_n_5,delaycnt0_carry__3_n_6,delaycnt0_carry__3_n_7}),
        .S({delaycnt0_carry__3_i_1_n_0,delaycnt0_carry__3_i_2_n_0,delaycnt0_carry__3_i_3_n_0,delaycnt0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__3_i_1
       (.I0(delaycnt[20]),
        .O(delaycnt0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__3_i_2
       (.I0(delaycnt[19]),
        .O(delaycnt0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__3_i_3
       (.I0(delaycnt[18]),
        .O(delaycnt0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__3_i_4
       (.I0(delaycnt[17]),
        .O(delaycnt0_carry__3_i_4_n_0));
  CARRY4 delaycnt0_carry__4
       (.CI(delaycnt0_carry__3_n_0),
        .CO({delaycnt0_carry__4_n_0,delaycnt0_carry__4_n_1,delaycnt0_carry__4_n_2,delaycnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(delaycnt[24:21]),
        .O({delaycnt0_carry__4_n_4,delaycnt0_carry__4_n_5,delaycnt0_carry__4_n_6,delaycnt0_carry__4_n_7}),
        .S({delaycnt0_carry__4_i_1_n_0,delaycnt0_carry__4_i_2_n_0,delaycnt0_carry__4_i_3_n_0,delaycnt0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__4_i_1
       (.I0(delaycnt[24]),
        .O(delaycnt0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__4_i_2
       (.I0(delaycnt[23]),
        .O(delaycnt0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__4_i_3
       (.I0(delaycnt[22]),
        .O(delaycnt0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__4_i_4
       (.I0(delaycnt[21]),
        .O(delaycnt0_carry__4_i_4_n_0));
  CARRY4 delaycnt0_carry__5
       (.CI(delaycnt0_carry__4_n_0),
        .CO({delaycnt0_carry__5_n_0,delaycnt0_carry__5_n_1,delaycnt0_carry__5_n_2,delaycnt0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(delaycnt[28:25]),
        .O({delaycnt0_carry__5_n_4,delaycnt0_carry__5_n_5,delaycnt0_carry__5_n_6,delaycnt0_carry__5_n_7}),
        .S({delaycnt0_carry__5_i_1_n_0,delaycnt0_carry__5_i_2_n_0,delaycnt0_carry__5_i_3_n_0,delaycnt0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__5_i_1
       (.I0(delaycnt[28]),
        .O(delaycnt0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__5_i_2
       (.I0(delaycnt[27]),
        .O(delaycnt0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__5_i_3
       (.I0(delaycnt[26]),
        .O(delaycnt0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__5_i_4
       (.I0(delaycnt[25]),
        .O(delaycnt0_carry__5_i_4_n_0));
  CARRY4 delaycnt0_carry__6
       (.CI(delaycnt0_carry__5_n_0),
        .CO({NLW_delaycnt0_carry__6_CO_UNCONNECTED[3:2],delaycnt0_carry__6_n_2,delaycnt0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,delaycnt[30:29]}),
        .O({NLW_delaycnt0_carry__6_O_UNCONNECTED[3],delaycnt0_carry__6_n_5,delaycnt0_carry__6_n_6,delaycnt0_carry__6_n_7}),
        .S({1'b0,delaycnt0_carry__6_i_1_n_0,delaycnt0_carry__6_i_2_n_0,delaycnt0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__6_i_1
       (.I0(delaycnt[31]),
        .O(delaycnt0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__6_i_2
       (.I0(delaycnt[30]),
        .O(delaycnt0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__6_i_3
       (.I0(delaycnt[29]),
        .O(delaycnt0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry_i_1
       (.I0(delaycnt[4]),
        .O(delaycnt0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry_i_2
       (.I0(delaycnt[3]),
        .O(delaycnt0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry_i_3
       (.I0(delaycnt[2]),
        .O(delaycnt0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry_i_4
       (.I0(delaycnt[1]),
        .O(delaycnt0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \delaycnt[0]_i_1 
       (.I0(delaycnt[0]),
        .O(\delaycnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delaycnt[31]_i_1 
       (.I0(delayEn),
        .O(delaycnt0));
  FDRE \delaycnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\delaycnt[0]_i_1_n_0 ),
        .Q(delaycnt[0]),
        .R(delaycnt0));
  FDSE \delaycnt_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__1_n_6),
        .Q(delaycnt[10]),
        .S(delaycnt0));
  FDSE \delaycnt_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__1_n_5),
        .Q(delaycnt[11]),
        .S(delaycnt0));
  FDSE \delaycnt_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__1_n_4),
        .Q(delaycnt[12]),
        .S(delaycnt0));
  FDRE \delaycnt_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__2_n_7),
        .Q(delaycnt[13]),
        .R(delaycnt0));
  FDSE \delaycnt_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__2_n_6),
        .Q(delaycnt[14]),
        .S(delaycnt0));
  FDRE \delaycnt_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__2_n_5),
        .Q(delaycnt[15]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__2_n_4),
        .Q(delaycnt[16]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__3_n_7),
        .Q(delaycnt[17]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__3_n_6),
        .Q(delaycnt[18]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__3_n_5),
        .Q(delaycnt[19]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry_n_7),
        .Q(delaycnt[1]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__3_n_4),
        .Q(delaycnt[20]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__4_n_7),
        .Q(delaycnt[21]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__4_n_6),
        .Q(delaycnt[22]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__4_n_5),
        .Q(delaycnt[23]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__4_n_4),
        .Q(delaycnt[24]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__5_n_7),
        .Q(delaycnt[25]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__5_n_6),
        .Q(delaycnt[26]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__5_n_5),
        .Q(delaycnt[27]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__5_n_4),
        .Q(delaycnt[28]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__6_n_7),
        .Q(delaycnt[29]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry_n_6),
        .Q(delaycnt[2]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__6_n_6),
        .Q(delaycnt[30]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__6_n_5),
        .Q(delaycnt[31]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry_n_5),
        .Q(delaycnt[3]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry_n_4),
        .Q(delaycnt[4]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__0_n_7),
        .Q(delaycnt[5]),
        .R(delaycnt0));
  FDSE \delaycnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__0_n_6),
        .Q(delaycnt[6]),
        .S(delaycnt0));
  FDSE \delaycnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__0_n_5),
        .Q(delaycnt[7]),
        .S(delaycnt0));
  FDSE \delaycnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__0_n_4),
        .Q(delaycnt[8]),
        .S(delaycnt0));
  FDRE \delaycnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__1_n_7),
        .Q(delaycnt[9]),
        .R(delaycnt0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \initA[0]_i_1 
       (.I0(initA_reg[0]),
        .O(\initA[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \initA[1]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \initA[2]_i_1 
       (.I0(initA_reg[2]),
        .I1(initA_reg[0]),
        .I2(initA_reg[1]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \initA[3]_i_1 
       (.I0(initA_reg[3]),
        .I1(initA_reg[2]),
        .I2(initA_reg[1]),
        .I3(initA_reg[0]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h7F80FF00)) 
    \initA[4]_i_1 
       (.I0(initA_reg[3]),
        .I1(initA_reg[0]),
        .I2(initA_reg[1]),
        .I3(initA_reg[4]),
        .I4(initA_reg[2]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \initA[5]_i_1 
       (.I0(initA_reg[5]),
        .I1(initA_reg[3]),
        .I2(initA_reg[0]),
        .I3(initA_reg[1]),
        .I4(initA_reg[4]),
        .I5(initA_reg[2]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \initA[6]_i_2 
       (.I0(initA_reg[6]),
        .I1(initA_reg[5]),
        .I2(initA_reg[2]),
        .I3(initA_reg[4]),
        .I4(\initWord[30]_i_3_n_0 ),
        .I5(initA_reg[3]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \initA[6]_i_3 
       (.I0(\state[3]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(initEn),
        .O(\initA[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[0] 
       (.C(CLK),
        .CE(twi_controller_n_5),
        .D(\initA[0]_i_1_n_0 ),
        .Q(initA_reg[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[1] 
       (.C(CLK),
        .CE(twi_controller_n_5),
        .D(p_1_in[1]),
        .Q(initA_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[2] 
       (.C(CLK),
        .CE(twi_controller_n_5),
        .D(p_1_in[2]),
        .Q(initA_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[3] 
       (.C(CLK),
        .CE(twi_controller_n_5),
        .D(p_1_in[3]),
        .Q(initA_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[4] 
       (.C(CLK),
        .CE(twi_controller_n_5),
        .D(p_1_in[4]),
        .Q(initA_reg[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[5] 
       (.C(CLK),
        .CE(twi_controller_n_5),
        .D(p_1_in[5]),
        .Q(initA_reg[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[6] 
       (.C(CLK),
        .CE(twi_controller_n_5),
        .D(p_1_in[6]),
        .Q(initA_reg[6]),
        .R(rst));
  FDRE initEn_reg
       (.C(CLK),
        .CE(1'b1),
        .D(twi_controller_n_6),
        .Q(initEn),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \initWord[0]_i_1 
       (.I0(initA_reg[5]),
        .I1(initA_reg[0]),
        .I2(initA_reg[1]),
        .O(\initWord[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0050004800180002)) 
    \initWord[10]_i_1 
       (.I0(initA_reg[3]),
        .I1(initA_reg[2]),
        .I2(initA_reg[4]),
        .I3(initA_reg[5]),
        .I4(initA_reg[1]),
        .I5(initA_reg[0]),
        .O(\initWord[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h03030002)) 
    \initWord[11]_i_1 
       (.I0(initA_reg[3]),
        .I1(initA_reg[1]),
        .I2(initA_reg[0]),
        .I3(initA_reg[4]),
        .I4(initA_reg[5]),
        .O(\initWord[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010004)) 
    \initWord[12]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[3]),
        .I2(initA_reg[5]),
        .I3(initA_reg[0]),
        .I4(initA_reg[2]),
        .I5(initA_reg[4]),
        .O(\initWord[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F002614040)) 
    \initWord[13]_i_1 
       (.I0(initA_reg[2]),
        .I1(initA_reg[4]),
        .I2(initA_reg[1]),
        .I3(initA_reg[0]),
        .I4(initA_reg[3]),
        .I5(initA_reg[5]),
        .O(\initWord[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000106100000A00)) 
    \initWord[14]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[0]),
        .I2(initA_reg[2]),
        .I3(initA_reg[4]),
        .I4(initA_reg[5]),
        .I5(initA_reg[3]),
        .O(\initWord[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000006000000C02)) 
    \initWord[15]_i_1 
       (.I0(initA_reg[0]),
        .I1(initA_reg[1]),
        .I2(initA_reg[2]),
        .I3(initA_reg[4]),
        .I4(initA_reg[5]),
        .I5(initA_reg[3]),
        .O(\initWord[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h007A008400A0003F)) 
    \initWord[16]_i_1 
       (.I0(initA_reg[2]),
        .I1(initA_reg[1]),
        .I2(initA_reg[3]),
        .I3(initA_reg[5]),
        .I4(initA_reg[0]),
        .I5(initA_reg[4]),
        .O(\initWord[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1B0B382A0B182A1A)) 
    \initWord[17]_i_1 
       (.I0(initA_reg[0]),
        .I1(initA_reg[5]),
        .I2(initA_reg[1]),
        .I3(initA_reg[3]),
        .I4(initA_reg[4]),
        .I5(initA_reg[2]),
        .O(\initWord[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8690000A9A1)) 
    \initWord[18]_i_1 
       (.I0(initA_reg[3]),
        .I1(initA_reg[2]),
        .I2(initA_reg[4]),
        .I3(initA_reg[0]),
        .I4(initA_reg[5]),
        .I5(initA_reg[1]),
        .O(\initWord[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF003CFE123C)) 
    \initWord[19]_i_1 
       (.I0(initA_reg[0]),
        .I1(initA_reg[3]),
        .I2(initA_reg[2]),
        .I3(initA_reg[1]),
        .I4(initA_reg[4]),
        .I5(initA_reg[5]),
        .O(\initWord[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000900A1005F)) 
    \initWord[20]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[0]),
        .I2(initA_reg[3]),
        .I3(initA_reg[5]),
        .I4(initA_reg[4]),
        .I5(initA_reg[2]),
        .O(\initWord[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4545050415141404)) 
    \initWord[21]_i_1 
       (.I0(initA_reg[5]),
        .I1(initA_reg[3]),
        .I2(initA_reg[4]),
        .I3(initA_reg[0]),
        .I4(initA_reg[1]),
        .I5(initA_reg[2]),
        .O(\initWord[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00C0000800000038)) 
    \initWord[23]_i_1 
       (.I0(initA_reg[0]),
        .I1(initA_reg[1]),
        .I2(initA_reg[3]),
        .I3(initA_reg[5]),
        .I4(initA_reg[4]),
        .I5(initA_reg[2]),
        .O(\initWord[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555557)) 
    \initWord[30]_i_1 
       (.I0(initA_reg[5]),
        .I1(\initWord[30]_i_3_n_0 ),
        .I2(initA_reg[4]),
        .I3(initA_reg[2]),
        .I4(initA_reg[3]),
        .I5(initA_reg[6]),
        .O(\initWord[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \initWord[30]_i_2 
       (.I0(initA_reg[5]),
        .I1(initA_reg[1]),
        .O(\initWord[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \initWord[30]_i_3 
       (.I0(initA_reg[1]),
        .I1(initA_reg[0]),
        .O(\initWord[30]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \initWord[5]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[0]),
        .I2(initA_reg[5]),
        .O(\initWord[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB0EFF5FFB5FFA0AF)) 
    \initWord[8]_i_1 
       (.I0(initA_reg[5]),
        .I1(initA_reg[4]),
        .I2(initA_reg[1]),
        .I3(initA_reg[0]),
        .I4(initA_reg[3]),
        .I5(initA_reg[2]),
        .O(\initWord[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0204070203060502)) 
    \initWord[9]_i_1 
       (.I0(initA_reg[2]),
        .I1(initA_reg[4]),
        .I2(initA_reg[5]),
        .I3(initA_reg[3]),
        .I4(initA_reg[1]),
        .I5(initA_reg[0]),
        .O(\initWord[9]_i_1_n_0 ));
  FDRE \initWord_reg[0] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[0]_i_1_n_0 ),
        .Q(\initWord_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \initWord_reg[10] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[10]_i_1_n_0 ),
        .Q(data2[2]),
        .R(1'b0));
  FDRE \initWord_reg[11] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[11]_i_1_n_0 ),
        .Q(data2[3]),
        .R(1'b0));
  FDRE \initWord_reg[12] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[12]_i_1_n_0 ),
        .Q(data2[4]),
        .R(1'b0));
  FDRE \initWord_reg[13] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[13]_i_1_n_0 ),
        .Q(data2[5]),
        .R(1'b0));
  FDRE \initWord_reg[14] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[14]_i_1_n_0 ),
        .Q(data2[6]),
        .R(1'b0));
  FDRE \initWord_reg[15] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[15]_i_1_n_0 ),
        .Q(data2[7]),
        .R(1'b0));
  FDRE \initWord_reg[16] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[16]_i_1_n_0 ),
        .Q(data1[0]),
        .R(1'b0));
  FDRE \initWord_reg[17] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[17]_i_1_n_0 ),
        .Q(data1[1]),
        .R(1'b0));
  FDRE \initWord_reg[18] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[18]_i_1_n_0 ),
        .Q(data1[2]),
        .R(1'b0));
  FDRE \initWord_reg[19] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[19]_i_1_n_0 ),
        .Q(data1[3]),
        .R(1'b0));
  FDRE \initWord_reg[20] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[20]_i_1_n_0 ),
        .Q(data1[4]),
        .R(1'b0));
  FDRE \initWord_reg[21] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[21]_i_1_n_0 ),
        .Q(data1[5]),
        .R(1'b0));
  FDRE \initWord_reg[23] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[23]_i_1_n_0 ),
        .Q(data1[7]),
        .R(1'b0));
  FDRE \initWord_reg[30] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[30]_i_2_n_0 ),
        .Q(data0),
        .R(1'b0));
  FDRE \initWord_reg[5] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[5]_i_1_n_0 ),
        .Q(\initWord_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \initWord_reg[8] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[8]_i_1_n_0 ),
        .Q(data2[0]),
        .R(1'b0));
  FDRE \initWord_reg[9] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[9]_i_1_n_0 ),
        .Q(data2[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    msg_i_1
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .O(msg0));
  FDRE msg_reg
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(msg0),
        .Q(msg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state[1]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \state[1]_i_3 
       (.I0(initA_reg[6]),
        .I1(initA_reg[5]),
        .I2(initA_reg[0]),
        .I3(initA_reg[1]),
        .I4(\state[1]_i_4_n_0 ),
        .I5(\state[1]_i_5_n_0 ),
        .O(\state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \state[1]_i_4 
       (.I0(initA_reg[3]),
        .I1(initA_reg[2]),
        .I2(initA_reg[4]),
        .O(\state[1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \state[1]_i_5 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\initWord_reg_n_0_[0] ),
        .I2(\initWord_reg_n_0_[5] ),
        .O(\state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0202020200000002)) 
    \state[2]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\initWord_reg_n_0_[5] ),
        .I4(\initWord_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_10 
       (.I0(delaycnt[3]),
        .I1(delaycnt[2]),
        .I2(delaycnt[1]),
        .I3(delaycnt[0]),
        .O(\state[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_11 
       (.I0(delaycnt[10]),
        .I1(delaycnt[11]),
        .I2(delaycnt[9]),
        .I3(delaycnt[8]),
        .O(\state[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_12 
       (.I0(delaycnt[19]),
        .I1(delaycnt[18]),
        .I2(delaycnt[16]),
        .I3(delaycnt[17]),
        .O(\state[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_13 
       (.I0(delaycnt[27]),
        .I1(delaycnt[26]),
        .I2(delaycnt[25]),
        .I3(delaycnt[24]),
        .O(\state[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \state[3]_i_3 
       (.I0(\state[3]_i_5_n_0 ),
        .I1(\state[3]_i_6_n_0 ),
        .I2(\state[3]_i_7_n_0 ),
        .I3(\state[3]_i_8_n_0 ),
        .O(\state[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \state[3]_i_4 
       (.I0(data1[5]),
        .I1(data1[1]),
        .I2(data1[4]),
        .I3(data1[3]),
        .I4(\state[3]_i_9_n_0 ),
        .O(\state[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[3]_i_5 
       (.I0(delaycnt[5]),
        .I1(delaycnt[6]),
        .I2(delaycnt[4]),
        .I3(delaycnt[7]),
        .I4(\state[3]_i_10_n_0 ),
        .O(\state[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \state[3]_i_6 
       (.I0(delaycnt[12]),
        .I1(delaycnt[14]),
        .I2(delaycnt[15]),
        .I3(delaycnt[13]),
        .I4(\state[3]_i_11_n_0 ),
        .O(\state[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[3]_i_7 
       (.I0(delaycnt[20]),
        .I1(delaycnt[22]),
        .I2(delaycnt[21]),
        .I3(delaycnt[23]),
        .I4(\state[3]_i_12_n_0 ),
        .O(\state[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[3]_i_8 
       (.I0(delaycnt[29]),
        .I1(delaycnt[31]),
        .I2(delaycnt[28]),
        .I3(delaycnt[30]),
        .I4(\state[3]_i_13_n_0 ),
        .O(\state[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \state[3]_i_9 
       (.I0(\state_reg_n_0_[0] ),
        .I1(data1[2]),
        .I2(data1[7]),
        .I3(data1[0]),
        .O(\state[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(twi_controller_n_4),
        .D(twi_controller_n_3),
        .Q(\state_reg_n_0_[0] ),
        .R(rst));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(twi_controller_n_4),
        .D(twi_controller_n_2),
        .Q(\state_reg_n_0_[1] ),
        .S(rst));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[2] 
       (.C(CLK),
        .CE(twi_controller_n_4),
        .D(twi_controller_n_1),
        .Q(\state_reg_n_0_[2] ),
        .S(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(CLK),
        .CE(twi_controller_n_4),
        .D(twi_controller_n_0),
        .Q(\state_reg_n_0_[3] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h800F)) 
    stb_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .O(stb_i_1_n_0));
  FDRE stb_reg
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(stb_i_1_n_0),
        .Q(stb),
        .R(1'b0));
  lab4_design_lab4_ip_0_6_TWICtl twi_controller
       (.CLK(CLK),
        .D({twi_controller_n_0,twi_controller_n_1,twi_controller_n_2,twi_controller_n_3}),
        .DONE_O_reg_0(twi_controller_n_5),
        .E(twi_controller_n_4),
        .Q(data_i),
        .initEn(initEn),
        .initEn_reg(\initA[6]_i_3_n_0 ),
        .msg(msg),
        .s00_axi_aresetn(s00_axi_aresetn),
        .scl(scl),
        .sda(sda),
        .\state_reg[0] ({\state_reg_n_0_[3] ,\state_reg_n_0_[2] ,\state_reg_n_0_[1] ,\state_reg_n_0_[0] }),
        .\state_reg[0]_0 (\state[3]_i_3_n_0 ),
        .\state_reg[1] (\state[1]_i_2_n_0 ),
        .\state_reg[1]_0 (\state[3]_i_4_n_0 ),
        .\state_reg[1]_1 (\state[1]_i_3_n_0 ),
        .\state_reg[2] (twi_controller_n_6),
        .\state_reg[2]_0 (\state[2]_i_2_n_0 ),
        .stb(stb));
endmodule

(* ORIG_REF_NAME = "btn_reader" *) 
module lab4_design_lab4_ip_0_6_btn_reader
   (cntr_btn,
    SR,
    btn_press_reg_0,
    E,
    btn_press_reg_1,
    btn,
    s00_axi_aclk,
    rst,
    s00_axi_aresetn,
    \ampl_sig_reg[15] ,
    \ampl_sig_reg[15]_0 ,
    CO,
    up_btn,
    \phase_sig_reg[15] ,
    O,
    \phase_sig_reg[15]_0 ,
    right_btn,
    left_btn,
    \phase_sig_reg[15]_1 ,
    waveSel);
  output cntr_btn;
  output [0:0]SR;
  output btn_press_reg_0;
  output [0:0]E;
  output btn_press_reg_1;
  input [0:0]btn;
  input s00_axi_aclk;
  input rst;
  input s00_axi_aresetn;
  input \ampl_sig_reg[15] ;
  input \ampl_sig_reg[15]_0 ;
  input [0:0]CO;
  input up_btn;
  input \phase_sig_reg[15] ;
  input [1:0]O;
  input \phase_sig_reg[15]_0 ;
  input right_btn;
  input left_btn;
  input [0:0]\phase_sig_reg[15]_1 ;
  input waveSel;

  wire [0:0]CO;
  wire [0:0]E;
  wire [1:0]O;
  wire [0:0]SR;
  wire \ampl_sig_reg[15] ;
  wire \ampl_sig_reg[15]_0 ;
  wire [0:0]btn;
  wire btn_current;
  wire btn_current_i_1__3_n_0;
  wire btn_old;
  wire btn_press_i_1__3_n_0;
  wire btn_press_reg_0;
  wire btn_press_reg_1;
  wire cntr_btn;
  wire count0;
  wire count1_carry__0_i_1__3_n_0;
  wire count1_carry__0_i_2__3_n_0;
  wire count1_carry__0_i_3__3_n_0;
  wire count1_carry__0_i_4__3_n_0;
  wire count1_carry__0_i_5__3_n_0;
  wire count1_carry__0_i_6__3_n_0;
  wire count1_carry__0_n_0;
  wire count1_carry__0_n_1;
  wire count1_carry__0_n_2;
  wire count1_carry__0_n_3;
  wire count1_carry__1_i_1__3_n_0;
  wire count1_carry__1_i_2__3_n_0;
  wire count1_carry__1_i_3__3_n_0;
  wire count1_carry__1_i_4__3_n_0;
  wire count1_carry__1_i_5__3_n_0;
  wire count1_carry__1_n_1;
  wire count1_carry__1_n_2;
  wire count1_carry__1_n_3;
  wire count1_carry_i_1__3_n_0;
  wire count1_carry_i_2__3_n_0;
  wire count1_carry_i_3__3_n_0;
  wire count1_carry_i_4__3_n_0;
  wire count1_carry_i_5__3_n_0;
  wire count1_carry_i_6__3_n_0;
  wire count1_carry_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire \count[0]_i_1__3_n_0 ;
  wire \count[0]_i_4__3_n_0 ;
  wire [20:0]count_reg;
  wire \count_reg[0]_i_3__3_n_0 ;
  wire \count_reg[0]_i_3__3_n_1 ;
  wire \count_reg[0]_i_3__3_n_2 ;
  wire \count_reg[0]_i_3__3_n_3 ;
  wire \count_reg[0]_i_3__3_n_4 ;
  wire \count_reg[0]_i_3__3_n_5 ;
  wire \count_reg[0]_i_3__3_n_6 ;
  wire \count_reg[0]_i_3__3_n_7 ;
  wire \count_reg[12]_i_1__3_n_0 ;
  wire \count_reg[12]_i_1__3_n_1 ;
  wire \count_reg[12]_i_1__3_n_2 ;
  wire \count_reg[12]_i_1__3_n_3 ;
  wire \count_reg[12]_i_1__3_n_4 ;
  wire \count_reg[12]_i_1__3_n_5 ;
  wire \count_reg[12]_i_1__3_n_6 ;
  wire \count_reg[12]_i_1__3_n_7 ;
  wire \count_reg[16]_i_1__3_n_0 ;
  wire \count_reg[16]_i_1__3_n_1 ;
  wire \count_reg[16]_i_1__3_n_2 ;
  wire \count_reg[16]_i_1__3_n_3 ;
  wire \count_reg[16]_i_1__3_n_4 ;
  wire \count_reg[16]_i_1__3_n_5 ;
  wire \count_reg[16]_i_1__3_n_6 ;
  wire \count_reg[16]_i_1__3_n_7 ;
  wire \count_reg[20]_i_1__3_n_7 ;
  wire \count_reg[4]_i_1__3_n_0 ;
  wire \count_reg[4]_i_1__3_n_1 ;
  wire \count_reg[4]_i_1__3_n_2 ;
  wire \count_reg[4]_i_1__3_n_3 ;
  wire \count_reg[4]_i_1__3_n_4 ;
  wire \count_reg[4]_i_1__3_n_5 ;
  wire \count_reg[4]_i_1__3_n_6 ;
  wire \count_reg[4]_i_1__3_n_7 ;
  wire \count_reg[8]_i_1__3_n_0 ;
  wire \count_reg[8]_i_1__3_n_1 ;
  wire \count_reg[8]_i_1__3_n_2 ;
  wire \count_reg[8]_i_1__3_n_3 ;
  wire \count_reg[8]_i_1__3_n_4 ;
  wire \count_reg[8]_i_1__3_n_5 ;
  wire \count_reg[8]_i_1__3_n_6 ;
  wire \count_reg[8]_i_1__3_n_7 ;
  wire ff1;
  wire ff2;
  wire left_btn;
  wire \phase_sig[15]_i_4_n_0 ;
  wire \phase_sig_reg[15] ;
  wire \phase_sig_reg[15]_0 ;
  wire [0:0]\phase_sig_reg[15]_1 ;
  wire right_btn;
  wire rst;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire up_btn;
  wire waveSel;
  wire [3:0]NLW_count1_carry_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_count1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_count1_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_count_reg[20]_i_1__3_CO_UNCONNECTED ;
  wire [3:1]\NLW_count_reg[20]_i_1__3_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hAAFEFEFE)) 
    \ampl_sig[0]_i_3 
       (.I0(\phase_sig[15]_i_4_n_0 ),
        .I1(\ampl_sig_reg[15] ),
        .I2(\ampl_sig_reg[15]_0 ),
        .I3(CO),
        .I4(up_btn),
        .O(btn_press_reg_0));
  LUT4 #(
    .INIT(16'hFE40)) 
    btn_current_i_1__3
       (.I0(count1_carry__1_n_1),
        .I1(ff2),
        .I2(ff1),
        .I3(btn_current),
        .O(btn_current_i_1__3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    btn_current_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(btn_current_i_1__3_n_0),
        .Q(btn_current));
  FDCE #(
    .INIT(1'b0)) 
    btn_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(btn_current),
        .Q(btn_old));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h62)) 
    btn_press_i_1__3
       (.I0(btn_current),
        .I1(btn_old),
        .I2(cntr_btn),
        .O(btn_press_i_1__3_n_0));
  FDCE btn_press_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(btn_press_i_1__3_n_0),
        .Q(cntr_btn));
  CARRY4 count1_carry
       (.CI(1'b0),
        .CO({count1_carry_n_0,count1_carry_n_1,count1_carry_n_2,count1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,count1_carry_i_1__3_n_0,1'b0,count1_carry_i_2__3_n_0}),
        .O(NLW_count1_carry_O_UNCONNECTED[3:0]),
        .S({count1_carry_i_3__3_n_0,count1_carry_i_4__3_n_0,count1_carry_i_5__3_n_0,count1_carry_i_6__3_n_0}));
  CARRY4 count1_carry__0
       (.CI(count1_carry_n_0),
        .CO({count1_carry__0_n_0,count1_carry__0_n_1,count1_carry__0_n_2,count1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({count1_carry__0_i_1__3_n_0,1'b0,count1_carry__0_i_2__3_n_0,1'b0}),
        .O(NLW_count1_carry__0_O_UNCONNECTED[3:0]),
        .S({count1_carry__0_i_3__3_n_0,count1_carry__0_i_4__3_n_0,count1_carry__0_i_5__3_n_0,count1_carry__0_i_6__3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    count1_carry__0_i_1__3
       (.I0(count_reg[15]),
        .O(count1_carry__0_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_2__3
       (.I0(count_reg[11]),
        .I1(count_reg[10]),
        .O(count1_carry__0_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__0_i_3__3
       (.I0(count_reg[15]),
        .I1(count_reg[14]),
        .O(count1_carry__0_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_4__3
       (.I0(count_reg[13]),
        .I1(count_reg[12]),
        .O(count1_carry__0_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__0_i_5__3
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .O(count1_carry__0_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_6__3
       (.I0(count_reg[9]),
        .I1(count_reg[8]),
        .O(count1_carry__0_i_6__3_n_0));
  CARRY4 count1_carry__1
       (.CI(count1_carry__0_n_0),
        .CO({NLW_count1_carry__1_CO_UNCONNECTED[3],count1_carry__1_n_1,count1_carry__1_n_2,count1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,count1_carry__1_i_1__3_n_0,count1_carry__1_i_2__3_n_0,count1_carry__1_i_3__3_n_0}),
        .O(NLW_count1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,count_reg[20],count1_carry__1_i_4__3_n_0,count1_carry__1_i_5__3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    count1_carry__1_i_1__3
       (.I0(count_reg[20]),
        .O(count1_carry__1_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__1_i_2__3
       (.I0(count_reg[19]),
        .I1(count_reg[18]),
        .O(count1_carry__1_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__1_i_3__3
       (.I0(count_reg[17]),
        .I1(count_reg[16]),
        .O(count1_carry__1_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__1_i_4__3
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .O(count1_carry__1_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__1_i_5__3
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .O(count1_carry__1_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_1__3
       (.I0(count_reg[5]),
        .I1(count_reg[4]),
        .O(count1_carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_2__3
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(count1_carry_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_3__3
       (.I0(count_reg[7]),
        .I1(count_reg[6]),
        .O(count1_carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_4__3
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .O(count1_carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_5__3
       (.I0(count_reg[3]),
        .I1(count_reg[2]),
        .O(count1_carry_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_6__3
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(count1_carry_i_6__3_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    \count[0]_i_1__3 
       (.I0(ff2),
        .I1(ff1),
        .I2(s00_axi_aresetn),
        .O(\count[0]_i_1__3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[0]_i_2__3 
       (.I0(s00_axi_aresetn),
        .I1(count1_carry__1_n_1),
        .O(count0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_4__3 
       (.I0(count_reg[0]),
        .O(\count[0]_i_4__3_n_0 ));
  FDRE \count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[0]_i_3__3_n_7 ),
        .Q(count_reg[0]),
        .R(\count[0]_i_1__3_n_0 ));
  CARRY4 \count_reg[0]_i_3__3 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_3__3_n_0 ,\count_reg[0]_i_3__3_n_1 ,\count_reg[0]_i_3__3_n_2 ,\count_reg[0]_i_3__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_3__3_n_4 ,\count_reg[0]_i_3__3_n_5 ,\count_reg[0]_i_3__3_n_6 ,\count_reg[0]_i_3__3_n_7 }),
        .S({count_reg[3:1],\count[0]_i_4__3_n_0 }));
  FDRE \count_reg[10] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[8]_i_1__3_n_5 ),
        .Q(count_reg[10]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE \count_reg[11] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[8]_i_1__3_n_4 ),
        .Q(count_reg[11]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE \count_reg[12] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[12]_i_1__3_n_7 ),
        .Q(count_reg[12]),
        .R(\count[0]_i_1__3_n_0 ));
  CARRY4 \count_reg[12]_i_1__3 
       (.CI(\count_reg[8]_i_1__3_n_0 ),
        .CO({\count_reg[12]_i_1__3_n_0 ,\count_reg[12]_i_1__3_n_1 ,\count_reg[12]_i_1__3_n_2 ,\count_reg[12]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1__3_n_4 ,\count_reg[12]_i_1__3_n_5 ,\count_reg[12]_i_1__3_n_6 ,\count_reg[12]_i_1__3_n_7 }),
        .S(count_reg[15:12]));
  FDRE \count_reg[13] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[12]_i_1__3_n_6 ),
        .Q(count_reg[13]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE \count_reg[14] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[12]_i_1__3_n_5 ),
        .Q(count_reg[14]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE \count_reg[15] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[12]_i_1__3_n_4 ),
        .Q(count_reg[15]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE \count_reg[16] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[16]_i_1__3_n_7 ),
        .Q(count_reg[16]),
        .R(\count[0]_i_1__3_n_0 ));
  CARRY4 \count_reg[16]_i_1__3 
       (.CI(\count_reg[12]_i_1__3_n_0 ),
        .CO({\count_reg[16]_i_1__3_n_0 ,\count_reg[16]_i_1__3_n_1 ,\count_reg[16]_i_1__3_n_2 ,\count_reg[16]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1__3_n_4 ,\count_reg[16]_i_1__3_n_5 ,\count_reg[16]_i_1__3_n_6 ,\count_reg[16]_i_1__3_n_7 }),
        .S(count_reg[19:16]));
  FDRE \count_reg[17] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[16]_i_1__3_n_6 ),
        .Q(count_reg[17]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE \count_reg[18] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[16]_i_1__3_n_5 ),
        .Q(count_reg[18]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE \count_reg[19] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[16]_i_1__3_n_4 ),
        .Q(count_reg[19]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE \count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[0]_i_3__3_n_6 ),
        .Q(count_reg[1]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE \count_reg[20] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[20]_i_1__3_n_7 ),
        .Q(count_reg[20]),
        .R(\count[0]_i_1__3_n_0 ));
  CARRY4 \count_reg[20]_i_1__3 
       (.CI(\count_reg[16]_i_1__3_n_0 ),
        .CO(\NLW_count_reg[20]_i_1__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[20]_i_1__3_O_UNCONNECTED [3:1],\count_reg[20]_i_1__3_n_7 }),
        .S({1'b0,1'b0,1'b0,count_reg[20]}));
  FDRE \count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[0]_i_3__3_n_5 ),
        .Q(count_reg[2]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE \count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[0]_i_3__3_n_4 ),
        .Q(count_reg[3]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE \count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[4]_i_1__3_n_7 ),
        .Q(count_reg[4]),
        .R(\count[0]_i_1__3_n_0 ));
  CARRY4 \count_reg[4]_i_1__3 
       (.CI(\count_reg[0]_i_3__3_n_0 ),
        .CO({\count_reg[4]_i_1__3_n_0 ,\count_reg[4]_i_1__3_n_1 ,\count_reg[4]_i_1__3_n_2 ,\count_reg[4]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1__3_n_4 ,\count_reg[4]_i_1__3_n_5 ,\count_reg[4]_i_1__3_n_6 ,\count_reg[4]_i_1__3_n_7 }),
        .S(count_reg[7:4]));
  FDRE \count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[4]_i_1__3_n_6 ),
        .Q(count_reg[5]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE \count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[4]_i_1__3_n_5 ),
        .Q(count_reg[6]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE \count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[4]_i_1__3_n_4 ),
        .Q(count_reg[7]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE \count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[8]_i_1__3_n_7 ),
        .Q(count_reg[8]),
        .R(\count[0]_i_1__3_n_0 ));
  CARRY4 \count_reg[8]_i_1__3 
       (.CI(\count_reg[4]_i_1__3_n_0 ),
        .CO({\count_reg[8]_i_1__3_n_0 ,\count_reg[8]_i_1__3_n_1 ,\count_reg[8]_i_1__3_n_2 ,\count_reg[8]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__3_n_4 ,\count_reg[8]_i_1__3_n_5 ,\count_reg[8]_i_1__3_n_6 ,\count_reg[8]_i_1__3_n_7 }),
        .S(count_reg[11:8]));
  FDRE \count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[8]_i_1__3_n_6 ),
        .Q(count_reg[9]),
        .R(\count[0]_i_1__3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    ff1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(btn),
        .Q(ff1));
  FDCE #(
    .INIT(1'b0)) 
    ff2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(ff1),
        .Q(ff2));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \phase_sig[15]_i_1 
       (.I0(cntr_btn),
        .I1(s00_axi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'hAAAAFFABAAAAAAAA)) 
    \phase_sig[15]_i_2 
       (.I0(\phase_sig[15]_i_4_n_0 ),
        .I1(\phase_sig_reg[15] ),
        .I2(O[0]),
        .I3(\phase_sig_reg[15]_0 ),
        .I4(O[1]),
        .I5(right_btn),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \phase_sig[15]_i_4 
       (.I0(cntr_btn),
        .I1(left_btn),
        .I2(\phase_sig_reg[15]_1 ),
        .O(\phase_sig[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    signalSel_i_1
       (.I0(cntr_btn),
        .I1(waveSel),
        .O(btn_press_reg_1));
endmodule

(* ORIG_REF_NAME = "btn_reader" *) 
module lab4_design_lab4_ip_0_6_btn_reader_0
   (O,
    CO,
    \switch[7] ,
    \ampl_sig_reg[11] ,
    btn_press_reg_0,
    btn,
    s00_axi_aclk,
    rst,
    s00_axi_aresetn,
    \ampl_sig[0]_i_3 ,
    \ampl_sig[0]_i_3_0 ,
    switch,
    C,
    ampl_sig_reg);
  output [3:0]O;
  output [0:0]CO;
  output [3:0]\switch[7] ;
  output \ampl_sig_reg[11] ;
  output btn_press_reg_0;
  input [0:0]btn;
  input s00_axi_aclk;
  input rst;
  input s00_axi_aresetn;
  input [3:0]\ampl_sig[0]_i_3 ;
  input [3:0]\ampl_sig[0]_i_3_0 ;
  input [7:0]switch;
  input [7:0]C;
  input [7:0]ampl_sig_reg;

  wire [7:0]C;
  wire [0:0]CO;
  wire [3:0]O;
  wire \ampl_sig[0]_i_10_n_0 ;
  wire \ampl_sig[0]_i_11_n_0 ;
  wire [3:0]\ampl_sig[0]_i_3 ;
  wire [3:0]\ampl_sig[0]_i_3_0 ;
  wire \ampl_sig[0]_i_4_n_0 ;
  wire \ampl_sig[0]_i_5_n_0 ;
  wire \ampl_sig[0]_i_6_n_0 ;
  wire \ampl_sig[0]_i_7_n_0 ;
  wire \ampl_sig[0]_i_8_n_0 ;
  wire \ampl_sig[0]_i_9_n_0 ;
  wire \ampl_sig[4]_i_2_n_0 ;
  wire \ampl_sig[4]_i_3_n_0 ;
  wire \ampl_sig[4]_i_4_n_0 ;
  wire \ampl_sig[4]_i_5_n_0 ;
  wire \ampl_sig[4]_i_6_n_0 ;
  wire \ampl_sig[4]_i_7_n_0 ;
  wire \ampl_sig[4]_i_8_n_0 ;
  wire \ampl_sig[4]_i_9_n_0 ;
  wire [7:0]ampl_sig_reg;
  wire \ampl_sig_reg[0]_i_2_n_0 ;
  wire \ampl_sig_reg[0]_i_2_n_1 ;
  wire \ampl_sig_reg[0]_i_2_n_2 ;
  wire \ampl_sig_reg[0]_i_2_n_3 ;
  wire \ampl_sig_reg[11] ;
  wire \ampl_sig_reg[4]_i_1_n_1 ;
  wire \ampl_sig_reg[4]_i_1_n_2 ;
  wire \ampl_sig_reg[4]_i_1_n_3 ;
  wire [0:0]btn;
  wire btn_current;
  wire btn_current_i_1__1_n_0;
  wire btn_old;
  wire btn_press_i_1__1_n_0;
  wire btn_press_reg_0;
  wire count0;
  wire count1_carry__0_i_1__1_n_0;
  wire count1_carry__0_i_2__1_n_0;
  wire count1_carry__0_i_3__1_n_0;
  wire count1_carry__0_i_4__1_n_0;
  wire count1_carry__0_i_5__1_n_0;
  wire count1_carry__0_i_6__1_n_0;
  wire count1_carry__0_n_0;
  wire count1_carry__0_n_1;
  wire count1_carry__0_n_2;
  wire count1_carry__0_n_3;
  wire count1_carry__1_i_1__1_n_0;
  wire count1_carry__1_i_2__1_n_0;
  wire count1_carry__1_i_3__1_n_0;
  wire count1_carry__1_i_4__1_n_0;
  wire count1_carry__1_i_5__1_n_0;
  wire count1_carry__1_n_1;
  wire count1_carry__1_n_2;
  wire count1_carry__1_n_3;
  wire count1_carry_i_1__1_n_0;
  wire count1_carry_i_2__1_n_0;
  wire count1_carry_i_3__1_n_0;
  wire count1_carry_i_4__1_n_0;
  wire count1_carry_i_5__1_n_0;
  wire count1_carry_i_6__1_n_0;
  wire count1_carry_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire \count[0]_i_1__1_n_0 ;
  wire \count[0]_i_4__1_n_0 ;
  wire [20:0]count_reg;
  wire \count_reg[0]_i_3__1_n_0 ;
  wire \count_reg[0]_i_3__1_n_1 ;
  wire \count_reg[0]_i_3__1_n_2 ;
  wire \count_reg[0]_i_3__1_n_3 ;
  wire \count_reg[0]_i_3__1_n_4 ;
  wire \count_reg[0]_i_3__1_n_5 ;
  wire \count_reg[0]_i_3__1_n_6 ;
  wire \count_reg[0]_i_3__1_n_7 ;
  wire \count_reg[12]_i_1__1_n_0 ;
  wire \count_reg[12]_i_1__1_n_1 ;
  wire \count_reg[12]_i_1__1_n_2 ;
  wire \count_reg[12]_i_1__1_n_3 ;
  wire \count_reg[12]_i_1__1_n_4 ;
  wire \count_reg[12]_i_1__1_n_5 ;
  wire \count_reg[12]_i_1__1_n_6 ;
  wire \count_reg[12]_i_1__1_n_7 ;
  wire \count_reg[16]_i_1__1_n_0 ;
  wire \count_reg[16]_i_1__1_n_1 ;
  wire \count_reg[16]_i_1__1_n_2 ;
  wire \count_reg[16]_i_1__1_n_3 ;
  wire \count_reg[16]_i_1__1_n_4 ;
  wire \count_reg[16]_i_1__1_n_5 ;
  wire \count_reg[16]_i_1__1_n_6 ;
  wire \count_reg[16]_i_1__1_n_7 ;
  wire \count_reg[20]_i_1__1_n_7 ;
  wire \count_reg[4]_i_1__1_n_0 ;
  wire \count_reg[4]_i_1__1_n_1 ;
  wire \count_reg[4]_i_1__1_n_2 ;
  wire \count_reg[4]_i_1__1_n_3 ;
  wire \count_reg[4]_i_1__1_n_4 ;
  wire \count_reg[4]_i_1__1_n_5 ;
  wire \count_reg[4]_i_1__1_n_6 ;
  wire \count_reg[4]_i_1__1_n_7 ;
  wire \count_reg[8]_i_1__1_n_0 ;
  wire \count_reg[8]_i_1__1_n_1 ;
  wire \count_reg[8]_i_1__1_n_2 ;
  wire \count_reg[8]_i_1__1_n_3 ;
  wire \count_reg[8]_i_1__1_n_4 ;
  wire \count_reg[8]_i_1__1_n_5 ;
  wire \count_reg[8]_i_1__1_n_6 ;
  wire \count_reg[8]_i_1__1_n_7 ;
  wire down_btn;
  wire ff1;
  wire ff2;
  wire rst;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [7:0]switch;
  wire [3:0]\switch[7] ;
  wire [3:0]NLW_count1_carry_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_count1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_count1_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_count_reg[20]_i_1__1_CO_UNCONNECTED ;
  wire [3:1]\NLW_count_reg[20]_i_1__1_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h5CAC)) 
    \ampl_sig[0]_i_10 
       (.I0(switch[1]),
        .I1(C[1]),
        .I2(\ampl_sig_reg[11] ),
        .I3(ampl_sig_reg[1]),
        .O(\ampl_sig[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \ampl_sig[0]_i_11 
       (.I0(switch[0]),
        .I1(C[0]),
        .I2(\ampl_sig_reg[11] ),
        .I3(ampl_sig_reg[0]),
        .O(\ampl_sig[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \ampl_sig[0]_i_13 
       (.I0(down_btn),
        .I1(\ampl_sig[0]_i_3 [3]),
        .I2(\ampl_sig[0]_i_3_0 [3]),
        .I3(\ampl_sig[0]_i_3_0 [2]),
        .I4(\ampl_sig[0]_i_3_0 [1]),
        .I5(\ampl_sig[0]_i_3_0 [0]),
        .O(btn_press_reg_0));
  LUT4 #(
    .INIT(16'h001F)) 
    \ampl_sig[0]_i_14 
       (.I0(\ampl_sig[0]_i_3 [1]),
        .I1(\ampl_sig[0]_i_3 [0]),
        .I2(\ampl_sig[0]_i_3 [2]),
        .I3(btn_press_reg_0),
        .O(\ampl_sig_reg[11] ));
  LUT2 #(
    .INIT(4'h8)) 
    \ampl_sig[0]_i_4 
       (.I0(\ampl_sig_reg[11] ),
        .I1(switch[3]),
        .O(\ampl_sig[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ampl_sig[0]_i_5 
       (.I0(\ampl_sig_reg[11] ),
        .I1(switch[2]),
        .O(\ampl_sig[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ampl_sig[0]_i_6 
       (.I0(\ampl_sig_reg[11] ),
        .I1(switch[1]),
        .O(\ampl_sig[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ampl_sig[0]_i_7 
       (.I0(\ampl_sig_reg[11] ),
        .I1(switch[0]),
        .O(\ampl_sig[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \ampl_sig[0]_i_8 
       (.I0(switch[3]),
        .I1(C[3]),
        .I2(\ampl_sig_reg[11] ),
        .I3(ampl_sig_reg[3]),
        .O(\ampl_sig[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \ampl_sig[0]_i_9 
       (.I0(switch[2]),
        .I1(C[2]),
        .I2(\ampl_sig_reg[11] ),
        .I3(ampl_sig_reg[2]),
        .O(\ampl_sig[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ampl_sig[4]_i_2 
       (.I0(\ampl_sig_reg[11] ),
        .I1(switch[7]),
        .O(\ampl_sig[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ampl_sig[4]_i_3 
       (.I0(\ampl_sig_reg[11] ),
        .I1(switch[6]),
        .O(\ampl_sig[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ampl_sig[4]_i_4 
       (.I0(\ampl_sig_reg[11] ),
        .I1(switch[5]),
        .O(\ampl_sig[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ampl_sig[4]_i_5 
       (.I0(\ampl_sig_reg[11] ),
        .I1(switch[4]),
        .O(\ampl_sig[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \ampl_sig[4]_i_6 
       (.I0(switch[7]),
        .I1(C[7]),
        .I2(\ampl_sig_reg[11] ),
        .I3(ampl_sig_reg[7]),
        .O(\ampl_sig[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \ampl_sig[4]_i_7 
       (.I0(switch[6]),
        .I1(C[6]),
        .I2(\ampl_sig_reg[11] ),
        .I3(ampl_sig_reg[6]),
        .O(\ampl_sig[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \ampl_sig[4]_i_8 
       (.I0(switch[5]),
        .I1(C[5]),
        .I2(\ampl_sig_reg[11] ),
        .I3(ampl_sig_reg[5]),
        .O(\ampl_sig[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \ampl_sig[4]_i_9 
       (.I0(switch[4]),
        .I1(C[4]),
        .I2(\ampl_sig_reg[11] ),
        .I3(ampl_sig_reg[4]),
        .O(\ampl_sig[4]_i_9_n_0 ));
  CARRY4 \ampl_sig_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\ampl_sig_reg[0]_i_2_n_0 ,\ampl_sig_reg[0]_i_2_n_1 ,\ampl_sig_reg[0]_i_2_n_2 ,\ampl_sig_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\ampl_sig[0]_i_4_n_0 ,\ampl_sig[0]_i_5_n_0 ,\ampl_sig[0]_i_6_n_0 ,\ampl_sig[0]_i_7_n_0 }),
        .O(O),
        .S({\ampl_sig[0]_i_8_n_0 ,\ampl_sig[0]_i_9_n_0 ,\ampl_sig[0]_i_10_n_0 ,\ampl_sig[0]_i_11_n_0 }));
  CARRY4 \ampl_sig_reg[4]_i_1 
       (.CI(\ampl_sig_reg[0]_i_2_n_0 ),
        .CO({CO,\ampl_sig_reg[4]_i_1_n_1 ,\ampl_sig_reg[4]_i_1_n_2 ,\ampl_sig_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\ampl_sig[4]_i_2_n_0 ,\ampl_sig[4]_i_3_n_0 ,\ampl_sig[4]_i_4_n_0 ,\ampl_sig[4]_i_5_n_0 }),
        .O(\switch[7] ),
        .S({\ampl_sig[4]_i_6_n_0 ,\ampl_sig[4]_i_7_n_0 ,\ampl_sig[4]_i_8_n_0 ,\ampl_sig[4]_i_9_n_0 }));
  LUT4 #(
    .INIT(16'hFE40)) 
    btn_current_i_1__1
       (.I0(count1_carry__1_n_1),
        .I1(ff2),
        .I2(ff1),
        .I3(btn_current),
        .O(btn_current_i_1__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    btn_current_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(btn_current_i_1__1_n_0),
        .Q(btn_current));
  FDCE #(
    .INIT(1'b0)) 
    btn_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(btn_current),
        .Q(btn_old));
  LUT3 #(
    .INIT(8'h62)) 
    btn_press_i_1__1
       (.I0(btn_current),
        .I1(btn_old),
        .I2(down_btn),
        .O(btn_press_i_1__1_n_0));
  FDCE btn_press_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(btn_press_i_1__1_n_0),
        .Q(down_btn));
  CARRY4 count1_carry
       (.CI(1'b0),
        .CO({count1_carry_n_0,count1_carry_n_1,count1_carry_n_2,count1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,count1_carry_i_1__1_n_0,1'b0,count1_carry_i_2__1_n_0}),
        .O(NLW_count1_carry_O_UNCONNECTED[3:0]),
        .S({count1_carry_i_3__1_n_0,count1_carry_i_4__1_n_0,count1_carry_i_5__1_n_0,count1_carry_i_6__1_n_0}));
  CARRY4 count1_carry__0
       (.CI(count1_carry_n_0),
        .CO({count1_carry__0_n_0,count1_carry__0_n_1,count1_carry__0_n_2,count1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({count1_carry__0_i_1__1_n_0,1'b0,count1_carry__0_i_2__1_n_0,1'b0}),
        .O(NLW_count1_carry__0_O_UNCONNECTED[3:0]),
        .S({count1_carry__0_i_3__1_n_0,count1_carry__0_i_4__1_n_0,count1_carry__0_i_5__1_n_0,count1_carry__0_i_6__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    count1_carry__0_i_1__1
       (.I0(count_reg[15]),
        .O(count1_carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_2__1
       (.I0(count_reg[11]),
        .I1(count_reg[10]),
        .O(count1_carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__0_i_3__1
       (.I0(count_reg[15]),
        .I1(count_reg[14]),
        .O(count1_carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_4__1
       (.I0(count_reg[13]),
        .I1(count_reg[12]),
        .O(count1_carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__0_i_5__1
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .O(count1_carry__0_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_6__1
       (.I0(count_reg[9]),
        .I1(count_reg[8]),
        .O(count1_carry__0_i_6__1_n_0));
  CARRY4 count1_carry__1
       (.CI(count1_carry__0_n_0),
        .CO({NLW_count1_carry__1_CO_UNCONNECTED[3],count1_carry__1_n_1,count1_carry__1_n_2,count1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,count1_carry__1_i_1__1_n_0,count1_carry__1_i_2__1_n_0,count1_carry__1_i_3__1_n_0}),
        .O(NLW_count1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,count_reg[20],count1_carry__1_i_4__1_n_0,count1_carry__1_i_5__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    count1_carry__1_i_1__1
       (.I0(count_reg[20]),
        .O(count1_carry__1_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__1_i_2__1
       (.I0(count_reg[19]),
        .I1(count_reg[18]),
        .O(count1_carry__1_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__1_i_3__1
       (.I0(count_reg[17]),
        .I1(count_reg[16]),
        .O(count1_carry__1_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__1_i_4__1
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .O(count1_carry__1_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__1_i_5__1
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .O(count1_carry__1_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_1__1
       (.I0(count_reg[5]),
        .I1(count_reg[4]),
        .O(count1_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_2__1
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(count1_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_3__1
       (.I0(count_reg[7]),
        .I1(count_reg[6]),
        .O(count1_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_4__1
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .O(count1_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_5__1
       (.I0(count_reg[3]),
        .I1(count_reg[2]),
        .O(count1_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_6__1
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(count1_carry_i_6__1_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    \count[0]_i_1__1 
       (.I0(ff2),
        .I1(ff1),
        .I2(s00_axi_aresetn),
        .O(\count[0]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[0]_i_2__1 
       (.I0(s00_axi_aresetn),
        .I1(count1_carry__1_n_1),
        .O(count0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_4__1 
       (.I0(count_reg[0]),
        .O(\count[0]_i_4__1_n_0 ));
  FDRE \count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[0]_i_3__1_n_7 ),
        .Q(count_reg[0]),
        .R(\count[0]_i_1__1_n_0 ));
  CARRY4 \count_reg[0]_i_3__1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_3__1_n_0 ,\count_reg[0]_i_3__1_n_1 ,\count_reg[0]_i_3__1_n_2 ,\count_reg[0]_i_3__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_3__1_n_4 ,\count_reg[0]_i_3__1_n_5 ,\count_reg[0]_i_3__1_n_6 ,\count_reg[0]_i_3__1_n_7 }),
        .S({count_reg[3:1],\count[0]_i_4__1_n_0 }));
  FDRE \count_reg[10] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[8]_i_1__1_n_5 ),
        .Q(count_reg[10]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE \count_reg[11] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[8]_i_1__1_n_4 ),
        .Q(count_reg[11]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE \count_reg[12] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[12]_i_1__1_n_7 ),
        .Q(count_reg[12]),
        .R(\count[0]_i_1__1_n_0 ));
  CARRY4 \count_reg[12]_i_1__1 
       (.CI(\count_reg[8]_i_1__1_n_0 ),
        .CO({\count_reg[12]_i_1__1_n_0 ,\count_reg[12]_i_1__1_n_1 ,\count_reg[12]_i_1__1_n_2 ,\count_reg[12]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1__1_n_4 ,\count_reg[12]_i_1__1_n_5 ,\count_reg[12]_i_1__1_n_6 ,\count_reg[12]_i_1__1_n_7 }),
        .S(count_reg[15:12]));
  FDRE \count_reg[13] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[12]_i_1__1_n_6 ),
        .Q(count_reg[13]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE \count_reg[14] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[12]_i_1__1_n_5 ),
        .Q(count_reg[14]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE \count_reg[15] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[12]_i_1__1_n_4 ),
        .Q(count_reg[15]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE \count_reg[16] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[16]_i_1__1_n_7 ),
        .Q(count_reg[16]),
        .R(\count[0]_i_1__1_n_0 ));
  CARRY4 \count_reg[16]_i_1__1 
       (.CI(\count_reg[12]_i_1__1_n_0 ),
        .CO({\count_reg[16]_i_1__1_n_0 ,\count_reg[16]_i_1__1_n_1 ,\count_reg[16]_i_1__1_n_2 ,\count_reg[16]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1__1_n_4 ,\count_reg[16]_i_1__1_n_5 ,\count_reg[16]_i_1__1_n_6 ,\count_reg[16]_i_1__1_n_7 }),
        .S(count_reg[19:16]));
  FDRE \count_reg[17] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[16]_i_1__1_n_6 ),
        .Q(count_reg[17]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE \count_reg[18] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[16]_i_1__1_n_5 ),
        .Q(count_reg[18]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE \count_reg[19] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[16]_i_1__1_n_4 ),
        .Q(count_reg[19]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE \count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[0]_i_3__1_n_6 ),
        .Q(count_reg[1]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE \count_reg[20] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[20]_i_1__1_n_7 ),
        .Q(count_reg[20]),
        .R(\count[0]_i_1__1_n_0 ));
  CARRY4 \count_reg[20]_i_1__1 
       (.CI(\count_reg[16]_i_1__1_n_0 ),
        .CO(\NLW_count_reg[20]_i_1__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[20]_i_1__1_O_UNCONNECTED [3:1],\count_reg[20]_i_1__1_n_7 }),
        .S({1'b0,1'b0,1'b0,count_reg[20]}));
  FDRE \count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[0]_i_3__1_n_5 ),
        .Q(count_reg[2]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE \count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[0]_i_3__1_n_4 ),
        .Q(count_reg[3]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE \count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[4]_i_1__1_n_7 ),
        .Q(count_reg[4]),
        .R(\count[0]_i_1__1_n_0 ));
  CARRY4 \count_reg[4]_i_1__1 
       (.CI(\count_reg[0]_i_3__1_n_0 ),
        .CO({\count_reg[4]_i_1__1_n_0 ,\count_reg[4]_i_1__1_n_1 ,\count_reg[4]_i_1__1_n_2 ,\count_reg[4]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1__1_n_4 ,\count_reg[4]_i_1__1_n_5 ,\count_reg[4]_i_1__1_n_6 ,\count_reg[4]_i_1__1_n_7 }),
        .S(count_reg[7:4]));
  FDRE \count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[4]_i_1__1_n_6 ),
        .Q(count_reg[5]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE \count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[4]_i_1__1_n_5 ),
        .Q(count_reg[6]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE \count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[4]_i_1__1_n_4 ),
        .Q(count_reg[7]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE \count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[8]_i_1__1_n_7 ),
        .Q(count_reg[8]),
        .R(\count[0]_i_1__1_n_0 ));
  CARRY4 \count_reg[8]_i_1__1 
       (.CI(\count_reg[4]_i_1__1_n_0 ),
        .CO({\count_reg[8]_i_1__1_n_0 ,\count_reg[8]_i_1__1_n_1 ,\count_reg[8]_i_1__1_n_2 ,\count_reg[8]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__1_n_4 ,\count_reg[8]_i_1__1_n_5 ,\count_reg[8]_i_1__1_n_6 ,\count_reg[8]_i_1__1_n_7 }),
        .S(count_reg[11:8]));
  FDRE \count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[8]_i_1__1_n_6 ),
        .Q(count_reg[9]),
        .R(\count[0]_i_1__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    ff1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(btn),
        .Q(ff1));
  FDCE #(
    .INIT(1'b0)) 
    ff2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(ff1),
        .Q(ff2));
endmodule

(* ORIG_REF_NAME = "btn_reader" *) 
module lab4_design_lab4_ip_0_6_btn_reader_1
   (left_btn,
    D,
    btn,
    s00_axi_aclk,
    rst,
    s00_axi_aresetn,
    O,
    \phase_sig_reg[15] ,
    \phase_sig_reg[15]_0 ,
    \phase_sig_reg[11] ,
    \phase_sig_reg[11]_0 ,
    \phase_sig_reg[7] ,
    \phase_sig_reg[7]_0 ,
    \phase_sig_reg[3] ,
    \phase_sig_reg[3]_0 );
  output left_btn;
  output [9:0]D;
  input [0:0]btn;
  input s00_axi_aclk;
  input rst;
  input s00_axi_aresetn;
  input [3:0]O;
  input [0:0]\phase_sig_reg[15] ;
  input [3:0]\phase_sig_reg[15]_0 ;
  input [2:0]\phase_sig_reg[11] ;
  input [2:0]\phase_sig_reg[11]_0 ;
  input [0:0]\phase_sig_reg[7] ;
  input [0:0]\phase_sig_reg[7]_0 ;
  input [1:0]\phase_sig_reg[3] ;
  input [1:0]\phase_sig_reg[3]_0 ;

  wire [9:0]D;
  wire [3:0]O;
  wire [0:0]btn;
  wire btn_current;
  wire btn_current_i_1__0_n_0;
  wire btn_old;
  wire btn_press_i_1__0_n_0;
  wire count0;
  wire count1_carry__0_i_1__0_n_0;
  wire count1_carry__0_i_2__0_n_0;
  wire count1_carry__0_i_3__0_n_0;
  wire count1_carry__0_i_4__0_n_0;
  wire count1_carry__0_i_5__0_n_0;
  wire count1_carry__0_i_6__0_n_0;
  wire count1_carry__0_n_0;
  wire count1_carry__0_n_1;
  wire count1_carry__0_n_2;
  wire count1_carry__0_n_3;
  wire count1_carry__1_i_1__0_n_0;
  wire count1_carry__1_i_2__0_n_0;
  wire count1_carry__1_i_3__0_n_0;
  wire count1_carry__1_i_4__0_n_0;
  wire count1_carry__1_i_5__0_n_0;
  wire count1_carry__1_n_1;
  wire count1_carry__1_n_2;
  wire count1_carry__1_n_3;
  wire count1_carry_i_1__0_n_0;
  wire count1_carry_i_2__0_n_0;
  wire count1_carry_i_3__0_n_0;
  wire count1_carry_i_4__0_n_0;
  wire count1_carry_i_5__0_n_0;
  wire count1_carry_i_6__0_n_0;
  wire count1_carry_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[0]_i_4__0_n_0 ;
  wire [20:0]count_reg;
  wire \count_reg[0]_i_3__0_n_0 ;
  wire \count_reg[0]_i_3__0_n_1 ;
  wire \count_reg[0]_i_3__0_n_2 ;
  wire \count_reg[0]_i_3__0_n_3 ;
  wire \count_reg[0]_i_3__0_n_4 ;
  wire \count_reg[0]_i_3__0_n_5 ;
  wire \count_reg[0]_i_3__0_n_6 ;
  wire \count_reg[0]_i_3__0_n_7 ;
  wire \count_reg[12]_i_1__0_n_0 ;
  wire \count_reg[12]_i_1__0_n_1 ;
  wire \count_reg[12]_i_1__0_n_2 ;
  wire \count_reg[12]_i_1__0_n_3 ;
  wire \count_reg[12]_i_1__0_n_4 ;
  wire \count_reg[12]_i_1__0_n_5 ;
  wire \count_reg[12]_i_1__0_n_6 ;
  wire \count_reg[12]_i_1__0_n_7 ;
  wire \count_reg[16]_i_1__0_n_0 ;
  wire \count_reg[16]_i_1__0_n_1 ;
  wire \count_reg[16]_i_1__0_n_2 ;
  wire \count_reg[16]_i_1__0_n_3 ;
  wire \count_reg[16]_i_1__0_n_4 ;
  wire \count_reg[16]_i_1__0_n_5 ;
  wire \count_reg[16]_i_1__0_n_6 ;
  wire \count_reg[16]_i_1__0_n_7 ;
  wire \count_reg[20]_i_1__0_n_7 ;
  wire \count_reg[4]_i_1__0_n_0 ;
  wire \count_reg[4]_i_1__0_n_1 ;
  wire \count_reg[4]_i_1__0_n_2 ;
  wire \count_reg[4]_i_1__0_n_3 ;
  wire \count_reg[4]_i_1__0_n_4 ;
  wire \count_reg[4]_i_1__0_n_5 ;
  wire \count_reg[4]_i_1__0_n_6 ;
  wire \count_reg[4]_i_1__0_n_7 ;
  wire \count_reg[8]_i_1__0_n_0 ;
  wire \count_reg[8]_i_1__0_n_1 ;
  wire \count_reg[8]_i_1__0_n_2 ;
  wire \count_reg[8]_i_1__0_n_3 ;
  wire \count_reg[8]_i_1__0_n_4 ;
  wire \count_reg[8]_i_1__0_n_5 ;
  wire \count_reg[8]_i_1__0_n_6 ;
  wire \count_reg[8]_i_1__0_n_7 ;
  wire ff1;
  wire ff2;
  wire left_btn;
  wire [2:0]\phase_sig_reg[11] ;
  wire [2:0]\phase_sig_reg[11]_0 ;
  wire [0:0]\phase_sig_reg[15] ;
  wire [3:0]\phase_sig_reg[15]_0 ;
  wire [1:0]\phase_sig_reg[3] ;
  wire [1:0]\phase_sig_reg[3]_0 ;
  wire [0:0]\phase_sig_reg[7] ;
  wire [0:0]\phase_sig_reg[7]_0 ;
  wire rst;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [3:0]NLW_count1_carry_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_count1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_count1_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_count_reg[20]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_count_reg[20]_i_1__0_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hFE40)) 
    btn_current_i_1__0
       (.I0(count1_carry__1_n_1),
        .I1(ff2),
        .I2(ff1),
        .I3(btn_current),
        .O(btn_current_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    btn_current_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(btn_current_i_1__0_n_0),
        .Q(btn_current));
  FDCE #(
    .INIT(1'b0)) 
    btn_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(btn_current),
        .Q(btn_old));
  LUT3 #(
    .INIT(8'h62)) 
    btn_press_i_1__0
       (.I0(btn_current),
        .I1(btn_old),
        .I2(left_btn),
        .O(btn_press_i_1__0_n_0));
  FDCE btn_press_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(btn_press_i_1__0_n_0),
        .Q(left_btn));
  CARRY4 count1_carry
       (.CI(1'b0),
        .CO({count1_carry_n_0,count1_carry_n_1,count1_carry_n_2,count1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,count1_carry_i_1__0_n_0,1'b0,count1_carry_i_2__0_n_0}),
        .O(NLW_count1_carry_O_UNCONNECTED[3:0]),
        .S({count1_carry_i_3__0_n_0,count1_carry_i_4__0_n_0,count1_carry_i_5__0_n_0,count1_carry_i_6__0_n_0}));
  CARRY4 count1_carry__0
       (.CI(count1_carry_n_0),
        .CO({count1_carry__0_n_0,count1_carry__0_n_1,count1_carry__0_n_2,count1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({count1_carry__0_i_1__0_n_0,1'b0,count1_carry__0_i_2__0_n_0,1'b0}),
        .O(NLW_count1_carry__0_O_UNCONNECTED[3:0]),
        .S({count1_carry__0_i_3__0_n_0,count1_carry__0_i_4__0_n_0,count1_carry__0_i_5__0_n_0,count1_carry__0_i_6__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    count1_carry__0_i_1__0
       (.I0(count_reg[15]),
        .O(count1_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_2__0
       (.I0(count_reg[11]),
        .I1(count_reg[10]),
        .O(count1_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__0_i_3__0
       (.I0(count_reg[15]),
        .I1(count_reg[14]),
        .O(count1_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_4__0
       (.I0(count_reg[13]),
        .I1(count_reg[12]),
        .O(count1_carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__0_i_5__0
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .O(count1_carry__0_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_6__0
       (.I0(count_reg[9]),
        .I1(count_reg[8]),
        .O(count1_carry__0_i_6__0_n_0));
  CARRY4 count1_carry__1
       (.CI(count1_carry__0_n_0),
        .CO({NLW_count1_carry__1_CO_UNCONNECTED[3],count1_carry__1_n_1,count1_carry__1_n_2,count1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,count1_carry__1_i_1__0_n_0,count1_carry__1_i_2__0_n_0,count1_carry__1_i_3__0_n_0}),
        .O(NLW_count1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,count_reg[20],count1_carry__1_i_4__0_n_0,count1_carry__1_i_5__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    count1_carry__1_i_1__0
       (.I0(count_reg[20]),
        .O(count1_carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__1_i_2__0
       (.I0(count_reg[19]),
        .I1(count_reg[18]),
        .O(count1_carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__1_i_3__0
       (.I0(count_reg[17]),
        .I1(count_reg[16]),
        .O(count1_carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__1_i_4__0
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .O(count1_carry__1_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__1_i_5__0
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .O(count1_carry__1_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_1__0
       (.I0(count_reg[5]),
        .I1(count_reg[4]),
        .O(count1_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_2__0
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(count1_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_3__0
       (.I0(count_reg[7]),
        .I1(count_reg[6]),
        .O(count1_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_4__0
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .O(count1_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_5__0
       (.I0(count_reg[3]),
        .I1(count_reg[2]),
        .O(count1_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_6__0
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(count1_carry_i_6__0_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    \count[0]_i_1__0 
       (.I0(ff2),
        .I1(ff1),
        .I2(s00_axi_aresetn),
        .O(\count[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[0]_i_2__0 
       (.I0(s00_axi_aresetn),
        .I1(count1_carry__1_n_1),
        .O(count0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_4__0 
       (.I0(count_reg[0]),
        .O(\count[0]_i_4__0_n_0 ));
  FDRE \count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[0]_i_3__0_n_7 ),
        .Q(count_reg[0]),
        .R(\count[0]_i_1__0_n_0 ));
  CARRY4 \count_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_3__0_n_0 ,\count_reg[0]_i_3__0_n_1 ,\count_reg[0]_i_3__0_n_2 ,\count_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_3__0_n_4 ,\count_reg[0]_i_3__0_n_5 ,\count_reg[0]_i_3__0_n_6 ,\count_reg[0]_i_3__0_n_7 }),
        .S({count_reg[3:1],\count[0]_i_4__0_n_0 }));
  FDRE \count_reg[10] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[8]_i_1__0_n_5 ),
        .Q(count_reg[10]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE \count_reg[11] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[8]_i_1__0_n_4 ),
        .Q(count_reg[11]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE \count_reg[12] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[12]_i_1__0_n_7 ),
        .Q(count_reg[12]),
        .R(\count[0]_i_1__0_n_0 ));
  CARRY4 \count_reg[12]_i_1__0 
       (.CI(\count_reg[8]_i_1__0_n_0 ),
        .CO({\count_reg[12]_i_1__0_n_0 ,\count_reg[12]_i_1__0_n_1 ,\count_reg[12]_i_1__0_n_2 ,\count_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1__0_n_4 ,\count_reg[12]_i_1__0_n_5 ,\count_reg[12]_i_1__0_n_6 ,\count_reg[12]_i_1__0_n_7 }),
        .S(count_reg[15:12]));
  FDRE \count_reg[13] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[12]_i_1__0_n_6 ),
        .Q(count_reg[13]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE \count_reg[14] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[12]_i_1__0_n_5 ),
        .Q(count_reg[14]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE \count_reg[15] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[12]_i_1__0_n_4 ),
        .Q(count_reg[15]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE \count_reg[16] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[16]_i_1__0_n_7 ),
        .Q(count_reg[16]),
        .R(\count[0]_i_1__0_n_0 ));
  CARRY4 \count_reg[16]_i_1__0 
       (.CI(\count_reg[12]_i_1__0_n_0 ),
        .CO({\count_reg[16]_i_1__0_n_0 ,\count_reg[16]_i_1__0_n_1 ,\count_reg[16]_i_1__0_n_2 ,\count_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1__0_n_4 ,\count_reg[16]_i_1__0_n_5 ,\count_reg[16]_i_1__0_n_6 ,\count_reg[16]_i_1__0_n_7 }),
        .S(count_reg[19:16]));
  FDRE \count_reg[17] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[16]_i_1__0_n_6 ),
        .Q(count_reg[17]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE \count_reg[18] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[16]_i_1__0_n_5 ),
        .Q(count_reg[18]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE \count_reg[19] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[16]_i_1__0_n_4 ),
        .Q(count_reg[19]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE \count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[0]_i_3__0_n_6 ),
        .Q(count_reg[1]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE \count_reg[20] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[20]_i_1__0_n_7 ),
        .Q(count_reg[20]),
        .R(\count[0]_i_1__0_n_0 ));
  CARRY4 \count_reg[20]_i_1__0 
       (.CI(\count_reg[16]_i_1__0_n_0 ),
        .CO(\NLW_count_reg[20]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[20]_i_1__0_O_UNCONNECTED [3:1],\count_reg[20]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,count_reg[20]}));
  FDRE \count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[0]_i_3__0_n_5 ),
        .Q(count_reg[2]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE \count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[0]_i_3__0_n_4 ),
        .Q(count_reg[3]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE \count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[4]_i_1__0_n_7 ),
        .Q(count_reg[4]),
        .R(\count[0]_i_1__0_n_0 ));
  CARRY4 \count_reg[4]_i_1__0 
       (.CI(\count_reg[0]_i_3__0_n_0 ),
        .CO({\count_reg[4]_i_1__0_n_0 ,\count_reg[4]_i_1__0_n_1 ,\count_reg[4]_i_1__0_n_2 ,\count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1__0_n_4 ,\count_reg[4]_i_1__0_n_5 ,\count_reg[4]_i_1__0_n_6 ,\count_reg[4]_i_1__0_n_7 }),
        .S(count_reg[7:4]));
  FDRE \count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[4]_i_1__0_n_6 ),
        .Q(count_reg[5]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE \count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[4]_i_1__0_n_5 ),
        .Q(count_reg[6]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE \count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[4]_i_1__0_n_4 ),
        .Q(count_reg[7]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE \count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[8]_i_1__0_n_7 ),
        .Q(count_reg[8]),
        .R(\count[0]_i_1__0_n_0 ));
  CARRY4 \count_reg[8]_i_1__0 
       (.CI(\count_reg[4]_i_1__0_n_0 ),
        .CO({\count_reg[8]_i_1__0_n_0 ,\count_reg[8]_i_1__0_n_1 ,\count_reg[8]_i_1__0_n_2 ,\count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__0_n_4 ,\count_reg[8]_i_1__0_n_5 ,\count_reg[8]_i_1__0_n_6 ,\count_reg[8]_i_1__0_n_7 }),
        .S(count_reg[11:8]));
  FDRE \count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[8]_i_1__0_n_6 ),
        .Q(count_reg[9]),
        .R(\count[0]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    ff1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(btn),
        .Q(ff1));
  FDCE #(
    .INIT(1'b0)) 
    ff2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(ff1),
        .Q(ff2));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \phase_sig[10]_i_1 
       (.I0(\phase_sig_reg[11] [1]),
        .I1(left_btn),
        .I2(\phase_sig_reg[15] ),
        .I3(\phase_sig_reg[11]_0 [1]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \phase_sig[11]_i_1 
       (.I0(\phase_sig_reg[11] [2]),
        .I1(left_btn),
        .I2(\phase_sig_reg[15] ),
        .I3(\phase_sig_reg[11]_0 [2]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \phase_sig[12]_i_1 
       (.I0(O[0]),
        .I1(left_btn),
        .I2(\phase_sig_reg[15] ),
        .I3(\phase_sig_reg[15]_0 [0]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \phase_sig[13]_i_1 
       (.I0(O[1]),
        .I1(left_btn),
        .I2(\phase_sig_reg[15] ),
        .I3(\phase_sig_reg[15]_0 [1]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \phase_sig[14]_i_1 
       (.I0(O[2]),
        .I1(left_btn),
        .I2(\phase_sig_reg[15] ),
        .I3(\phase_sig_reg[15]_0 [2]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \phase_sig[15]_i_3 
       (.I0(O[3]),
        .I1(left_btn),
        .I2(\phase_sig_reg[15] ),
        .I3(\phase_sig_reg[15]_0 [3]),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \phase_sig[1]_i_1 
       (.I0(\phase_sig_reg[3] [0]),
        .I1(left_btn),
        .I2(\phase_sig_reg[15] ),
        .I3(\phase_sig_reg[3]_0 [0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \phase_sig[3]_i_1 
       (.I0(\phase_sig_reg[3] [1]),
        .I1(left_btn),
        .I2(\phase_sig_reg[15] ),
        .I3(\phase_sig_reg[3]_0 [1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \phase_sig[7]_i_1 
       (.I0(\phase_sig_reg[7] ),
        .I1(left_btn),
        .I2(\phase_sig_reg[15] ),
        .I3(\phase_sig_reg[7]_0 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \phase_sig[8]_i_1 
       (.I0(\phase_sig_reg[11] [0]),
        .I1(left_btn),
        .I2(\phase_sig_reg[15] ),
        .I3(\phase_sig_reg[11]_0 [0]),
        .O(D[3]));
endmodule

(* ORIG_REF_NAME = "btn_reader" *) 
module lab4_design_lab4_ip_0_6_btn_reader_2
   (right_btn,
    ampl_sig,
    btn,
    s00_axi_aclk,
    rst,
    s00_axi_aresetn,
    \ampl_sig_reg[15] ,
    O,
    \ampl_sig_reg[15]_0 ,
    \ampl_sig_reg[15]_1 );
  output right_btn;
  output ampl_sig;
  input [0:0]btn;
  input s00_axi_aclk;
  input rst;
  input s00_axi_aresetn;
  input \ampl_sig_reg[15] ;
  input [1:0]O;
  input \ampl_sig_reg[15]_0 ;
  input \ampl_sig_reg[15]_1 ;

  wire [1:0]O;
  wire ampl_sig;
  wire \ampl_sig_reg[15] ;
  wire \ampl_sig_reg[15]_0 ;
  wire \ampl_sig_reg[15]_1 ;
  wire [0:0]btn;
  wire btn_current;
  wire btn_current_i_1__2_n_0;
  wire btn_old;
  wire btn_press_i_1__2_n_0;
  wire count0;
  wire count1_carry__0_i_1__2_n_0;
  wire count1_carry__0_i_2__2_n_0;
  wire count1_carry__0_i_3__2_n_0;
  wire count1_carry__0_i_4__2_n_0;
  wire count1_carry__0_i_5__2_n_0;
  wire count1_carry__0_i_6__2_n_0;
  wire count1_carry__0_n_0;
  wire count1_carry__0_n_1;
  wire count1_carry__0_n_2;
  wire count1_carry__0_n_3;
  wire count1_carry__1_i_1__2_n_0;
  wire count1_carry__1_i_2__2_n_0;
  wire count1_carry__1_i_3__2_n_0;
  wire count1_carry__1_i_4__2_n_0;
  wire count1_carry__1_i_5__2_n_0;
  wire count1_carry__1_n_1;
  wire count1_carry__1_n_2;
  wire count1_carry__1_n_3;
  wire count1_carry_i_1__2_n_0;
  wire count1_carry_i_2__2_n_0;
  wire count1_carry_i_3__2_n_0;
  wire count1_carry_i_4__2_n_0;
  wire count1_carry_i_5__2_n_0;
  wire count1_carry_i_6__2_n_0;
  wire count1_carry_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire \count[0]_i_1__2_n_0 ;
  wire \count[0]_i_4__2_n_0 ;
  wire [20:0]count_reg;
  wire \count_reg[0]_i_3__2_n_0 ;
  wire \count_reg[0]_i_3__2_n_1 ;
  wire \count_reg[0]_i_3__2_n_2 ;
  wire \count_reg[0]_i_3__2_n_3 ;
  wire \count_reg[0]_i_3__2_n_4 ;
  wire \count_reg[0]_i_3__2_n_5 ;
  wire \count_reg[0]_i_3__2_n_6 ;
  wire \count_reg[0]_i_3__2_n_7 ;
  wire \count_reg[12]_i_1__2_n_0 ;
  wire \count_reg[12]_i_1__2_n_1 ;
  wire \count_reg[12]_i_1__2_n_2 ;
  wire \count_reg[12]_i_1__2_n_3 ;
  wire \count_reg[12]_i_1__2_n_4 ;
  wire \count_reg[12]_i_1__2_n_5 ;
  wire \count_reg[12]_i_1__2_n_6 ;
  wire \count_reg[12]_i_1__2_n_7 ;
  wire \count_reg[16]_i_1__2_n_0 ;
  wire \count_reg[16]_i_1__2_n_1 ;
  wire \count_reg[16]_i_1__2_n_2 ;
  wire \count_reg[16]_i_1__2_n_3 ;
  wire \count_reg[16]_i_1__2_n_4 ;
  wire \count_reg[16]_i_1__2_n_5 ;
  wire \count_reg[16]_i_1__2_n_6 ;
  wire \count_reg[16]_i_1__2_n_7 ;
  wire \count_reg[20]_i_1__2_n_7 ;
  wire \count_reg[4]_i_1__2_n_0 ;
  wire \count_reg[4]_i_1__2_n_1 ;
  wire \count_reg[4]_i_1__2_n_2 ;
  wire \count_reg[4]_i_1__2_n_3 ;
  wire \count_reg[4]_i_1__2_n_4 ;
  wire \count_reg[4]_i_1__2_n_5 ;
  wire \count_reg[4]_i_1__2_n_6 ;
  wire \count_reg[4]_i_1__2_n_7 ;
  wire \count_reg[8]_i_1__2_n_0 ;
  wire \count_reg[8]_i_1__2_n_1 ;
  wire \count_reg[8]_i_1__2_n_2 ;
  wire \count_reg[8]_i_1__2_n_3 ;
  wire \count_reg[8]_i_1__2_n_4 ;
  wire \count_reg[8]_i_1__2_n_5 ;
  wire \count_reg[8]_i_1__2_n_6 ;
  wire \count_reg[8]_i_1__2_n_7 ;
  wire ff1;
  wire ff2;
  wire right_btn;
  wire rst;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [3:0]NLW_count1_carry_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_count1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_count1_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_count_reg[20]_i_1__2_CO_UNCONNECTED ;
  wire [3:1]\NLW_count_reg[20]_i_1__2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00000000FF0EFFFF)) 
    \ampl_sig[0]_i_1 
       (.I0(\ampl_sig_reg[15] ),
        .I1(O[0]),
        .I2(\ampl_sig_reg[15]_0 ),
        .I3(O[1]),
        .I4(right_btn),
        .I5(\ampl_sig_reg[15]_1 ),
        .O(ampl_sig));
  LUT4 #(
    .INIT(16'hFE40)) 
    btn_current_i_1__2
       (.I0(count1_carry__1_n_1),
        .I1(ff2),
        .I2(ff1),
        .I3(btn_current),
        .O(btn_current_i_1__2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    btn_current_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(btn_current_i_1__2_n_0),
        .Q(btn_current));
  FDCE #(
    .INIT(1'b0)) 
    btn_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(btn_current),
        .Q(btn_old));
  LUT3 #(
    .INIT(8'h62)) 
    btn_press_i_1__2
       (.I0(btn_current),
        .I1(btn_old),
        .I2(right_btn),
        .O(btn_press_i_1__2_n_0));
  FDCE btn_press_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(btn_press_i_1__2_n_0),
        .Q(right_btn));
  CARRY4 count1_carry
       (.CI(1'b0),
        .CO({count1_carry_n_0,count1_carry_n_1,count1_carry_n_2,count1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,count1_carry_i_1__2_n_0,1'b0,count1_carry_i_2__2_n_0}),
        .O(NLW_count1_carry_O_UNCONNECTED[3:0]),
        .S({count1_carry_i_3__2_n_0,count1_carry_i_4__2_n_0,count1_carry_i_5__2_n_0,count1_carry_i_6__2_n_0}));
  CARRY4 count1_carry__0
       (.CI(count1_carry_n_0),
        .CO({count1_carry__0_n_0,count1_carry__0_n_1,count1_carry__0_n_2,count1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({count1_carry__0_i_1__2_n_0,1'b0,count1_carry__0_i_2__2_n_0,1'b0}),
        .O(NLW_count1_carry__0_O_UNCONNECTED[3:0]),
        .S({count1_carry__0_i_3__2_n_0,count1_carry__0_i_4__2_n_0,count1_carry__0_i_5__2_n_0,count1_carry__0_i_6__2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    count1_carry__0_i_1__2
       (.I0(count_reg[15]),
        .O(count1_carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_2__2
       (.I0(count_reg[11]),
        .I1(count_reg[10]),
        .O(count1_carry__0_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__0_i_3__2
       (.I0(count_reg[15]),
        .I1(count_reg[14]),
        .O(count1_carry__0_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_4__2
       (.I0(count_reg[13]),
        .I1(count_reg[12]),
        .O(count1_carry__0_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__0_i_5__2
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .O(count1_carry__0_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_6__2
       (.I0(count_reg[9]),
        .I1(count_reg[8]),
        .O(count1_carry__0_i_6__2_n_0));
  CARRY4 count1_carry__1
       (.CI(count1_carry__0_n_0),
        .CO({NLW_count1_carry__1_CO_UNCONNECTED[3],count1_carry__1_n_1,count1_carry__1_n_2,count1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,count1_carry__1_i_1__2_n_0,count1_carry__1_i_2__2_n_0,count1_carry__1_i_3__2_n_0}),
        .O(NLW_count1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,count_reg[20],count1_carry__1_i_4__2_n_0,count1_carry__1_i_5__2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    count1_carry__1_i_1__2
       (.I0(count_reg[20]),
        .O(count1_carry__1_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__1_i_2__2
       (.I0(count_reg[19]),
        .I1(count_reg[18]),
        .O(count1_carry__1_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__1_i_3__2
       (.I0(count_reg[17]),
        .I1(count_reg[16]),
        .O(count1_carry__1_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__1_i_4__2
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .O(count1_carry__1_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__1_i_5__2
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .O(count1_carry__1_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_1__2
       (.I0(count_reg[5]),
        .I1(count_reg[4]),
        .O(count1_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_2__2
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(count1_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_3__2
       (.I0(count_reg[7]),
        .I1(count_reg[6]),
        .O(count1_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_4__2
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .O(count1_carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_5__2
       (.I0(count_reg[3]),
        .I1(count_reg[2]),
        .O(count1_carry_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_6__2
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(count1_carry_i_6__2_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    \count[0]_i_1__2 
       (.I0(ff2),
        .I1(ff1),
        .I2(s00_axi_aresetn),
        .O(\count[0]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[0]_i_2__2 
       (.I0(s00_axi_aresetn),
        .I1(count1_carry__1_n_1),
        .O(count0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_4__2 
       (.I0(count_reg[0]),
        .O(\count[0]_i_4__2_n_0 ));
  FDRE \count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[0]_i_3__2_n_7 ),
        .Q(count_reg[0]),
        .R(\count[0]_i_1__2_n_0 ));
  CARRY4 \count_reg[0]_i_3__2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_3__2_n_0 ,\count_reg[0]_i_3__2_n_1 ,\count_reg[0]_i_3__2_n_2 ,\count_reg[0]_i_3__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_3__2_n_4 ,\count_reg[0]_i_3__2_n_5 ,\count_reg[0]_i_3__2_n_6 ,\count_reg[0]_i_3__2_n_7 }),
        .S({count_reg[3:1],\count[0]_i_4__2_n_0 }));
  FDRE \count_reg[10] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[8]_i_1__2_n_5 ),
        .Q(count_reg[10]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE \count_reg[11] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[8]_i_1__2_n_4 ),
        .Q(count_reg[11]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE \count_reg[12] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[12]_i_1__2_n_7 ),
        .Q(count_reg[12]),
        .R(\count[0]_i_1__2_n_0 ));
  CARRY4 \count_reg[12]_i_1__2 
       (.CI(\count_reg[8]_i_1__2_n_0 ),
        .CO({\count_reg[12]_i_1__2_n_0 ,\count_reg[12]_i_1__2_n_1 ,\count_reg[12]_i_1__2_n_2 ,\count_reg[12]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1__2_n_4 ,\count_reg[12]_i_1__2_n_5 ,\count_reg[12]_i_1__2_n_6 ,\count_reg[12]_i_1__2_n_7 }),
        .S(count_reg[15:12]));
  FDRE \count_reg[13] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[12]_i_1__2_n_6 ),
        .Q(count_reg[13]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE \count_reg[14] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[12]_i_1__2_n_5 ),
        .Q(count_reg[14]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE \count_reg[15] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[12]_i_1__2_n_4 ),
        .Q(count_reg[15]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE \count_reg[16] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[16]_i_1__2_n_7 ),
        .Q(count_reg[16]),
        .R(\count[0]_i_1__2_n_0 ));
  CARRY4 \count_reg[16]_i_1__2 
       (.CI(\count_reg[12]_i_1__2_n_0 ),
        .CO({\count_reg[16]_i_1__2_n_0 ,\count_reg[16]_i_1__2_n_1 ,\count_reg[16]_i_1__2_n_2 ,\count_reg[16]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1__2_n_4 ,\count_reg[16]_i_1__2_n_5 ,\count_reg[16]_i_1__2_n_6 ,\count_reg[16]_i_1__2_n_7 }),
        .S(count_reg[19:16]));
  FDRE \count_reg[17] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[16]_i_1__2_n_6 ),
        .Q(count_reg[17]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE \count_reg[18] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[16]_i_1__2_n_5 ),
        .Q(count_reg[18]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE \count_reg[19] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[16]_i_1__2_n_4 ),
        .Q(count_reg[19]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE \count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[0]_i_3__2_n_6 ),
        .Q(count_reg[1]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE \count_reg[20] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[20]_i_1__2_n_7 ),
        .Q(count_reg[20]),
        .R(\count[0]_i_1__2_n_0 ));
  CARRY4 \count_reg[20]_i_1__2 
       (.CI(\count_reg[16]_i_1__2_n_0 ),
        .CO(\NLW_count_reg[20]_i_1__2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[20]_i_1__2_O_UNCONNECTED [3:1],\count_reg[20]_i_1__2_n_7 }),
        .S({1'b0,1'b0,1'b0,count_reg[20]}));
  FDRE \count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[0]_i_3__2_n_5 ),
        .Q(count_reg[2]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE \count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[0]_i_3__2_n_4 ),
        .Q(count_reg[3]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE \count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[4]_i_1__2_n_7 ),
        .Q(count_reg[4]),
        .R(\count[0]_i_1__2_n_0 ));
  CARRY4 \count_reg[4]_i_1__2 
       (.CI(\count_reg[0]_i_3__2_n_0 ),
        .CO({\count_reg[4]_i_1__2_n_0 ,\count_reg[4]_i_1__2_n_1 ,\count_reg[4]_i_1__2_n_2 ,\count_reg[4]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1__2_n_4 ,\count_reg[4]_i_1__2_n_5 ,\count_reg[4]_i_1__2_n_6 ,\count_reg[4]_i_1__2_n_7 }),
        .S(count_reg[7:4]));
  FDRE \count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[4]_i_1__2_n_6 ),
        .Q(count_reg[5]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE \count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[4]_i_1__2_n_5 ),
        .Q(count_reg[6]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE \count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[4]_i_1__2_n_4 ),
        .Q(count_reg[7]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE \count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[8]_i_1__2_n_7 ),
        .Q(count_reg[8]),
        .R(\count[0]_i_1__2_n_0 ));
  CARRY4 \count_reg[8]_i_1__2 
       (.CI(\count_reg[4]_i_1__2_n_0 ),
        .CO({\count_reg[8]_i_1__2_n_0 ,\count_reg[8]_i_1__2_n_1 ,\count_reg[8]_i_1__2_n_2 ,\count_reg[8]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__2_n_4 ,\count_reg[8]_i_1__2_n_5 ,\count_reg[8]_i_1__2_n_6 ,\count_reg[8]_i_1__2_n_7 }),
        .S(count_reg[11:8]));
  FDRE \count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[8]_i_1__2_n_6 ),
        .Q(count_reg[9]),
        .R(\count[0]_i_1__2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    ff1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(btn),
        .Q(ff1));
  FDCE #(
    .INIT(1'b0)) 
    ff2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(ff1),
        .Q(ff2));
endmodule

(* ORIG_REF_NAME = "btn_reader" *) 
module lab4_design_lab4_ip_0_6_btn_reader_3
   (up_btn,
    btn,
    s00_axi_aclk,
    rst,
    s00_axi_aresetn);
  output up_btn;
  input [0:0]btn;
  input s00_axi_aclk;
  input rst;
  input s00_axi_aresetn;

  wire [0:0]btn;
  wire btn_current;
  wire btn_current_i_1_n_0;
  wire btn_old;
  wire btn_press_i_1_n_0;
  wire count0;
  wire count1_carry__0_i_1_n_0;
  wire count1_carry__0_i_2_n_0;
  wire count1_carry__0_i_3_n_0;
  wire count1_carry__0_i_4_n_0;
  wire count1_carry__0_i_5_n_0;
  wire count1_carry__0_i_6_n_0;
  wire count1_carry__0_n_0;
  wire count1_carry__0_n_1;
  wire count1_carry__0_n_2;
  wire count1_carry__0_n_3;
  wire count1_carry__1_i_1_n_0;
  wire count1_carry__1_i_2_n_0;
  wire count1_carry__1_i_3_n_0;
  wire count1_carry__1_i_4_n_0;
  wire count1_carry__1_i_5_n_0;
  wire count1_carry__1_n_1;
  wire count1_carry__1_n_2;
  wire count1_carry__1_n_3;
  wire count1_carry_i_1_n_0;
  wire count1_carry_i_2_n_0;
  wire count1_carry_i_3_n_0;
  wire count1_carry_i_4_n_0;
  wire count1_carry_i_5_n_0;
  wire count1_carry_i_6_n_0;
  wire count1_carry_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire \count[0]_i_1_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire [20:0]count_reg;
  wire \count_reg[0]_i_3_n_0 ;
  wire \count_reg[0]_i_3_n_1 ;
  wire \count_reg[0]_i_3_n_2 ;
  wire \count_reg[0]_i_3_n_3 ;
  wire \count_reg[0]_i_3_n_4 ;
  wire \count_reg[0]_i_3_n_5 ;
  wire \count_reg[0]_i_3_n_6 ;
  wire \count_reg[0]_i_3_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire ff1;
  wire ff2;
  wire rst;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire up_btn;
  wire [3:0]NLW_count1_carry_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_count1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_count1_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_count_reg[20]_i_1_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hFE40)) 
    btn_current_i_1
       (.I0(count1_carry__1_n_1),
        .I1(ff2),
        .I2(ff1),
        .I3(btn_current),
        .O(btn_current_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    btn_current_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(btn_current_i_1_n_0),
        .Q(btn_current));
  FDCE #(
    .INIT(1'b0)) 
    btn_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(btn_current),
        .Q(btn_old));
  LUT3 #(
    .INIT(8'h62)) 
    btn_press_i_1
       (.I0(btn_current),
        .I1(btn_old),
        .I2(up_btn),
        .O(btn_press_i_1_n_0));
  FDCE btn_press_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(btn_press_i_1_n_0),
        .Q(up_btn));
  CARRY4 count1_carry
       (.CI(1'b0),
        .CO({count1_carry_n_0,count1_carry_n_1,count1_carry_n_2,count1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,count1_carry_i_1_n_0,1'b0,count1_carry_i_2_n_0}),
        .O(NLW_count1_carry_O_UNCONNECTED[3:0]),
        .S({count1_carry_i_3_n_0,count1_carry_i_4_n_0,count1_carry_i_5_n_0,count1_carry_i_6_n_0}));
  CARRY4 count1_carry__0
       (.CI(count1_carry_n_0),
        .CO({count1_carry__0_n_0,count1_carry__0_n_1,count1_carry__0_n_2,count1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({count1_carry__0_i_1_n_0,1'b0,count1_carry__0_i_2_n_0,1'b0}),
        .O(NLW_count1_carry__0_O_UNCONNECTED[3:0]),
        .S({count1_carry__0_i_3_n_0,count1_carry__0_i_4_n_0,count1_carry__0_i_5_n_0,count1_carry__0_i_6_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    count1_carry__0_i_1
       (.I0(count_reg[15]),
        .O(count1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_2
       (.I0(count_reg[11]),
        .I1(count_reg[10]),
        .O(count1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__0_i_3
       (.I0(count_reg[15]),
        .I1(count_reg[14]),
        .O(count1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_4
       (.I0(count_reg[13]),
        .I1(count_reg[12]),
        .O(count1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__0_i_5
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .O(count1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_6
       (.I0(count_reg[9]),
        .I1(count_reg[8]),
        .O(count1_carry__0_i_6_n_0));
  CARRY4 count1_carry__1
       (.CI(count1_carry__0_n_0),
        .CO({NLW_count1_carry__1_CO_UNCONNECTED[3],count1_carry__1_n_1,count1_carry__1_n_2,count1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,count1_carry__1_i_1_n_0,count1_carry__1_i_2_n_0,count1_carry__1_i_3_n_0}),
        .O(NLW_count1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,count_reg[20],count1_carry__1_i_4_n_0,count1_carry__1_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    count1_carry__1_i_1
       (.I0(count_reg[20]),
        .O(count1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__1_i_2
       (.I0(count_reg[19]),
        .I1(count_reg[18]),
        .O(count1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__1_i_3
       (.I0(count_reg[17]),
        .I1(count_reg[16]),
        .O(count1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__1_i_4
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .O(count1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__1_i_5
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .O(count1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_1
       (.I0(count_reg[5]),
        .I1(count_reg[4]),
        .O(count1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_2
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(count1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_3
       (.I0(count_reg[7]),
        .I1(count_reg[6]),
        .O(count1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_4
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .O(count1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry_i_5
       (.I0(count_reg[3]),
        .I1(count_reg[2]),
        .O(count1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry_i_6
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(count1_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    \count[0]_i_1 
       (.I0(ff2),
        .I1(ff1),
        .I2(s00_axi_aresetn),
        .O(\count[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[0]_i_2 
       (.I0(s00_axi_aresetn),
        .I1(count1_carry__1_n_1),
        .O(count0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_4 
       (.I0(count_reg[0]),
        .O(\count[0]_i_4_n_0 ));
  FDRE \count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[0]_i_3_n_7 ),
        .Q(count_reg[0]),
        .R(\count[0]_i_1_n_0 ));
  CARRY4 \count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_3_n_0 ,\count_reg[0]_i_3_n_1 ,\count_reg[0]_i_3_n_2 ,\count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_3_n_4 ,\count_reg[0]_i_3_n_5 ,\count_reg[0]_i_3_n_6 ,\count_reg[0]_i_3_n_7 }),
        .S({count_reg[3:1],\count[0]_i_4_n_0 }));
  FDRE \count_reg[10] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[11] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[12] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(\count[0]_i_1_n_0 ));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  FDRE \count_reg[13] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[14] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[15] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[16] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(\count[0]_i_1_n_0 ));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(count_reg[19:16]));
  FDRE \count_reg[17] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[18] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[19] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[0]_i_3_n_6 ),
        .Q(count_reg[1]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[20] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(\count[0]_i_1_n_0 ));
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO(\NLW_count_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[20]_i_1_O_UNCONNECTED [3:1],\count_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,count_reg[20]}));
  FDRE \count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[0]_i_3_n_5 ),
        .Q(count_reg[2]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[0]_i_3_n_4 ),
        .Q(count_reg[3]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(\count[0]_i_1_n_0 ));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_3_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE \count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(\count[0]_i_1_n_0 ));
  FDRE \count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(\count[0]_i_1_n_0 ));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE \count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(count0),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(\count[0]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    ff1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(btn),
        .Q(ff1));
  FDCE #(
    .INIT(1'b0)) 
    ff2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(rst),
        .D(ff1),
        .Q(ff2));
endmodule

(* ORIG_REF_NAME = "i2s_ctl" *) 
module lab4_design_lab4_ip_0_6_i2s_ctl
   (BCLK_int_reg_0,
    LRCLK_reg_0,
    s00_axi_aresetn_0,
    ready_sig_reg,
    s00_axi_aresetn_1,
    s00_axi_aresetn_2,
    s00_axi_aresetn_3,
    ac_dac_sdata,
    rst,
    s00_axi_aclk,
    s00_axi_aresetn,
    \ac_lrclk_count_reg[2] ,
    sw,
    ac_lrclk_count__0,
    CO,
    O,
    \Data_Out_int_reg[22]_0 ,
    \Data_Out_int_reg[26]_0 ,
    \Data_Out_int_reg[30]_0 );
  output BCLK_int_reg_0;
  output LRCLK_reg_0;
  output s00_axi_aresetn_0;
  output ready_sig_reg;
  output s00_axi_aresetn_1;
  output s00_axi_aresetn_2;
  output s00_axi_aresetn_3;
  output ac_dac_sdata;
  input rst;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input \ac_lrclk_count_reg[2] ;
  input sw;
  input [2:0]ac_lrclk_count__0;
  input [0:0]CO;
  input [2:0]O;
  input [3:0]\Data_Out_int_reg[22]_0 ;
  input [3:0]\Data_Out_int_reg[26]_0 ;
  input [3:0]\Data_Out_int_reg[30]_0 ;

  wire BCLK_Fall_int;
  wire BCLK_int_i_2_n_0;
  wire BCLK_int_reg_0;
  wire [0:0]CO;
  wire Cnt_Bclk0;
  wire \Cnt_Bclk0_inferred__0/i__carry_n_3 ;
  wire \Cnt_Bclk[4]_i_1_n_0 ;
  wire [4:0]Cnt_Bclk_reg;
  wire [4:0]Cnt_Lrclk;
  wire \Cnt_Lrclk[0]_i_1_n_0 ;
  wire \Cnt_Lrclk[1]_i_1_n_0 ;
  wire \Cnt_Lrclk[2]_i_1_n_0 ;
  wire \Cnt_Lrclk[3]_i_1_n_0 ;
  wire \Cnt_Lrclk[4]_i_2_n_0 ;
  wire \Data_Out_int[15]_i_1_n_0 ;
  wire \Data_Out_int[16]_i_1_n_0 ;
  wire \Data_Out_int[17]_i_1_n_0 ;
  wire \Data_Out_int[18]_i_1_n_0 ;
  wire \Data_Out_int[19]_i_1_n_0 ;
  wire \Data_Out_int[20]_i_1_n_0 ;
  wire \Data_Out_int[21]_i_1_n_0 ;
  wire \Data_Out_int[22]_i_1_n_0 ;
  wire \Data_Out_int[23]_i_1_n_0 ;
  wire \Data_Out_int[24]_i_1_n_0 ;
  wire \Data_Out_int[25]_i_1_n_0 ;
  wire \Data_Out_int[26]_i_1_n_0 ;
  wire \Data_Out_int[27]_i_1_n_0 ;
  wire \Data_Out_int[28]_i_1_n_0 ;
  wire \Data_Out_int[29]_i_1_n_0 ;
  wire \Data_Out_int[30]_i_1_n_0 ;
  wire \Data_Out_int[31]_i_1_n_0 ;
  wire \Data_Out_int[31]_i_2_n_0 ;
  wire \Data_Out_int[31]_i_3_n_0 ;
  wire [3:0]\Data_Out_int_reg[22]_0 ;
  wire [3:0]\Data_Out_int_reg[26]_0 ;
  wire [3:0]\Data_Out_int_reg[30]_0 ;
  wire \Data_Out_int_reg_n_0_[15] ;
  wire \Data_Out_int_reg_n_0_[16] ;
  wire \Data_Out_int_reg_n_0_[17] ;
  wire \Data_Out_int_reg_n_0_[18] ;
  wire \Data_Out_int_reg_n_0_[19] ;
  wire \Data_Out_int_reg_n_0_[20] ;
  wire \Data_Out_int_reg_n_0_[21] ;
  wire \Data_Out_int_reg_n_0_[22] ;
  wire \Data_Out_int_reg_n_0_[23] ;
  wire \Data_Out_int_reg_n_0_[24] ;
  wire \Data_Out_int_reg_n_0_[25] ;
  wire \Data_Out_int_reg_n_0_[26] ;
  wire \Data_Out_int_reg_n_0_[27] ;
  wire \Data_Out_int_reg_n_0_[28] ;
  wire \Data_Out_int_reg_n_0_[29] ;
  wire \Data_Out_int_reg_n_0_[30] ;
  wire LRCLK_i_1_n_0;
  wire LRCLK_i_2_n_0;
  wire LRCLK_reg_0;
  wire [2:0]O;
  wire ac_dac_sdata;
  wire ac_lrclk_count0;
  wire [2:0]ac_lrclk_count__0;
  wire \ac_lrclk_count_reg[2] ;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__1_n_0;
  wire [4:0]p_0_in__0;
  wire ready_sig_reg;
  wire rst;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire s00_axi_aresetn_1;
  wire s00_axi_aresetn_2;
  wire s00_axi_aresetn_3;
  wire sw;
  wire [3:2]\NLW_Cnt_Bclk0_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_Cnt_Bclk0_inferred__0/i__carry_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    BCLK_int_i_2
       (.I0(Cnt_Bclk0),
        .I1(BCLK_int_reg_0),
        .O(BCLK_int_i_2_n_0));
  FDRE BCLK_int_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(BCLK_int_i_2_n_0),
        .Q(BCLK_int_reg_0),
        .R(rst));
  CARRY4 \Cnt_Bclk0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\NLW_Cnt_Bclk0_inferred__0/i__carry_CO_UNCONNECTED [3:2],Cnt_Bclk0,\Cnt_Bclk0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Cnt_Bclk0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1_n_0,i__carry_i_2__1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    \Cnt_Bclk[0]_i_1 
       (.I0(Cnt_Bclk_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Cnt_Bclk[1]_i_1 
       (.I0(Cnt_Bclk_reg[1]),
        .I1(Cnt_Bclk_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \Cnt_Bclk[2]_i_1 
       (.I0(Cnt_Bclk_reg[2]),
        .I1(Cnt_Bclk_reg[0]),
        .I2(Cnt_Bclk_reg[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \Cnt_Bclk[3]_i_1 
       (.I0(Cnt_Bclk_reg[3]),
        .I1(Cnt_Bclk_reg[2]),
        .I2(Cnt_Bclk_reg[1]),
        .I3(Cnt_Bclk_reg[0]),
        .O(p_0_in__0[3]));
  LUT2 #(
    .INIT(4'hB)) 
    \Cnt_Bclk[4]_i_1 
       (.I0(Cnt_Bclk0),
        .I1(s00_axi_aresetn),
        .O(\Cnt_Bclk[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \Cnt_Bclk[4]_i_2 
       (.I0(Cnt_Bclk_reg[4]),
        .I1(Cnt_Bclk_reg[0]),
        .I2(Cnt_Bclk_reg[1]),
        .I3(Cnt_Bclk_reg[2]),
        .I4(Cnt_Bclk_reg[3]),
        .O(p_0_in__0[4]));
  FDRE \Cnt_Bclk_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(Cnt_Bclk_reg[0]),
        .R(\Cnt_Bclk[4]_i_1_n_0 ));
  FDRE \Cnt_Bclk_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(Cnt_Bclk_reg[1]),
        .R(\Cnt_Bclk[4]_i_1_n_0 ));
  FDRE \Cnt_Bclk_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(Cnt_Bclk_reg[2]),
        .R(\Cnt_Bclk[4]_i_1_n_0 ));
  FDRE \Cnt_Bclk_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(Cnt_Bclk_reg[3]),
        .R(\Cnt_Bclk[4]_i_1_n_0 ));
  FDRE \Cnt_Bclk_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(Cnt_Bclk_reg[4]),
        .R(\Cnt_Bclk[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Cnt_Lrclk[0]_i_1 
       (.I0(Cnt_Lrclk[0]),
        .O(\Cnt_Lrclk[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Cnt_Lrclk[1]_i_1 
       (.I0(Cnt_Lrclk[1]),
        .I1(Cnt_Lrclk[0]),
        .O(\Cnt_Lrclk[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \Cnt_Lrclk[2]_i_1 
       (.I0(Cnt_Lrclk[2]),
        .I1(Cnt_Lrclk[0]),
        .I2(Cnt_Lrclk[1]),
        .O(\Cnt_Lrclk[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \Cnt_Lrclk[3]_i_1 
       (.I0(Cnt_Lrclk[3]),
        .I1(Cnt_Lrclk[1]),
        .I2(Cnt_Lrclk[0]),
        .I3(Cnt_Lrclk[2]),
        .O(\Cnt_Lrclk[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Cnt_Lrclk[4]_i_1 
       (.I0(Cnt_Bclk0),
        .I1(BCLK_int_reg_0),
        .O(BCLK_Fall_int));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \Cnt_Lrclk[4]_i_2 
       (.I0(Cnt_Lrclk[4]),
        .I1(Cnt_Lrclk[2]),
        .I2(Cnt_Lrclk[0]),
        .I3(Cnt_Lrclk[1]),
        .I4(Cnt_Lrclk[3]),
        .O(\Cnt_Lrclk[4]_i_2_n_0 ));
  FDRE \Cnt_Lrclk_reg[0] 
       (.C(s00_axi_aclk),
        .CE(BCLK_Fall_int),
        .D(\Cnt_Lrclk[0]_i_1_n_0 ),
        .Q(Cnt_Lrclk[0]),
        .R(rst));
  FDRE \Cnt_Lrclk_reg[1] 
       (.C(s00_axi_aclk),
        .CE(BCLK_Fall_int),
        .D(\Cnt_Lrclk[1]_i_1_n_0 ),
        .Q(Cnt_Lrclk[1]),
        .R(rst));
  FDRE \Cnt_Lrclk_reg[2] 
       (.C(s00_axi_aclk),
        .CE(BCLK_Fall_int),
        .D(\Cnt_Lrclk[2]_i_1_n_0 ),
        .Q(Cnt_Lrclk[2]),
        .R(rst));
  FDRE \Cnt_Lrclk_reg[3] 
       (.C(s00_axi_aclk),
        .CE(BCLK_Fall_int),
        .D(\Cnt_Lrclk[3]_i_1_n_0 ),
        .Q(Cnt_Lrclk[3]),
        .R(rst));
  FDRE \Cnt_Lrclk_reg[4] 
       (.C(s00_axi_aclk),
        .CE(BCLK_Fall_int),
        .D(\Cnt_Lrclk[4]_i_2_n_0 ),
        .Q(Cnt_Lrclk[4]),
        .R(rst));
  LUT4 #(
    .INIT(16'h004F)) 
    \Data_Out_int[15]_i_1 
       (.I0(BCLK_int_reg_0),
        .I1(\Data_Out_int[31]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(CO),
        .O(\Data_Out_int[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \Data_Out_int[16]_i_1 
       (.I0(BCLK_int_reg_0),
        .I1(\Data_Out_int[31]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(O[0]),
        .I4(\Data_Out_int_reg_n_0_[15] ),
        .O(\Data_Out_int[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \Data_Out_int[17]_i_1 
       (.I0(BCLK_int_reg_0),
        .I1(\Data_Out_int[31]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(O[1]),
        .I4(\Data_Out_int_reg_n_0_[16] ),
        .O(\Data_Out_int[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \Data_Out_int[18]_i_1 
       (.I0(BCLK_int_reg_0),
        .I1(\Data_Out_int[31]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(O[2]),
        .I4(\Data_Out_int_reg_n_0_[17] ),
        .O(\Data_Out_int[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \Data_Out_int[19]_i_1 
       (.I0(BCLK_int_reg_0),
        .I1(\Data_Out_int[31]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(\Data_Out_int_reg[22]_0 [0]),
        .I4(\Data_Out_int_reg_n_0_[18] ),
        .O(\Data_Out_int[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \Data_Out_int[20]_i_1 
       (.I0(BCLK_int_reg_0),
        .I1(\Data_Out_int[31]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(\Data_Out_int_reg[22]_0 [1]),
        .I4(\Data_Out_int_reg_n_0_[19] ),
        .O(\Data_Out_int[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \Data_Out_int[21]_i_1 
       (.I0(BCLK_int_reg_0),
        .I1(\Data_Out_int[31]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(\Data_Out_int_reg[22]_0 [2]),
        .I4(\Data_Out_int_reg_n_0_[20] ),
        .O(\Data_Out_int[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \Data_Out_int[22]_i_1 
       (.I0(BCLK_int_reg_0),
        .I1(\Data_Out_int[31]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(\Data_Out_int_reg[22]_0 [3]),
        .I4(\Data_Out_int_reg_n_0_[21] ),
        .O(\Data_Out_int[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \Data_Out_int[23]_i_1 
       (.I0(BCLK_int_reg_0),
        .I1(\Data_Out_int[31]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(\Data_Out_int_reg[26]_0 [0]),
        .I4(\Data_Out_int_reg_n_0_[22] ),
        .O(\Data_Out_int[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \Data_Out_int[24]_i_1 
       (.I0(BCLK_int_reg_0),
        .I1(\Data_Out_int[31]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(\Data_Out_int_reg[26]_0 [1]),
        .I4(\Data_Out_int_reg_n_0_[23] ),
        .O(\Data_Out_int[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \Data_Out_int[25]_i_1 
       (.I0(BCLK_int_reg_0),
        .I1(\Data_Out_int[31]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(\Data_Out_int_reg[26]_0 [2]),
        .I4(\Data_Out_int_reg_n_0_[24] ),
        .O(\Data_Out_int[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \Data_Out_int[26]_i_1 
       (.I0(BCLK_int_reg_0),
        .I1(\Data_Out_int[31]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(\Data_Out_int_reg[26]_0 [3]),
        .I4(\Data_Out_int_reg_n_0_[25] ),
        .O(\Data_Out_int[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \Data_Out_int[27]_i_1 
       (.I0(BCLK_int_reg_0),
        .I1(\Data_Out_int[31]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(\Data_Out_int_reg[30]_0 [0]),
        .I4(\Data_Out_int_reg_n_0_[26] ),
        .O(\Data_Out_int[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \Data_Out_int[28]_i_1 
       (.I0(BCLK_int_reg_0),
        .I1(\Data_Out_int[31]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(\Data_Out_int_reg[30]_0 [1]),
        .I4(\Data_Out_int_reg_n_0_[27] ),
        .O(\Data_Out_int[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \Data_Out_int[29]_i_1 
       (.I0(BCLK_int_reg_0),
        .I1(\Data_Out_int[31]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(\Data_Out_int_reg[30]_0 [2]),
        .I4(\Data_Out_int_reg_n_0_[28] ),
        .O(\Data_Out_int[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFB04F00)) 
    \Data_Out_int[30]_i_1 
       (.I0(BCLK_int_reg_0),
        .I1(\Data_Out_int[31]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(\Data_Out_int_reg[30]_0 [3]),
        .I4(\Data_Out_int_reg_n_0_[29] ),
        .O(\Data_Out_int[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFBBB)) 
    \Data_Out_int[31]_i_1 
       (.I0(\Data_Out_int[31]_i_3_n_0 ),
        .I1(s00_axi_aresetn),
        .I2(Cnt_Bclk0),
        .I3(BCLK_int_reg_0),
        .O(\Data_Out_int[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB000)) 
    \Data_Out_int[31]_i_2 
       (.I0(BCLK_int_reg_0),
        .I1(\Data_Out_int[31]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .I3(\Data_Out_int_reg_n_0_[30] ),
        .O(\Data_Out_int[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \Data_Out_int[31]_i_3 
       (.I0(Cnt_Lrclk[0]),
        .I1(Cnt_Lrclk[1]),
        .I2(Cnt_Lrclk[3]),
        .I3(Cnt_Lrclk[4]),
        .I4(Cnt_Lrclk[2]),
        .I5(Cnt_Bclk0),
        .O(\Data_Out_int[31]_i_3_n_0 ));
  FDRE \Data_Out_int_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[15]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[16]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[17]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[18]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[19]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[20]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[21]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[22]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[23]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[24]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[25]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[26]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[27]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[28]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[29]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[30]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[31]_i_2_n_0 ),
        .Q(ac_dac_sdata),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    LRCLK_i_1
       (.I0(Cnt_Lrclk[4]),
        .I1(BCLK_int_reg_0),
        .I2(Cnt_Bclk0),
        .I3(LRCLK_i_2_n_0),
        .I4(LRCLK_reg_0),
        .O(LRCLK_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    LRCLK_i_2
       (.I0(Cnt_Lrclk[3]),
        .I1(Cnt_Lrclk[1]),
        .I2(Cnt_Lrclk[0]),
        .I3(Cnt_Lrclk[2]),
        .O(LRCLK_i_2_n_0));
  FDRE LRCLK_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(LRCLK_i_1_n_0),
        .Q(LRCLK_reg_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \ac_lrclk_count[0]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\ac_lrclk_count_reg[2] ),
        .I2(LRCLK_reg_0),
        .I3(ac_lrclk_count__0[0]),
        .O(s00_axi_aresetn_3));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h8A20AA00)) 
    \ac_lrclk_count[1]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\ac_lrclk_count_reg[2] ),
        .I2(LRCLK_reg_0),
        .I3(ac_lrclk_count__0[1]),
        .I4(ac_lrclk_count__0[0]),
        .O(s00_axi_aresetn_2));
  LUT6 #(
    .INIT(64'h8AAAAAAA20000000)) 
    \ac_lrclk_count[2]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\ac_lrclk_count_reg[2] ),
        .I2(LRCLK_reg_0),
        .I3(ac_lrclk_count__0[1]),
        .I4(ac_lrclk_count__0[0]),
        .I5(ac_lrclk_count__0[2]),
        .O(s00_axi_aresetn_1));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    ac_lrclk_sig_prev_i_1
       (.I0(s00_axi_aresetn),
        .I1(LRCLK_reg_0),
        .I2(\ac_lrclk_count_reg[2] ),
        .O(s00_axi_aresetn_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_1
       (.I0(Cnt_Bclk_reg[3]),
        .I1(Cnt_Bclk_reg[4]),
        .O(i__carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    i__carry_i_2__1
       (.I0(Cnt_Bclk_reg[2]),
        .I1(Cnt_Bclk_reg[0]),
        .I2(Cnt_Bclk_reg[1]),
        .O(i__carry_i_2__1_n_0));
  LUT6 #(
    .INIT(64'hE2A2A2A2A2A2A2A2)) 
    ready_sig_i_1
       (.I0(sw),
        .I1(s00_axi_aresetn),
        .I2(ac_lrclk_count0),
        .I3(ac_lrclk_count__0[1]),
        .I4(ac_lrclk_count__0[0]),
        .I5(ac_lrclk_count__0[2]),
        .O(ready_sig_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ready_sig_i_2
       (.I0(LRCLK_reg_0),
        .I1(\ac_lrclk_count_reg[2] ),
        .O(ac_lrclk_count0));
endmodule

(* ORIG_REF_NAME = "lab4_controlunit" *) 
module lab4_design_lab4_ip_0_6_lab4_controlunit
   (E,
    p_0_in,
    S,
    \count_ctrl_reg[0]_0 ,
    \count_ctrl_reg[0]_1 ,
    \processCount_reg[15] ,
    SR,
    Q,
    \processCount_reg[15]_0 ,
    \processCount_reg[3] ,
    \processCount_reg[15]_1 ,
    s00_axi_aresetn,
    sw,
    rst,
    s00_axi_aclk);
  output [0:0]E;
  output [14:0]p_0_in;
  output [3:0]S;
  output [3:0]\count_ctrl_reg[0]_0 ;
  output [3:0]\count_ctrl_reg[0]_1 ;
  output [3:0]\processCount_reg[15] ;
  output [0:0]SR;
  input [15:0]Q;
  input [15:0]\processCount_reg[15]_0 ;
  input \processCount_reg[3] ;
  input [15:0]\processCount_reg[15]_1 ;
  input s00_axi_aresetn;
  input sw;
  input rst;
  input s00_axi_aclk;

  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [15:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire \count_ctrl[0]_i_1_n_0 ;
  wire \count_ctrl[1]_i_1_n_0 ;
  wire [3:0]\count_ctrl_reg[0]_0 ;
  wire [3:0]\count_ctrl_reg[0]_1 ;
  wire [1:0]cw;
  wire [14:0]p_0_in;
  wire [3:0]\processCount_reg[15] ;
  wire [15:0]\processCount_reg[15]_0 ;
  wire [15:0]\processCount_reg[15]_1 ;
  wire \processCount_reg[3] ;
  wire rst;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire sw;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFEAA)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(sw),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hCDCC)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(sw),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "reset:001,read_val:010,wait_ready:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "reset:001,read_val:010,wait_ready:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "reset:001,read_val:010,wait_ready:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(rst));
  LUT5 #(
    .INIT(32'hDDDF8888)) 
    \count_ctrl[0]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(cw[0]),
        .O(\count_ctrl[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFDFAA88)) 
    \count_ctrl[1]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(cw[1]),
        .O(\count_ctrl[1]_i_1_n_0 ));
  FDRE \count_ctrl_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count_ctrl[0]_i_1_n_0 ),
        .Q(cw[0]),
        .R(1'b0));
  FDRE \count_ctrl_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count_ctrl[1]_i_1_n_0 ),
        .Q(cw[1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    i__carry__0_i_1
       (.I0(Q[7]),
        .I1(cw[1]),
        .I2(cw[0]),
        .O(p_0_in[7]));
  LUT3 #(
    .INIT(8'h08)) 
    i__carry__0_i_2
       (.I0(Q[6]),
        .I1(cw[1]),
        .I2(cw[0]),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'h08)) 
    i__carry__0_i_3
       (.I0(Q[5]),
        .I1(cw[1]),
        .I2(cw[0]),
        .O(p_0_in[5]));
  LUT3 #(
    .INIT(8'h08)) 
    i__carry__0_i_4
       (.I0(Q[4]),
        .I1(cw[1]),
        .I2(cw[0]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hBFBFBF404040BF40)) 
    i__carry__0_i_5__0
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(Q[7]),
        .I3(\processCount_reg[15]_0 [7]),
        .I4(\processCount_reg[3] ),
        .I5(\processCount_reg[15]_1 [7]),
        .O(\count_ctrl_reg[0]_0 [3]));
  LUT6 #(
    .INIT(64'hBFBFBF404040BF40)) 
    i__carry__0_i_6__0
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(Q[6]),
        .I3(\processCount_reg[15]_0 [6]),
        .I4(\processCount_reg[3] ),
        .I5(\processCount_reg[15]_1 [6]),
        .O(\count_ctrl_reg[0]_0 [2]));
  LUT6 #(
    .INIT(64'hBFBFBF404040BF40)) 
    i__carry__0_i_7__0
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(Q[5]),
        .I3(\processCount_reg[15]_0 [5]),
        .I4(\processCount_reg[3] ),
        .I5(\processCount_reg[15]_1 [5]),
        .O(\count_ctrl_reg[0]_0 [1]));
  LUT6 #(
    .INIT(64'hBFBFBF404040BF40)) 
    i__carry__0_i_8__0
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(Q[4]),
        .I3(\processCount_reg[15]_0 [4]),
        .I4(\processCount_reg[3] ),
        .I5(\processCount_reg[15]_1 [4]),
        .O(\count_ctrl_reg[0]_0 [0]));
  LUT3 #(
    .INIT(8'h08)) 
    i__carry__1_i_1
       (.I0(Q[11]),
        .I1(cw[1]),
        .I2(cw[0]),
        .O(p_0_in[11]));
  LUT3 #(
    .INIT(8'h08)) 
    i__carry__1_i_2
       (.I0(Q[10]),
        .I1(cw[1]),
        .I2(cw[0]),
        .O(p_0_in[10]));
  LUT3 #(
    .INIT(8'h08)) 
    i__carry__1_i_3
       (.I0(Q[9]),
        .I1(cw[1]),
        .I2(cw[0]),
        .O(p_0_in[9]));
  LUT3 #(
    .INIT(8'h08)) 
    i__carry__1_i_4
       (.I0(Q[8]),
        .I1(cw[1]),
        .I2(cw[0]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hBFBFBF404040BF40)) 
    i__carry__1_i_5
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(Q[11]),
        .I3(\processCount_reg[15]_0 [11]),
        .I4(\processCount_reg[3] ),
        .I5(\processCount_reg[15]_1 [11]),
        .O(\count_ctrl_reg[0]_1 [3]));
  LUT6 #(
    .INIT(64'hBFBFBF404040BF40)) 
    i__carry__1_i_6
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(Q[10]),
        .I3(\processCount_reg[15]_0 [10]),
        .I4(\processCount_reg[3] ),
        .I5(\processCount_reg[15]_1 [10]),
        .O(\count_ctrl_reg[0]_1 [2]));
  LUT6 #(
    .INIT(64'hBFBFBF404040BF40)) 
    i__carry__1_i_7
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(Q[9]),
        .I3(\processCount_reg[15]_0 [9]),
        .I4(\processCount_reg[3] ),
        .I5(\processCount_reg[15]_1 [9]),
        .O(\count_ctrl_reg[0]_1 [1]));
  LUT6 #(
    .INIT(64'hBFBFBF404040BF40)) 
    i__carry__1_i_8
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(Q[8]),
        .I3(\processCount_reg[15]_0 [8]),
        .I4(\processCount_reg[3] ),
        .I5(\processCount_reg[15]_1 [8]),
        .O(\count_ctrl_reg[0]_1 [0]));
  LUT3 #(
    .INIT(8'h08)) 
    i__carry__2_i_1
       (.I0(Q[14]),
        .I1(cw[1]),
        .I2(cw[0]),
        .O(p_0_in[14]));
  LUT3 #(
    .INIT(8'h08)) 
    i__carry__2_i_2
       (.I0(Q[13]),
        .I1(cw[1]),
        .I2(cw[0]),
        .O(p_0_in[13]));
  LUT3 #(
    .INIT(8'h08)) 
    i__carry__2_i_3
       (.I0(Q[12]),
        .I1(cw[1]),
        .I2(cw[0]),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'hDFDFDF202020DF20)) 
    i__carry__2_i_4
       (.I0(Q[15]),
        .I1(cw[0]),
        .I2(cw[1]),
        .I3(\processCount_reg[15]_0 [15]),
        .I4(\processCount_reg[3] ),
        .I5(\processCount_reg[15]_1 [15]),
        .O(\processCount_reg[15] [3]));
  LUT6 #(
    .INIT(64'hBFBFBF404040BF40)) 
    i__carry__2_i_5
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(Q[14]),
        .I3(\processCount_reg[15]_0 [14]),
        .I4(\processCount_reg[3] ),
        .I5(\processCount_reg[15]_1 [14]),
        .O(\processCount_reg[15] [2]));
  LUT6 #(
    .INIT(64'hBFBFBF404040BF40)) 
    i__carry__2_i_6
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(Q[13]),
        .I3(\processCount_reg[15]_0 [13]),
        .I4(\processCount_reg[3] ),
        .I5(\processCount_reg[15]_1 [13]),
        .O(\processCount_reg[15] [1]));
  LUT6 #(
    .INIT(64'hBFBFBF404040BF40)) 
    i__carry__2_i_7
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(Q[12]),
        .I3(\processCount_reg[15]_0 [12]),
        .I4(\processCount_reg[3] ),
        .I5(\processCount_reg[15]_1 [12]),
        .O(\processCount_reg[15] [0]));
  LUT3 #(
    .INIT(8'h08)) 
    i__carry_i_1__0
       (.I0(Q[3]),
        .I1(cw[1]),
        .I2(cw[0]),
        .O(p_0_in[3]));
  LUT3 #(
    .INIT(8'h08)) 
    i__carry_i_2
       (.I0(Q[2]),
        .I1(cw[1]),
        .I2(cw[0]),
        .O(p_0_in[2]));
  LUT3 #(
    .INIT(8'h08)) 
    i__carry_i_3
       (.I0(Q[1]),
        .I1(cw[1]),
        .I2(cw[0]),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'h08)) 
    i__carry_i_4
       (.I0(Q[0]),
        .I1(cw[1]),
        .I2(cw[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hBFBFBF404040BF40)) 
    i__carry_i_5__0
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(Q[3]),
        .I3(\processCount_reg[15]_0 [3]),
        .I4(\processCount_reg[3] ),
        .I5(\processCount_reg[15]_1 [3]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'hBFBFBF404040BF40)) 
    i__carry_i_6__0
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(Q[2]),
        .I3(\processCount_reg[15]_0 [2]),
        .I4(\processCount_reg[3] ),
        .I5(\processCount_reg[15]_1 [2]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'hBFBFBF404040BF40)) 
    i__carry_i_7__0
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(Q[1]),
        .I3(\processCount_reg[15]_0 [1]),
        .I4(\processCount_reg[3] ),
        .I5(\processCount_reg[15]_1 [1]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hBFBFBF404040BF40)) 
    i__carry_i_8__0
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(Q[0]),
        .I3(\processCount_reg[15]_0 [0]),
        .I4(\processCount_reg[3] ),
        .I5(\processCount_reg[15]_1 [0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \processCount[15]_i_1 
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(s00_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \processCount[15]_i_2 
       (.I0(cw[1]),
        .I1(cw[0]),
        .O(E));
endmodule

(* ORIG_REF_NAME = "lab4_datapath" *) 
module lab4_design_lab4_ip_0_6_lab4_datapath
   (ac_mclk,
    DOADO,
    Q,
    \sdp_bl.ramb18_dp_bl.ram18_bl ,
    O,
    \slv_reg0_reg[0]_rep ,
    \slv_reg0_reg[0]_rep_0 ,
    CO,
    \ampl_sig_reg[15] ,
    BCLK_int_reg,
    LRCLK_reg,
    sw,
    L_carry__2_0,
    L__972_carry_i_8,
    ac_dac_sdata,
    scl,
    sda,
    s00_axi_aresetn,
    s00_axi_aclk,
    rst,
    p_0_in,
    S,
    \processCount_reg[7] ,
    \processCount_reg[11] ,
    \processCount_reg[15] ,
    DI,
    \Data_Out_int[30]_i_64 ,
    \Data_Out_int[30]_i_49 ,
    \Data_Out_int[30]_i_49_0 ,
    \Data_Out_int[30]_i_34 ,
    \Data_Out_int[30]_i_34_0 ,
    \Data_Out_int[30]_i_19 ,
    \Data_Out_int[30]_i_19_0 ,
    \Data_Out_int_reg[18] ,
    L__972_carry__0_0,
    L__972_carry__0_1,
    L__972_carry__1_0,
    L__972_carry__1_1,
    L__972_carry__2_0,
    L__972_carry__2_1,
    L__972_carry__3_0,
    L__972_carry__3_1,
    \Data_Out_int_reg[18]_0 ,
    \Data_Out_int_reg[22] ,
    \Data_Out_int_reg[22]_0 ,
    \Data_Out_int_reg[22]_1 ,
    \Data_Out_int_reg[22]_2 ,
    \Data_Out_int_reg[26] ,
    \Data_Out_int_reg[26]_0 ,
    \Data_Out_int_reg[26]_1 ,
    \Data_Out_int_reg[26]_2 ,
    \Data_Out_int_reg[30] ,
    \Data_Out_int_reg[30]_i_4 ,
    L__972_carry_i_1,
    L__972_carry__3_2,
    SR,
    E);
  output ac_mclk;
  output [15:0]DOADO;
  output [15:0]Q;
  output [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl ;
  output [3:0]O;
  output [3:0]\slv_reg0_reg[0]_rep ;
  output [3:0]\slv_reg0_reg[0]_rep_0 ;
  output [0:0]CO;
  output [2:0]\ampl_sig_reg[15] ;
  output BCLK_int_reg;
  output LRCLK_reg;
  output sw;
  output [0:0]L_carry__2_0;
  output [0:0]L__972_carry_i_8;
  output ac_dac_sdata;
  inout scl;
  inout sda;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input rst;
  input [14:0]p_0_in;
  input [3:0]S;
  input [3:0]\processCount_reg[7] ;
  input [3:0]\processCount_reg[11] ;
  input [3:0]\processCount_reg[15] ;
  input [3:0]DI;
  input [3:0]\Data_Out_int[30]_i_64 ;
  input [3:0]\Data_Out_int[30]_i_49 ;
  input [3:0]\Data_Out_int[30]_i_49_0 ;
  input [3:0]\Data_Out_int[30]_i_34 ;
  input [3:0]\Data_Out_int[30]_i_34_0 ;
  input [3:0]\Data_Out_int[30]_i_19 ;
  input [3:0]\Data_Out_int[30]_i_19_0 ;
  input [1:0]\Data_Out_int_reg[18] ;
  input [3:0]L__972_carry__0_0;
  input [3:0]L__972_carry__0_1;
  input [3:0]L__972_carry__1_0;
  input [3:0]L__972_carry__1_1;
  input [3:0]L__972_carry__2_0;
  input [3:0]L__972_carry__2_1;
  input [3:0]L__972_carry__3_0;
  input [3:0]L__972_carry__3_1;
  input [0:0]\Data_Out_int_reg[18]_0 ;
  input [0:0]\Data_Out_int_reg[22] ;
  input [0:0]\Data_Out_int_reg[22]_0 ;
  input [0:0]\Data_Out_int_reg[22]_1 ;
  input [0:0]\Data_Out_int_reg[22]_2 ;
  input [0:0]\Data_Out_int_reg[26] ;
  input [0:0]\Data_Out_int_reg[26]_0 ;
  input [0:0]\Data_Out_int_reg[26]_1 ;
  input [0:0]\Data_Out_int_reg[26]_2 ;
  input [3:0]\Data_Out_int_reg[30] ;
  input [0:0]\Data_Out_int_reg[30]_i_4 ;
  input [0:0]L__972_carry_i_1;
  input [0:0]L__972_carry__3_2;
  input [0:0]SR;
  input [0:0]E;

  wire BCLK_int_reg;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [15:0]DOADO;
  wire [3:0]\Data_Out_int[30]_i_19 ;
  wire [3:0]\Data_Out_int[30]_i_19_0 ;
  wire [3:0]\Data_Out_int[30]_i_34 ;
  wire [3:0]\Data_Out_int[30]_i_34_0 ;
  wire [3:0]\Data_Out_int[30]_i_49 ;
  wire [3:0]\Data_Out_int[30]_i_49_0 ;
  wire [3:0]\Data_Out_int[30]_i_64 ;
  wire [1:0]\Data_Out_int_reg[18] ;
  wire [0:0]\Data_Out_int_reg[18]_0 ;
  wire \Data_Out_int_reg[18]_i_2_n_0 ;
  wire \Data_Out_int_reg[18]_i_2_n_1 ;
  wire \Data_Out_int_reg[18]_i_2_n_2 ;
  wire \Data_Out_int_reg[18]_i_2_n_3 ;
  wire \Data_Out_int_reg[18]_i_2_n_4 ;
  wire \Data_Out_int_reg[18]_i_2_n_5 ;
  wire \Data_Out_int_reg[18]_i_2_n_6 ;
  wire [0:0]\Data_Out_int_reg[22] ;
  wire [0:0]\Data_Out_int_reg[22]_0 ;
  wire [0:0]\Data_Out_int_reg[22]_1 ;
  wire [0:0]\Data_Out_int_reg[22]_2 ;
  wire \Data_Out_int_reg[22]_i_2_n_0 ;
  wire \Data_Out_int_reg[22]_i_2_n_1 ;
  wire \Data_Out_int_reg[22]_i_2_n_2 ;
  wire \Data_Out_int_reg[22]_i_2_n_3 ;
  wire \Data_Out_int_reg[22]_i_2_n_4 ;
  wire \Data_Out_int_reg[22]_i_2_n_5 ;
  wire \Data_Out_int_reg[22]_i_2_n_6 ;
  wire \Data_Out_int_reg[22]_i_2_n_7 ;
  wire [0:0]\Data_Out_int_reg[26] ;
  wire [0:0]\Data_Out_int_reg[26]_0 ;
  wire [0:0]\Data_Out_int_reg[26]_1 ;
  wire [0:0]\Data_Out_int_reg[26]_2 ;
  wire \Data_Out_int_reg[26]_i_2_n_0 ;
  wire \Data_Out_int_reg[26]_i_2_n_1 ;
  wire \Data_Out_int_reg[26]_i_2_n_2 ;
  wire \Data_Out_int_reg[26]_i_2_n_3 ;
  wire \Data_Out_int_reg[26]_i_2_n_4 ;
  wire \Data_Out_int_reg[26]_i_2_n_5 ;
  wire \Data_Out_int_reg[26]_i_2_n_6 ;
  wire \Data_Out_int_reg[26]_i_2_n_7 ;
  wire [3:0]\Data_Out_int_reg[30] ;
  wire \Data_Out_int_reg[30]_i_2_n_1 ;
  wire \Data_Out_int_reg[30]_i_2_n_2 ;
  wire \Data_Out_int_reg[30]_i_2_n_3 ;
  wire \Data_Out_int_reg[30]_i_2_n_4 ;
  wire \Data_Out_int_reg[30]_i_2_n_5 ;
  wire \Data_Out_int_reg[30]_i_2_n_6 ;
  wire \Data_Out_int_reg[30]_i_2_n_7 ;
  wire [0:0]\Data_Out_int_reg[30]_i_4 ;
  wire [0:0]E;
  wire [0:0]L;
  wire LRCLK_reg;
  wire [3:0]L__972_carry__0_0;
  wire [3:0]L__972_carry__0_1;
  wire L__972_carry__0_n_0;
  wire L__972_carry__0_n_1;
  wire L__972_carry__0_n_2;
  wire L__972_carry__0_n_3;
  wire [3:0]L__972_carry__1_0;
  wire [3:0]L__972_carry__1_1;
  wire L__972_carry__1_n_0;
  wire L__972_carry__1_n_1;
  wire L__972_carry__1_n_2;
  wire L__972_carry__1_n_3;
  wire [3:0]L__972_carry__2_0;
  wire [3:0]L__972_carry__2_1;
  wire L__972_carry__2_n_0;
  wire L__972_carry__2_n_1;
  wire L__972_carry__2_n_2;
  wire L__972_carry__2_n_3;
  wire [3:0]L__972_carry__3_0;
  wire [3:0]L__972_carry__3_1;
  wire [0:0]L__972_carry__3_2;
  wire L__972_carry__3_i_1_n_0;
  wire [0:0]L__972_carry_i_1;
  wire [0:0]L__972_carry_i_8;
  wire L__972_carry_n_0;
  wire L__972_carry_n_1;
  wire L__972_carry_n_2;
  wire L__972_carry_n_3;
  wire L_carry__0_n_0;
  wire L_carry__0_n_1;
  wire L_carry__0_n_2;
  wire L_carry__0_n_3;
  wire L_carry__1_n_0;
  wire L_carry__1_n_1;
  wire L_carry__1_n_2;
  wire L_carry__1_n_3;
  wire [0:0]L_carry__2_0;
  wire L_carry__2_n_1;
  wire L_carry__2_n_2;
  wire L_carry__2_n_3;
  wire L_carry__2_n_4;
  wire L_carry_n_0;
  wire L_carry_n_1;
  wire L_carry_n_2;
  wire L_carry_n_3;
  wire [3:0]O;
  wire [15:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire ac_dac_sdata;
  wire ac_mclk;
  wire [2:0]\ampl_sig_reg[15] ;
  wire [14:0]p_0_in;
  wire [3:0]\processCount_reg[11] ;
  wire [3:0]\processCount_reg[15] ;
  wire [3:0]\processCount_reg[7] ;
  wire rst;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire scl;
  wire sda;
  wire [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl ;
  wire [3:0]\slv_reg0_reg[0]_rep ;
  wire [3:0]\slv_reg0_reg[0]_rep_0 ;
  wire sw;
  wire [0:0]\NLW_Data_Out_int_reg[18]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_Data_Out_int_reg[30]_i_2_CO_UNCONNECTED ;
  wire [3:0]NLW_L__972_carry_O_UNCONNECTED;
  wire [3:0]NLW_L__972_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_L__972_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_L__972_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_L__972_carry__3_CO_UNCONNECTED;
  wire [3:0]NLW_L__972_carry__3_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    \Data_Out_int[30]_i_9 
       (.I0(\Data_Out_int_reg[30]_i_4 ),
        .I1(L_carry__2_n_4),
        .O(L_carry__2_0));
  CARRY4 \Data_Out_int_reg[18]_i_2 
       (.CI(1'b0),
        .CO({\Data_Out_int_reg[18]_i_2_n_0 ,\Data_Out_int_reg[18]_i_2_n_1 ,\Data_Out_int_reg[18]_i_2_n_2 ,\Data_Out_int_reg[18]_i_2_n_3 }),
        .CYINIT(L),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Data_Out_int_reg[18]_i_2_n_4 ,\Data_Out_int_reg[18]_i_2_n_5 ,\Data_Out_int_reg[18]_i_2_n_6 ,\NLW_Data_Out_int_reg[18]_i_2_O_UNCONNECTED [0]}),
        .S({\Data_Out_int_reg[18]_0 ,\Data_Out_int_reg[18] ,1'b1}));
  CARRY4 \Data_Out_int_reg[22]_i_2 
       (.CI(\Data_Out_int_reg[18]_i_2_n_0 ),
        .CO({\Data_Out_int_reg[22]_i_2_n_0 ,\Data_Out_int_reg[22]_i_2_n_1 ,\Data_Out_int_reg[22]_i_2_n_2 ,\Data_Out_int_reg[22]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Data_Out_int_reg[22]_i_2_n_4 ,\Data_Out_int_reg[22]_i_2_n_5 ,\Data_Out_int_reg[22]_i_2_n_6 ,\Data_Out_int_reg[22]_i_2_n_7 }),
        .S({\Data_Out_int_reg[22] ,\Data_Out_int_reg[22]_0 ,\Data_Out_int_reg[22]_1 ,\Data_Out_int_reg[22]_2 }));
  CARRY4 \Data_Out_int_reg[26]_i_2 
       (.CI(\Data_Out_int_reg[22]_i_2_n_0 ),
        .CO({\Data_Out_int_reg[26]_i_2_n_0 ,\Data_Out_int_reg[26]_i_2_n_1 ,\Data_Out_int_reg[26]_i_2_n_2 ,\Data_Out_int_reg[26]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Data_Out_int_reg[26]_i_2_n_4 ,\Data_Out_int_reg[26]_i_2_n_5 ,\Data_Out_int_reg[26]_i_2_n_6 ,\Data_Out_int_reg[26]_i_2_n_7 }),
        .S({\Data_Out_int_reg[26] ,\Data_Out_int_reg[26]_0 ,\Data_Out_int_reg[26]_1 ,\Data_Out_int_reg[26]_2 }));
  CARRY4 \Data_Out_int_reg[30]_i_2 
       (.CI(\Data_Out_int_reg[26]_i_2_n_0 ),
        .CO({\NLW_Data_Out_int_reg[30]_i_2_CO_UNCONNECTED [3],\Data_Out_int_reg[30]_i_2_n_1 ,\Data_Out_int_reg[30]_i_2_n_2 ,\Data_Out_int_reg[30]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Data_Out_int_reg[30]_i_2_n_4 ,\Data_Out_int_reg[30]_i_2_n_5 ,\Data_Out_int_reg[30]_i_2_n_6 ,\Data_Out_int_reg[30]_i_2_n_7 }),
        .S(\Data_Out_int_reg[30] ));
  CARRY4 L__972_carry
       (.CI(1'b0),
        .CO({L__972_carry_n_0,L__972_carry_n_1,L__972_carry_n_2,L__972_carry_n_3}),
        .CYINIT(\Data_Out_int_reg[18] [0]),
        .DI(L__972_carry__0_0),
        .O(NLW_L__972_carry_O_UNCONNECTED[3:0]),
        .S(L__972_carry__0_1));
  CARRY4 L__972_carry__0
       (.CI(L__972_carry_n_0),
        .CO({L__972_carry__0_n_0,L__972_carry__0_n_1,L__972_carry__0_n_2,L__972_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(L__972_carry__1_0),
        .O(NLW_L__972_carry__0_O_UNCONNECTED[3:0]),
        .S(L__972_carry__1_1));
  CARRY4 L__972_carry__1
       (.CI(L__972_carry__0_n_0),
        .CO({L__972_carry__1_n_0,L__972_carry__1_n_1,L__972_carry__1_n_2,L__972_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(L__972_carry__2_0),
        .O(NLW_L__972_carry__1_O_UNCONNECTED[3:0]),
        .S(L__972_carry__2_1));
  CARRY4 L__972_carry__2
       (.CI(L__972_carry__1_n_0),
        .CO({L__972_carry__2_n_0,L__972_carry__2_n_1,L__972_carry__2_n_2,L__972_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(L__972_carry__3_0),
        .O(NLW_L__972_carry__2_O_UNCONNECTED[3:0]),
        .S(L__972_carry__3_1));
  CARRY4 L__972_carry__3
       (.CI(L__972_carry__2_n_0),
        .CO({NLW_L__972_carry__3_CO_UNCONNECTED[3:1],L}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\Data_Out_int_reg[18] [0]}),
        .O(NLW_L__972_carry__3_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,L__972_carry__3_i_1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    L__972_carry__3_i_1
       (.I0(\Data_Out_int_reg[18] [0]),
        .I1(L__972_carry__3_2),
        .O(L__972_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    L__972_carry_i_10
       (.I0(\Data_Out_int_reg[18] [1]),
        .I1(L__972_carry_i_1),
        .O(L__972_carry_i_8));
  CARRY4 L_carry
       (.CI(1'b0),
        .CO({L_carry_n_0,L_carry_n_1,L_carry_n_2,L_carry_n_3}),
        .CYINIT(1'b1),
        .DI(DI),
        .O(O),
        .S(\Data_Out_int[30]_i_64 ));
  CARRY4 L_carry__0
       (.CI(L_carry_n_0),
        .CO({L_carry__0_n_0,L_carry__0_n_1,L_carry__0_n_2,L_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\Data_Out_int[30]_i_49 ),
        .O(\slv_reg0_reg[0]_rep ),
        .S(\Data_Out_int[30]_i_49_0 ));
  CARRY4 L_carry__1
       (.CI(L_carry__0_n_0),
        .CO({L_carry__1_n_0,L_carry__1_n_1,L_carry__1_n_2,L_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\Data_Out_int[30]_i_34 ),
        .O(\slv_reg0_reg[0]_rep_0 ),
        .S(\Data_Out_int[30]_i_34_0 ));
  CARRY4 L_carry__2
       (.CI(L_carry__1_n_0),
        .CO({CO,L_carry__2_n_1,L_carry__2_n_2,L_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\Data_Out_int[30]_i_19 ),
        .O({L_carry__2_n_4,\ampl_sig_reg[15] }),
        .S(\Data_Out_int[30]_i_19_0 ));
  lab4_design_lab4_ip_0_6_Audio_Codec_Wrapper audio_inst
       (.BCLK_int_reg(BCLK_int_reg),
        .CO(L),
        .\Data_Out_int_reg[22] ({\Data_Out_int_reg[22]_i_2_n_4 ,\Data_Out_int_reg[22]_i_2_n_5 ,\Data_Out_int_reg[22]_i_2_n_6 ,\Data_Out_int_reg[22]_i_2_n_7 }),
        .\Data_Out_int_reg[26] ({\Data_Out_int_reg[26]_i_2_n_4 ,\Data_Out_int_reg[26]_i_2_n_5 ,\Data_Out_int_reg[26]_i_2_n_6 ,\Data_Out_int_reg[26]_i_2_n_7 }),
        .\Data_Out_int_reg[30] ({\Data_Out_int_reg[30]_i_2_n_4 ,\Data_Out_int_reg[30]_i_2_n_5 ,\Data_Out_int_reg[30]_i_2_n_6 ,\Data_Out_int_reg[30]_i_2_n_7 }),
        .LRCLK_reg(LRCLK_reg),
        .O({\Data_Out_int_reg[18]_i_2_n_4 ,\Data_Out_int_reg[18]_i_2_n_5 ,\Data_Out_int_reg[18]_i_2_n_6 }),
        .ac_dac_sdata(ac_dac_sdata),
        .ac_mclk(ac_mclk),
        .rst(rst),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .scl(scl),
        .sda(sda),
        .sw(sw));
  lab4_design_lab4_ip_0_6_unimacro_BRAM_SDP_MACRO__parameterized0 bram_inst_chord
       (.Q(Q[15:6]),
        .rst(rst),
        .s00_axi_aclk(s00_axi_aclk),
        .\sdp_bl.ramb18_dp_bl.ram18_bl_0 (\sdp_bl.ramb18_dp_bl.ram18_bl ));
  lab4_design_lab4_ip_0_6_unimacro_BRAM_SDP_MACRO bram_inst_sine
       (.DOADO(DOADO),
        .Q(Q[15:6]),
        .rst(rst),
        .s00_axi_aclk(s00_axi_aclk));
  lab4_design_lab4_ip_0_6_addr_counter counter_inst
       (.E(E),
        .Q(Q),
        .S(S),
        .SR(SR),
        .p_0_in(p_0_in),
        .\processCount_reg[11]_0 (\processCount_reg[11] ),
        .\processCount_reg[15]_0 (\processCount_reg[15] ),
        .\processCount_reg[7]_0 (\processCount_reg[7] ),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

(* ORIG_REF_NAME = "lab4_ip_v1_0" *) 
module lab4_design_lab4_ip_0_6_lab4_ip_v1_0
   (ac_mclk,
    axi_wready_reg,
    axi_awready_reg,
    axi_arready_reg,
    L_carry__2,
    BCLK_int_reg,
    LRCLK_reg,
    s00_axi_bvalid,
    s00_axi_rvalid,
    O,
    \slv_reg2_reg[15] ,
    \slv_reg2_reg[15]_0 ,
    \slv_reg2_reg[15]_1 ,
    \slv_reg2_reg[15]_2 ,
    \slv_reg2_reg[15]_3 ,
    \slv_reg2_reg[15]_4 ,
    \slv_reg2_reg[15]_5 ,
    \slv_reg2_reg[15]_6 ,
    \slv_reg2_reg[15]_7 ,
    \slv_reg2_reg[15]_8 ,
    \slv_reg2_reg[15]_9 ,
    ac_dac_sdata,
    s00_axi_rdata,
    scl,
    sda,
    s00_axi_aresetn,
    s00_axi_aclk,
    btn,
    S,
    \Data_Out_int[26]_i_8 ,
    \Data_Out_int[26]_i_11 ,
    \Data_Out_int[26]_i_14 ,
    \Data_Out_int[26]_i_17 ,
    \Data_Out_int[22]_i_8 ,
    \Data_Out_int[22]_i_11 ,
    \Data_Out_int[22]_i_14 ,
    \Data_Out_int[22]_i_17 ,
    \Data_Out_int[18]_i_4 ,
    L__972_carry_i_19,
    L__972_carry_i_10,
    \Data_Out_int_reg[30] ,
    switch,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output ac_mclk;
  output axi_wready_reg;
  output axi_awready_reg;
  output axi_arready_reg;
  output [12:0]L_carry__2;
  output BCLK_int_reg;
  output LRCLK_reg;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [0:0]O;
  output [0:0]\slv_reg2_reg[15] ;
  output [0:0]\slv_reg2_reg[15]_0 ;
  output [0:0]\slv_reg2_reg[15]_1 ;
  output [0:0]\slv_reg2_reg[15]_2 ;
  output [0:0]\slv_reg2_reg[15]_3 ;
  output [0:0]\slv_reg2_reg[15]_4 ;
  output [0:0]\slv_reg2_reg[15]_5 ;
  output [0:0]\slv_reg2_reg[15]_6 ;
  output [0:0]\slv_reg2_reg[15]_7 ;
  output [0:0]\slv_reg2_reg[15]_8 ;
  output [0:0]\slv_reg2_reg[15]_9 ;
  output ac_dac_sdata;
  output [31:0]s00_axi_rdata;
  inout scl;
  inout sda;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [4:0]btn;
  input [0:0]S;
  input [0:0]\Data_Out_int[26]_i_8 ;
  input [0:0]\Data_Out_int[26]_i_11 ;
  input [0:0]\Data_Out_int[26]_i_14 ;
  input [0:0]\Data_Out_int[26]_i_17 ;
  input [0:0]\Data_Out_int[22]_i_8 ;
  input [0:0]\Data_Out_int[22]_i_11 ;
  input [0:0]\Data_Out_int[22]_i_14 ;
  input [0:0]\Data_Out_int[22]_i_17 ;
  input [0:0]\Data_Out_int[18]_i_4 ;
  input [0:0]L__972_carry_i_19;
  input [0:0]L__972_carry_i_10;
  input [0:0]\Data_Out_int_reg[30] ;
  input [7:0]switch;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire BCLK_int_reg;
  wire [0:0]\Data_Out_int[18]_i_4 ;
  wire [0:0]\Data_Out_int[22]_i_11 ;
  wire [0:0]\Data_Out_int[22]_i_14 ;
  wire [0:0]\Data_Out_int[22]_i_17 ;
  wire [0:0]\Data_Out_int[22]_i_8 ;
  wire [0:0]\Data_Out_int[26]_i_11 ;
  wire [0:0]\Data_Out_int[26]_i_14 ;
  wire [0:0]\Data_Out_int[26]_i_17 ;
  wire [0:0]\Data_Out_int[26]_i_8 ;
  wire [0:0]\Data_Out_int_reg[30] ;
  wire LRCLK_reg;
  wire [0:0]L__972_carry_i_10;
  wire [0:0]L__972_carry_i_19;
  wire [12:0]L_carry__2;
  wire [0:0]O;
  wire [0:0]S;
  wire ac_dac_sdata;
  wire ac_mclk;
  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_wready_reg;
  wire [4:0]btn;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire scl;
  wire sda;
  wire [0:0]\slv_reg2_reg[15] ;
  wire [0:0]\slv_reg2_reg[15]_0 ;
  wire [0:0]\slv_reg2_reg[15]_1 ;
  wire [0:0]\slv_reg2_reg[15]_2 ;
  wire [0:0]\slv_reg2_reg[15]_3 ;
  wire [0:0]\slv_reg2_reg[15]_4 ;
  wire [0:0]\slv_reg2_reg[15]_5 ;
  wire [0:0]\slv_reg2_reg[15]_6 ;
  wire [0:0]\slv_reg2_reg[15]_7 ;
  wire [0:0]\slv_reg2_reg[15]_8 ;
  wire [0:0]\slv_reg2_reg[15]_9 ;
  wire [7:0]switch;

  lab4_design_lab4_ip_0_6_lab4_ip_v1_0_S00_AXI lab4_ip_v1_0_S00_AXI_inst
       (.BCLK_int_reg(BCLK_int_reg),
        .CO(L_carry__2[12]),
        .\Data_Out_int[18]_i_4 (\Data_Out_int[18]_i_4 ),
        .\Data_Out_int[22]_i_11 (\Data_Out_int[22]_i_11 ),
        .\Data_Out_int[22]_i_14 (\Data_Out_int[22]_i_14 ),
        .\Data_Out_int[22]_i_17 (\Data_Out_int[22]_i_17 ),
        .\Data_Out_int[22]_i_8 (\Data_Out_int[22]_i_8 ),
        .\Data_Out_int[26]_i_11 (\Data_Out_int[26]_i_11 ),
        .\Data_Out_int[26]_i_14 (\Data_Out_int[26]_i_14 ),
        .\Data_Out_int[26]_i_17 (\Data_Out_int[26]_i_17 ),
        .\Data_Out_int[26]_i_8 (\Data_Out_int[26]_i_8 ),
        .\Data_Out_int[30]_i_15 (S),
        .\Data_Out_int_reg[30] (\Data_Out_int_reg[30] ),
        .LRCLK_reg(LRCLK_reg),
        .L__972_carry_i_10(L__972_carry_i_10),
        .L__972_carry_i_19(L__972_carry_i_19),
        .O(O),
        .S(L_carry__2[11:9]),
        .ac_dac_sdata(ac_dac_sdata),
        .ac_mclk(ac_mclk),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_wready_reg_0(axi_wready_reg),
        .btn(btn),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .scl(scl),
        .sda(sda),
        .\slv_reg2_reg[15]_0 (\slv_reg2_reg[15] ),
        .\slv_reg2_reg[15]_1 (\slv_reg2_reg[15]_0 ),
        .\slv_reg2_reg[15]_10 (\slv_reg2_reg[15]_7 ),
        .\slv_reg2_reg[15]_11 (\slv_reg2_reg[15]_8 ),
        .\slv_reg2_reg[15]_12 (L_carry__2[0]),
        .\slv_reg2_reg[15]_13 (\slv_reg2_reg[15]_9 ),
        .\slv_reg2_reg[15]_2 (L_carry__2[8:5]),
        .\slv_reg2_reg[15]_3 (\slv_reg2_reg[15]_1 ),
        .\slv_reg2_reg[15]_4 (\slv_reg2_reg[15]_2 ),
        .\slv_reg2_reg[15]_5 (\slv_reg2_reg[15]_3 ),
        .\slv_reg2_reg[15]_6 (\slv_reg2_reg[15]_4 ),
        .\slv_reg2_reg[15]_7 (L_carry__2[4:1]),
        .\slv_reg2_reg[15]_8 (\slv_reg2_reg[15]_5 ),
        .\slv_reg2_reg[15]_9 (\slv_reg2_reg[15]_6 ),
        .switch(switch));
endmodule

(* ORIG_REF_NAME = "lab4_ip_v1_0_S00_AXI" *) 
module lab4_design_lab4_ip_0_6_lab4_ip_v1_0_S00_AXI
   (ac_mclk,
    axi_wready_reg_0,
    axi_awready_reg_0,
    axi_arready_reg_0,
    BCLK_int_reg,
    LRCLK_reg,
    s00_axi_bvalid,
    s00_axi_rvalid,
    CO,
    S,
    O,
    \slv_reg2_reg[15]_0 ,
    \slv_reg2_reg[15]_1 ,
    \slv_reg2_reg[15]_2 ,
    \slv_reg2_reg[15]_3 ,
    \slv_reg2_reg[15]_4 ,
    \slv_reg2_reg[15]_5 ,
    \slv_reg2_reg[15]_6 ,
    \slv_reg2_reg[15]_7 ,
    \slv_reg2_reg[15]_8 ,
    \slv_reg2_reg[15]_9 ,
    \slv_reg2_reg[15]_10 ,
    \slv_reg2_reg[15]_11 ,
    \slv_reg2_reg[15]_12 ,
    \slv_reg2_reg[15]_13 ,
    ac_dac_sdata,
    s00_axi_rdata,
    scl,
    sda,
    s00_axi_aresetn,
    s00_axi_aclk,
    btn,
    \Data_Out_int[30]_i_15 ,
    \Data_Out_int[26]_i_8 ,
    \Data_Out_int[26]_i_11 ,
    \Data_Out_int[26]_i_14 ,
    \Data_Out_int[26]_i_17 ,
    \Data_Out_int[22]_i_8 ,
    \Data_Out_int[22]_i_11 ,
    \Data_Out_int[22]_i_14 ,
    \Data_Out_int[22]_i_17 ,
    \Data_Out_int[18]_i_4 ,
    L__972_carry_i_19,
    L__972_carry_i_10,
    \Data_Out_int_reg[30] ,
    switch,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output ac_mclk;
  output axi_wready_reg_0;
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output BCLK_int_reg;
  output LRCLK_reg;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [0:0]CO;
  output [2:0]S;
  output [0:0]O;
  output [0:0]\slv_reg2_reg[15]_0 ;
  output [0:0]\slv_reg2_reg[15]_1 ;
  output [3:0]\slv_reg2_reg[15]_2 ;
  output [0:0]\slv_reg2_reg[15]_3 ;
  output [0:0]\slv_reg2_reg[15]_4 ;
  output [0:0]\slv_reg2_reg[15]_5 ;
  output [0:0]\slv_reg2_reg[15]_6 ;
  output [3:0]\slv_reg2_reg[15]_7 ;
  output [0:0]\slv_reg2_reg[15]_8 ;
  output [0:0]\slv_reg2_reg[15]_9 ;
  output [0:0]\slv_reg2_reg[15]_10 ;
  output [0:0]\slv_reg2_reg[15]_11 ;
  output [0:0]\slv_reg2_reg[15]_12 ;
  output [0:0]\slv_reg2_reg[15]_13 ;
  output ac_dac_sdata;
  output [31:0]s00_axi_rdata;
  inout scl;
  inout sda;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [4:0]btn;
  input [0:0]\Data_Out_int[30]_i_15 ;
  input [0:0]\Data_Out_int[26]_i_8 ;
  input [0:0]\Data_Out_int[26]_i_11 ;
  input [0:0]\Data_Out_int[26]_i_14 ;
  input [0:0]\Data_Out_int[26]_i_17 ;
  input [0:0]\Data_Out_int[22]_i_8 ;
  input [0:0]\Data_Out_int[22]_i_11 ;
  input [0:0]\Data_Out_int[22]_i_14 ;
  input [0:0]\Data_Out_int[22]_i_17 ;
  input [0:0]\Data_Out_int[18]_i_4 ;
  input [0:0]L__972_carry_i_19;
  input [0:0]L__972_carry_i_10;
  input [0:0]\Data_Out_int_reg[30] ;
  input [7:0]switch;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire BCLK_int_reg;
  wire [7:0]C;
  wire [0:0]CO;
  wire [15:0]DO;
  wire [0:0]\Data_Out_int[18]_i_4 ;
  wire [0:0]\Data_Out_int[22]_i_11 ;
  wire [0:0]\Data_Out_int[22]_i_14 ;
  wire [0:0]\Data_Out_int[22]_i_17 ;
  wire [0:0]\Data_Out_int[22]_i_8 ;
  wire [0:0]\Data_Out_int[26]_i_11 ;
  wire [0:0]\Data_Out_int[26]_i_14 ;
  wire [0:0]\Data_Out_int[26]_i_17 ;
  wire [0:0]\Data_Out_int[26]_i_8 ;
  wire [0:0]\Data_Out_int[30]_i_15 ;
  wire [0:0]\Data_Out_int_reg[30] ;
  wire [2:1]L;
  wire LRCLK_reg;
  wire [0:0]L__972_carry_i_10;
  wire [0:0]L__972_carry_i_19;
  wire [0:0]O;
  wire [2:0]S;
  wire ac_dac_sdata;
  wire ac_mclk;
  wire ampl_sig;
  wire ampl_sig1;
  wire [7:0]ampl_sig_reg;
  wire \audio_inst/rst ;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire [4:0]btn;
  wire cntr_btn;
  wire [15:6]count;
  wire [14:0]\counter_inst/p_0_in ;
  wire cu_inst_n_0;
  wire cu_inst_n_16;
  wire cu_inst_n_17;
  wire cu_inst_n_18;
  wire cu_inst_n_19;
  wire cu_inst_n_20;
  wire cu_inst_n_21;
  wire cu_inst_n_22;
  wire cu_inst_n_23;
  wire cu_inst_n_24;
  wire cu_inst_n_25;
  wire cu_inst_n_26;
  wire cu_inst_n_27;
  wire cu_inst_n_28;
  wire cu_inst_n_29;
  wire cu_inst_n_30;
  wire cu_inst_n_31;
  wire cu_inst_n_32;
  wire dp_inst_n_27;
  wire dp_inst_n_28;
  wire dp_inst_n_29;
  wire dp_inst_n_30;
  wire dp_inst_n_31;
  wire dp_inst_n_32;
  wire dp_inst_n_49;
  wire dp_inst_n_50;
  wire dp_inst_n_51;
  wire dp_inst_n_52;
  wire dp_inst_n_53;
  wire dp_inst_n_54;
  wire dp_inst_n_55;
  wire dp_inst_n_56;
  wire dp_inst_n_57;
  wire dp_inst_n_58;
  wire dp_inst_n_59;
  wire dp_inst_n_60;
  wire dp_inst_n_61;
  wire dp_inst_n_62;
  wire dp_inst_n_63;
  wire dp_inst_n_64;
  wire dp_inst_n_68;
  wire dp_inst_n_69;
  wire inst_cntr_btn_n_1;
  wire inst_cntr_btn_n_2;
  wire inst_cntr_btn_n_3;
  wire inst_cntr_btn_n_4;
  wire inst_down_btn_n_0;
  wire inst_down_btn_n_1;
  wire inst_down_btn_n_10;
  wire inst_down_btn_n_2;
  wire inst_down_btn_n_3;
  wire inst_down_btn_n_4;
  wire inst_down_btn_n_5;
  wire inst_down_btn_n_6;
  wire inst_down_btn_n_7;
  wire inst_down_btn_n_8;
  wire inst_down_btn_n_9;
  wire inst_left_btn_n_1;
  wire inst_left_btn_n_10;
  wire inst_left_btn_n_2;
  wire inst_left_btn_n_3;
  wire inst_left_btn_n_4;
  wire inst_left_btn_n_5;
  wire inst_left_btn_n_6;
  wire inst_left_btn_n_7;
  wire inst_left_btn_n_8;
  wire inst_left_btn_n_9;
  wire left_btn;
  wire phase_ampl_inst_n_100;
  wire phase_ampl_inst_n_101;
  wire phase_ampl_inst_n_102;
  wire phase_ampl_inst_n_103;
  wire phase_ampl_inst_n_104;
  wire phase_ampl_inst_n_105;
  wire phase_ampl_inst_n_106;
  wire phase_ampl_inst_n_107;
  wire phase_ampl_inst_n_108;
  wire phase_ampl_inst_n_12;
  wire phase_ampl_inst_n_125;
  wire phase_ampl_inst_n_126;
  wire phase_ampl_inst_n_127;
  wire phase_ampl_inst_n_128;
  wire phase_ampl_inst_n_129;
  wire phase_ampl_inst_n_13;
  wire phase_ampl_inst_n_130;
  wire phase_ampl_inst_n_131;
  wire phase_ampl_inst_n_132;
  wire phase_ampl_inst_n_133;
  wire phase_ampl_inst_n_134;
  wire phase_ampl_inst_n_135;
  wire phase_ampl_inst_n_136;
  wire phase_ampl_inst_n_137;
  wire phase_ampl_inst_n_138;
  wire phase_ampl_inst_n_139;
  wire phase_ampl_inst_n_140;
  wire phase_ampl_inst_n_141;
  wire phase_ampl_inst_n_142;
  wire phase_ampl_inst_n_143;
  wire phase_ampl_inst_n_144;
  wire phase_ampl_inst_n_145;
  wire phase_ampl_inst_n_146;
  wire phase_ampl_inst_n_147;
  wire phase_ampl_inst_n_148;
  wire phase_ampl_inst_n_149;
  wire phase_ampl_inst_n_150;
  wire phase_ampl_inst_n_151;
  wire phase_ampl_inst_n_152;
  wire phase_ampl_inst_n_153;
  wire phase_ampl_inst_n_154;
  wire phase_ampl_inst_n_155;
  wire phase_ampl_inst_n_156;
  wire phase_ampl_inst_n_157;
  wire phase_ampl_inst_n_158;
  wire phase_ampl_inst_n_159;
  wire phase_ampl_inst_n_160;
  wire phase_ampl_inst_n_161;
  wire phase_ampl_inst_n_162;
  wire phase_ampl_inst_n_163;
  wire phase_ampl_inst_n_164;
  wire phase_ampl_inst_n_165;
  wire phase_ampl_inst_n_166;
  wire phase_ampl_inst_n_167;
  wire phase_ampl_inst_n_168;
  wire phase_ampl_inst_n_169;
  wire phase_ampl_inst_n_170;
  wire phase_ampl_inst_n_171;
  wire phase_ampl_inst_n_172;
  wire phase_ampl_inst_n_173;
  wire phase_ampl_inst_n_174;
  wire phase_ampl_inst_n_175;
  wire phase_ampl_inst_n_30;
  wire phase_ampl_inst_n_31;
  wire phase_ampl_inst_n_32;
  wire phase_ampl_inst_n_33;
  wire phase_ampl_inst_n_34;
  wire phase_ampl_inst_n_35;
  wire phase_ampl_inst_n_36;
  wire phase_ampl_inst_n_37;
  wire phase_ampl_inst_n_38;
  wire phase_ampl_inst_n_39;
  wire phase_ampl_inst_n_40;
  wire phase_ampl_inst_n_41;
  wire phase_ampl_inst_n_42;
  wire phase_ampl_inst_n_43;
  wire phase_ampl_inst_n_44;
  wire phase_ampl_inst_n_45;
  wire phase_ampl_inst_n_46;
  wire phase_ampl_inst_n_47;
  wire phase_ampl_inst_n_56;
  wire phase_ampl_inst_n_57;
  wire phase_ampl_inst_n_58;
  wire phase_ampl_inst_n_59;
  wire phase_ampl_inst_n_60;
  wire phase_ampl_inst_n_61;
  wire phase_ampl_inst_n_62;
  wire phase_ampl_inst_n_63;
  wire phase_ampl_inst_n_91;
  wire phase_ampl_inst_n_92;
  wire phase_ampl_inst_n_93;
  wire phase_ampl_inst_n_94;
  wire phase_ampl_inst_n_95;
  wire phase_ampl_inst_n_96;
  wire phase_ampl_inst_n_97;
  wire phase_ampl_inst_n_98;
  wire phase_ampl_inst_n_99;
  wire [15:0]phase_sig;
  wire phase_sig2;
  wire [15:0]readChord;
  wire [31:0]reg_data_out;
  wire right_btn;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire scl;
  wire sda;
  wire [0:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg[0]_rep__0_n_0 ;
  wire \slv_reg0_reg[0]_rep__1_n_0 ;
  wire \slv_reg0_reg[0]_rep_n_0 ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg1_reg_n_0_[4] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [0:0]\slv_reg2_reg[15]_0 ;
  wire [0:0]\slv_reg2_reg[15]_1 ;
  wire [0:0]\slv_reg2_reg[15]_10 ;
  wire [0:0]\slv_reg2_reg[15]_11 ;
  wire [0:0]\slv_reg2_reg[15]_12 ;
  wire [0:0]\slv_reg2_reg[15]_13 ;
  wire [3:0]\slv_reg2_reg[15]_2 ;
  wire [0:0]\slv_reg2_reg[15]_3 ;
  wire [0:0]\slv_reg2_reg[15]_4 ;
  wire [0:0]\slv_reg2_reg[15]_5 ;
  wire [0:0]\slv_reg2_reg[15]_6 ;
  wire [3:0]\slv_reg2_reg[15]_7 ;
  wire [0:0]\slv_reg2_reg[15]_8 ;
  wire [0:0]\slv_reg2_reg[15]_9 ;
  wire \slv_reg2_reg_n_0_[0] ;
  wire \slv_reg2_reg_n_0_[10] ;
  wire \slv_reg2_reg_n_0_[11] ;
  wire \slv_reg2_reg_n_0_[12] ;
  wire \slv_reg2_reg_n_0_[13] ;
  wire \slv_reg2_reg_n_0_[14] ;
  wire \slv_reg2_reg_n_0_[15] ;
  wire \slv_reg2_reg_n_0_[1] ;
  wire \slv_reg2_reg_n_0_[2] ;
  wire \slv_reg2_reg_n_0_[3] ;
  wire \slv_reg2_reg_n_0_[4] ;
  wire \slv_reg2_reg_n_0_[5] ;
  wire \slv_reg2_reg_n_0_[6] ;
  wire \slv_reg2_reg_n_0_[7] ;
  wire \slv_reg2_reg_n_0_[8] ;
  wire \slv_reg2_reg_n_0_[9] ;
  wire [0:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire \slv_reg3_reg_n_0_[10] ;
  wire \slv_reg3_reg_n_0_[11] ;
  wire \slv_reg3_reg_n_0_[12] ;
  wire \slv_reg3_reg_n_0_[13] ;
  wire \slv_reg3_reg_n_0_[14] ;
  wire \slv_reg3_reg_n_0_[15] ;
  wire \slv_reg3_reg_n_0_[16] ;
  wire \slv_reg3_reg_n_0_[17] ;
  wire \slv_reg3_reg_n_0_[18] ;
  wire \slv_reg3_reg_n_0_[19] ;
  wire \slv_reg3_reg_n_0_[1] ;
  wire \slv_reg3_reg_n_0_[20] ;
  wire \slv_reg3_reg_n_0_[21] ;
  wire \slv_reg3_reg_n_0_[22] ;
  wire \slv_reg3_reg_n_0_[23] ;
  wire \slv_reg3_reg_n_0_[24] ;
  wire \slv_reg3_reg_n_0_[25] ;
  wire \slv_reg3_reg_n_0_[26] ;
  wire \slv_reg3_reg_n_0_[27] ;
  wire \slv_reg3_reg_n_0_[28] ;
  wire \slv_reg3_reg_n_0_[29] ;
  wire \slv_reg3_reg_n_0_[2] ;
  wire \slv_reg3_reg_n_0_[30] ;
  wire \slv_reg3_reg_n_0_[31] ;
  wire \slv_reg3_reg_n_0_[3] ;
  wire \slv_reg3_reg_n_0_[4] ;
  wire \slv_reg3_reg_n_0_[5] ;
  wire \slv_reg3_reg_n_0_[6] ;
  wire \slv_reg3_reg_n_0_[7] ;
  wire \slv_reg3_reg_n_0_[8] ;
  wire \slv_reg3_reg_n_0_[9] ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;
  wire sw;
  wire [7:0]switch;
  wire up_btn;
  wire waveSel;

  LUT6 #(
    .INIT(64'hBFFFBF00BF00BF00)) 
    aw_en_i_1
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(\audio_inst/rst ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(\audio_inst/rst ));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(\audio_inst/rst ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(\audio_inst/rst ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg_0),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg_0),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(\audio_inst/rst ));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(\audio_inst/rst ));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(\audio_inst/rst ));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(axi_wready_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(\audio_inst/rst ));
  LUT6 #(
    .INIT(64'hF08800FFF0880000)) 
    \axi_rdata[10]_i_2 
       (.I0(slv_reg0),
        .I1(\slv_reg2_reg_n_0_[10] ),
        .I2(\slv_reg3_reg_n_0_[10] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[10] ),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF08800FFF0880000)) 
    \axi_rdata[12]_i_2 
       (.I0(slv_reg0),
        .I1(\slv_reg2_reg_n_0_[12] ),
        .I2(\slv_reg3_reg_n_0_[12] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[12] ),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF08800FFF0880000)) 
    \axi_rdata[13]_i_2 
       (.I0(slv_reg0),
        .I1(\slv_reg2_reg_n_0_[13] ),
        .I2(\slv_reg3_reg_n_0_[13] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[13] ),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF08800FFF0880000)) 
    \axi_rdata[14]_i_2 
       (.I0(slv_reg0),
        .I1(\slv_reg2_reg_n_0_[14] ),
        .I2(\slv_reg3_reg_n_0_[14] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[14] ),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF08800FFF0880000)) 
    \axi_rdata[15]_i_2 
       (.I0(slv_reg0),
        .I1(\slv_reg2_reg_n_0_[15] ),
        .I2(\slv_reg3_reg_n_0_[15] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[15] ),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[16]_i_1 
       (.I0(\slv_reg0_reg_n_0_[16] ),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg3_reg_n_0_[16] ),
        .O(reg_data_out[16]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[17]_i_1 
       (.I0(\slv_reg0_reg_n_0_[17] ),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg3_reg_n_0_[17] ),
        .O(reg_data_out[17]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[18]_i_1 
       (.I0(\slv_reg0_reg_n_0_[18] ),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg3_reg_n_0_[18] ),
        .O(reg_data_out[18]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[19]_i_1 
       (.I0(\slv_reg0_reg_n_0_[19] ),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg3_reg_n_0_[19] ),
        .O(reg_data_out[19]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[20]_i_1 
       (.I0(\slv_reg0_reg_n_0_[20] ),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg3_reg_n_0_[20] ),
        .O(reg_data_out[20]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[21]_i_1 
       (.I0(\slv_reg0_reg_n_0_[21] ),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg3_reg_n_0_[21] ),
        .O(reg_data_out[21]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[22]_i_1 
       (.I0(\slv_reg0_reg_n_0_[22] ),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg3_reg_n_0_[22] ),
        .O(reg_data_out[22]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[23]_i_1 
       (.I0(\slv_reg0_reg_n_0_[23] ),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg3_reg_n_0_[23] ),
        .O(reg_data_out[23]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[24]_i_1 
       (.I0(\slv_reg0_reg_n_0_[24] ),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg3_reg_n_0_[24] ),
        .O(reg_data_out[24]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[25]_i_1 
       (.I0(\slv_reg0_reg_n_0_[25] ),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg3_reg_n_0_[25] ),
        .O(reg_data_out[25]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[26]_i_1 
       (.I0(\slv_reg0_reg_n_0_[26] ),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg3_reg_n_0_[26] ),
        .O(reg_data_out[26]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[27]_i_1 
       (.I0(\slv_reg0_reg_n_0_[27] ),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg3_reg_n_0_[27] ),
        .O(reg_data_out[27]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[28]_i_1 
       (.I0(\slv_reg0_reg_n_0_[28] ),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg3_reg_n_0_[28] ),
        .O(reg_data_out[28]));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[29]_i_1 
       (.I0(\slv_reg0_reg_n_0_[29] ),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg3_reg_n_0_[29] ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF08800FFF0880000)) 
    \axi_rdata[2]_i_2 
       (.I0(slv_reg0),
        .I1(\slv_reg2_reg_n_0_[2] ),
        .I2(\slv_reg3_reg_n_0_[2] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[2] ),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[30]_i_1 
       (.I0(\slv_reg0_reg_n_0_[30] ),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg3_reg_n_0_[30] ),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT4 #(
    .INIT(16'hC202)) 
    \axi_rdata[31]_i_2 
       (.I0(\slv_reg0_reg_n_0_[31] ),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg3_reg_n_0_[31] ),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF08800FFF0880000)) 
    \axi_rdata[4]_i_2 
       (.I0(slv_reg0),
        .I1(\slv_reg2_reg_n_0_[4] ),
        .I2(\slv_reg3_reg_n_0_[4] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[4] ),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF08800FFF0880000)) 
    \axi_rdata[8]_i_2 
       (.I0(slv_reg0),
        .I1(\slv_reg2_reg_n_0_[8] ),
        .I2(\slv_reg3_reg_n_0_[8] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[8] ),
        .O(\axi_rdata[8]_i_2_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(\audio_inst/rst ));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(\audio_inst/rst ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(\audio_inst/rst ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(axi_wready_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(\audio_inst/rst ));
  lab4_design_lab4_ip_0_6_lab4_controlunit cu_inst
       (.E(cu_inst_n_0),
        .Q({count,dp_inst_n_27,dp_inst_n_28,dp_inst_n_29,dp_inst_n_30,dp_inst_n_31,dp_inst_n_32}),
        .S({cu_inst_n_16,cu_inst_n_17,cu_inst_n_18,cu_inst_n_19}),
        .SR(cu_inst_n_32),
        .\count_ctrl_reg[0]_0 ({cu_inst_n_20,cu_inst_n_21,cu_inst_n_22,cu_inst_n_23}),
        .\count_ctrl_reg[0]_1 ({cu_inst_n_24,cu_inst_n_25,cu_inst_n_26,cu_inst_n_27}),
        .p_0_in(\counter_inst/p_0_in ),
        .\processCount_reg[15] ({cu_inst_n_28,cu_inst_n_29,cu_inst_n_30,cu_inst_n_31}),
        .\processCount_reg[15]_0 (phase_sig),
        .\processCount_reg[15]_1 ({\slv_reg1_reg_n_0_[15] ,\slv_reg1_reg_n_0_[14] ,\slv_reg1_reg_n_0_[13] ,\slv_reg1_reg_n_0_[12] ,\slv_reg1_reg_n_0_[11] ,\slv_reg1_reg_n_0_[10] ,\slv_reg1_reg_n_0_[9] ,\slv_reg1_reg_n_0_[8] ,\slv_reg1_reg_n_0_[7] ,\slv_reg1_reg_n_0_[6] ,\slv_reg1_reg_n_0_[5] ,\slv_reg1_reg_n_0_[4] ,\slv_reg1_reg_n_0_[3] ,\slv_reg1_reg_n_0_[2] ,\slv_reg1_reg_n_0_[1] ,\slv_reg1_reg_n_0_[0] }),
        .\processCount_reg[3] (\slv_reg0_reg[0]_rep_n_0 ),
        .rst(\audio_inst/rst ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .sw(sw));
  lab4_design_lab4_ip_0_6_lab4_datapath dp_inst
       (.BCLK_int_reg(BCLK_int_reg),
        .CO(dp_inst_n_61),
        .DI({phase_ampl_inst_n_125,phase_ampl_inst_n_126,phase_ampl_inst_n_127,phase_ampl_inst_n_128}),
        .DOADO(DO),
        .\Data_Out_int[30]_i_19 ({phase_ampl_inst_n_137,phase_ampl_inst_n_138,phase_ampl_inst_n_139,phase_ampl_inst_n_140}),
        .\Data_Out_int[30]_i_19_0 ({phase_ampl_inst_n_156,phase_ampl_inst_n_157,phase_ampl_inst_n_158,phase_ampl_inst_n_159}),
        .\Data_Out_int[30]_i_34 ({phase_ampl_inst_n_133,phase_ampl_inst_n_134,phase_ampl_inst_n_135,phase_ampl_inst_n_136}),
        .\Data_Out_int[30]_i_34_0 ({phase_ampl_inst_n_152,phase_ampl_inst_n_153,phase_ampl_inst_n_154,phase_ampl_inst_n_155}),
        .\Data_Out_int[30]_i_49 ({phase_ampl_inst_n_129,phase_ampl_inst_n_130,phase_ampl_inst_n_131,phase_ampl_inst_n_132}),
        .\Data_Out_int[30]_i_49_0 ({phase_ampl_inst_n_148,phase_ampl_inst_n_149,phase_ampl_inst_n_150,phase_ampl_inst_n_151}),
        .\Data_Out_int[30]_i_64 ({phase_ampl_inst_n_144,phase_ampl_inst_n_145,phase_ampl_inst_n_146,phase_ampl_inst_n_147}),
        .\Data_Out_int_reg[18] (L),
        .\Data_Out_int_reg[18]_0 (\slv_reg2_reg[15]_12 ),
        .\Data_Out_int_reg[22] (\slv_reg2_reg[15]_7 [3]),
        .\Data_Out_int_reg[22]_0 (\slv_reg2_reg[15]_7 [2]),
        .\Data_Out_int_reg[22]_1 (\slv_reg2_reg[15]_7 [1]),
        .\Data_Out_int_reg[22]_2 (\slv_reg2_reg[15]_7 [0]),
        .\Data_Out_int_reg[26] (\slv_reg2_reg[15]_2 [3]),
        .\Data_Out_int_reg[26]_0 (\slv_reg2_reg[15]_2 [2]),
        .\Data_Out_int_reg[26]_1 (\slv_reg2_reg[15]_2 [1]),
        .\Data_Out_int_reg[26]_2 (\slv_reg2_reg[15]_2 [0]),
        .\Data_Out_int_reg[30] ({\Data_Out_int_reg[30] ,S}),
        .\Data_Out_int_reg[30]_i_4 (CO),
        .E(cu_inst_n_0),
        .LRCLK_reg(LRCLK_reg),
        .L__972_carry__0_0({phase_ampl_inst_n_92,phase_ampl_inst_n_93,phase_ampl_inst_n_94,phase_ampl_inst_n_95}),
        .L__972_carry__0_1({phase_ampl_inst_n_160,phase_ampl_inst_n_161,phase_ampl_inst_n_162,phase_ampl_inst_n_163}),
        .L__972_carry__1_0({phase_ampl_inst_n_96,phase_ampl_inst_n_97,phase_ampl_inst_n_98,phase_ampl_inst_n_99}),
        .L__972_carry__1_1({phase_ampl_inst_n_164,phase_ampl_inst_n_165,phase_ampl_inst_n_166,phase_ampl_inst_n_167}),
        .L__972_carry__2_0({phase_ampl_inst_n_100,phase_ampl_inst_n_101,phase_ampl_inst_n_102,phase_ampl_inst_n_103}),
        .L__972_carry__2_1({phase_ampl_inst_n_168,phase_ampl_inst_n_169,phase_ampl_inst_n_170,phase_ampl_inst_n_171}),
        .L__972_carry__3_0({phase_ampl_inst_n_104,phase_ampl_inst_n_105,phase_ampl_inst_n_106,phase_ampl_inst_n_107}),
        .L__972_carry__3_1({phase_ampl_inst_n_172,phase_ampl_inst_n_173,phase_ampl_inst_n_174,phase_ampl_inst_n_175}),
        .L__972_carry__3_2(phase_ampl_inst_n_108),
        .L__972_carry_i_1(phase_ampl_inst_n_91),
        .L__972_carry_i_8(dp_inst_n_69),
        .L_carry__2_0(dp_inst_n_68),
        .O({dp_inst_n_49,dp_inst_n_50,dp_inst_n_51,dp_inst_n_52}),
        .Q({count,dp_inst_n_27,dp_inst_n_28,dp_inst_n_29,dp_inst_n_30,dp_inst_n_31,dp_inst_n_32}),
        .S({cu_inst_n_16,cu_inst_n_17,cu_inst_n_18,cu_inst_n_19}),
        .SR(cu_inst_n_32),
        .ac_dac_sdata(ac_dac_sdata),
        .ac_mclk(ac_mclk),
        .\ampl_sig_reg[15] ({dp_inst_n_62,dp_inst_n_63,dp_inst_n_64}),
        .p_0_in(\counter_inst/p_0_in ),
        .\processCount_reg[11] ({cu_inst_n_24,cu_inst_n_25,cu_inst_n_26,cu_inst_n_27}),
        .\processCount_reg[15] ({cu_inst_n_28,cu_inst_n_29,cu_inst_n_30,cu_inst_n_31}),
        .\processCount_reg[7] ({cu_inst_n_20,cu_inst_n_21,cu_inst_n_22,cu_inst_n_23}),
        .rst(\audio_inst/rst ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .scl(scl),
        .sda(sda),
        .\sdp_bl.ramb18_dp_bl.ram18_bl (readChord),
        .\slv_reg0_reg[0]_rep ({dp_inst_n_53,dp_inst_n_54,dp_inst_n_55,dp_inst_n_56}),
        .\slv_reg0_reg[0]_rep_0 ({dp_inst_n_57,dp_inst_n_58,dp_inst_n_59,dp_inst_n_60}),
        .sw(sw));
  lab4_design_lab4_ip_0_6_btn_reader inst_cntr_btn
       (.CO(ampl_sig1),
        .E(inst_cntr_btn_n_3),
        .O({phase_ampl_inst_n_34,phase_ampl_inst_n_37}),
        .SR(inst_cntr_btn_n_1),
        .\ampl_sig_reg[15] (phase_ampl_inst_n_141),
        .\ampl_sig_reg[15]_0 (inst_down_btn_n_10),
        .btn(btn[4]),
        .btn_press_reg_0(inst_cntr_btn_n_2),
        .btn_press_reg_1(inst_cntr_btn_n_4),
        .cntr_btn(cntr_btn),
        .left_btn(left_btn),
        .\phase_sig_reg[15] (phase_ampl_inst_n_143),
        .\phase_sig_reg[15]_0 (phase_ampl_inst_n_142),
        .\phase_sig_reg[15]_1 (phase_sig2),
        .right_btn(right_btn),
        .rst(\audio_inst/rst ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .up_btn(up_btn),
        .waveSel(waveSel));
  lab4_design_lab4_ip_0_6_btn_reader_0 inst_down_btn
       (.C(C),
        .CO(inst_down_btn_n_4),
        .O({inst_down_btn_n_0,inst_down_btn_n_1,inst_down_btn_n_2,inst_down_btn_n_3}),
        .\ampl_sig[0]_i_3 ({phase_ampl_inst_n_56,phase_ampl_inst_n_57,phase_ampl_inst_n_58,phase_ampl_inst_n_59}),
        .\ampl_sig[0]_i_3_0 ({phase_ampl_inst_n_60,phase_ampl_inst_n_61,phase_ampl_inst_n_62,phase_ampl_inst_n_63}),
        .ampl_sig_reg(ampl_sig_reg),
        .\ampl_sig_reg[11] (inst_down_btn_n_9),
        .btn(btn[2]),
        .btn_press_reg_0(inst_down_btn_n_10),
        .rst(\audio_inst/rst ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .switch(switch),
        .\switch[7] ({inst_down_btn_n_5,inst_down_btn_n_6,inst_down_btn_n_7,inst_down_btn_n_8}));
  lab4_design_lab4_ip_0_6_btn_reader_1 inst_left_btn
       (.D({inst_left_btn_n_1,inst_left_btn_n_2,inst_left_btn_n_3,inst_left_btn_n_4,inst_left_btn_n_5,inst_left_btn_n_6,inst_left_btn_n_7,inst_left_btn_n_8,inst_left_btn_n_9,inst_left_btn_n_10}),
        .O({phase_ampl_inst_n_34,phase_ampl_inst_n_35,phase_ampl_inst_n_36,phase_ampl_inst_n_37}),
        .btn(btn[1]),
        .left_btn(left_btn),
        .\phase_sig_reg[11] ({phase_ampl_inst_n_31,phase_ampl_inst_n_32,phase_ampl_inst_n_33}),
        .\phase_sig_reg[11]_0 ({phase_ampl_inst_n_41,phase_ampl_inst_n_42,phase_ampl_inst_n_43}),
        .\phase_sig_reg[15] (phase_sig2),
        .\phase_sig_reg[15]_0 ({phase_ampl_inst_n_44,phase_ampl_inst_n_45,phase_ampl_inst_n_46,phase_ampl_inst_n_47}),
        .\phase_sig_reg[3] ({phase_ampl_inst_n_12,phase_ampl_inst_n_13}),
        .\phase_sig_reg[3]_0 ({phase_ampl_inst_n_38,phase_ampl_inst_n_39}),
        .\phase_sig_reg[7] (phase_ampl_inst_n_30),
        .\phase_sig_reg[7]_0 (phase_ampl_inst_n_40),
        .rst(\audio_inst/rst ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
  lab4_design_lab4_ip_0_6_btn_reader_2 inst_right_btn
       (.O({phase_ampl_inst_n_34,phase_ampl_inst_n_37}),
        .ampl_sig(ampl_sig),
        .\ampl_sig_reg[15] (phase_ampl_inst_n_143),
        .\ampl_sig_reg[15]_0 (phase_ampl_inst_n_142),
        .\ampl_sig_reg[15]_1 (inst_cntr_btn_n_2),
        .btn(btn[3]),
        .right_btn(right_btn),
        .rst(\audio_inst/rst ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
  lab4_design_lab4_ip_0_6_btn_reader_3 inst_up_btn
       (.btn(btn[0]),
        .rst(\audio_inst/rst ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .up_btn(up_btn));
  lab4_design_lab4_ip_0_6_phase_ampl_manager phase_ampl_inst
       (.CO(ampl_sig1),
        .D(reg_data_out[15:0]),
        .DI({phase_ampl_inst_n_125,phase_ampl_inst_n_126,phase_ampl_inst_n_127,phase_ampl_inst_n_128}),
        .DOADO(DO),
        .\Data_Out_int[18]_i_4 (\Data_Out_int[18]_i_4 ),
        .\Data_Out_int[22]_i_11 (\Data_Out_int[22]_i_11 ),
        .\Data_Out_int[22]_i_14 (\Data_Out_int[22]_i_14 ),
        .\Data_Out_int[22]_i_17 (\Data_Out_int[22]_i_17 ),
        .\Data_Out_int[22]_i_8 (\Data_Out_int[22]_i_8 ),
        .\Data_Out_int[26]_i_11 (\Data_Out_int[26]_i_11 ),
        .\Data_Out_int[26]_i_14 (\Data_Out_int[26]_i_14 ),
        .\Data_Out_int[26]_i_17 (\Data_Out_int[26]_i_17 ),
        .\Data_Out_int[26]_i_8 (\Data_Out_int[26]_i_8 ),
        .\Data_Out_int[30]_i_12 (dp_inst_n_68),
        .\Data_Out_int[30]_i_15 (\Data_Out_int[30]_i_15 ),
        .\Data_Out_int[30]_i_3 (dp_inst_n_61),
        .\Data_Out_int_reg[26]_i_44_0 (\slv_reg0_reg[0]_rep_n_0 ),
        .\Data_Out_int_reg[30]_i_17_0 ({dp_inst_n_53,dp_inst_n_54,dp_inst_n_55,dp_inst_n_56}),
        .\Data_Out_int_reg[30]_i_32_0 ({dp_inst_n_49,dp_inst_n_50,dp_inst_n_51,dp_inst_n_52}),
        .\Data_Out_int_reg[30]_i_47_0 (\slv_reg0_reg[0]_rep__1_n_0 ),
        .\Data_Out_int_reg[30]_i_4_0 ({dp_inst_n_62,dp_inst_n_63,dp_inst_n_64}),
        .\Data_Out_int_reg[30]_i_8_0 ({dp_inst_n_57,dp_inst_n_58,dp_inst_n_59,dp_inst_n_60}),
        .E(inst_cntr_btn_n_3),
        .L__972_carry__3_i_1(dp_inst_n_69),
        .L__972_carry_i_10(L__972_carry_i_10),
        .L__972_carry_i_18_0(\slv_reg0_reg[0]_rep__0_n_0 ),
        .L__972_carry_i_19(L__972_carry_i_19),
        .L_carry(readChord),
        .L_carry__2(CO),
        .L_carry__2_0({\slv_reg2_reg_n_0_[15] ,\slv_reg2_reg_n_0_[14] ,\slv_reg2_reg_n_0_[13] ,\slv_reg2_reg_n_0_[12] ,\slv_reg2_reg_n_0_[11] ,\slv_reg2_reg_n_0_[10] ,\slv_reg2_reg_n_0_[9] ,\slv_reg2_reg_n_0_[8] ,\slv_reg2_reg_n_0_[7] ,\slv_reg2_reg_n_0_[6] ,\slv_reg2_reg_n_0_[5] ,\slv_reg2_reg_n_0_[4] ,\slv_reg2_reg_n_0_[3] ,\slv_reg2_reg_n_0_[2] ,\slv_reg2_reg_n_0_[1] ,\slv_reg2_reg_n_0_[0] }),
        .O({inst_down_btn_n_0,inst_down_btn_n_1,inst_down_btn_n_2,inst_down_btn_n_3}),
        .Q(phase_sig),
        .SR(inst_cntr_btn_n_1),
        .ampl_sig(ampl_sig),
        .\ampl_sig_reg[11]_0 ({phase_ampl_inst_n_56,phase_ampl_inst_n_57,phase_ampl_inst_n_58,phase_ampl_inst_n_59}),
        .\ampl_sig_reg[11]_1 (phase_ampl_inst_n_141),
        .\ampl_sig_reg[11]_2 ({phase_ampl_inst_n_168,phase_ampl_inst_n_169,phase_ampl_inst_n_170,phase_ampl_inst_n_171}),
        .\ampl_sig_reg[11]_3 (inst_down_btn_n_4),
        .\ampl_sig_reg[15]_0 ({phase_ampl_inst_n_60,phase_ampl_inst_n_61,phase_ampl_inst_n_62,phase_ampl_inst_n_63}),
        .\ampl_sig_reg[15]_1 ({phase_ampl_inst_n_137,phase_ampl_inst_n_138,phase_ampl_inst_n_139,phase_ampl_inst_n_140}),
        .\ampl_sig_reg[15]_2 ({phase_ampl_inst_n_156,phase_ampl_inst_n_157,phase_ampl_inst_n_158,phase_ampl_inst_n_159}),
        .\ampl_sig_reg[15]_3 (inst_down_btn_n_9),
        .\ampl_sig_reg[3]_0 ({phase_ampl_inst_n_160,phase_ampl_inst_n_161,phase_ampl_inst_n_162,phase_ampl_inst_n_163}),
        .\ampl_sig_reg[6]_0 ({phase_ampl_inst_n_96,phase_ampl_inst_n_97,phase_ampl_inst_n_98,phase_ampl_inst_n_99}),
        .\ampl_sig_reg[7]_0 (ampl_sig_reg),
        .\ampl_sig_reg[7]_1 (C),
        .\ampl_sig_reg[7]_2 ({phase_ampl_inst_n_164,phase_ampl_inst_n_165,phase_ampl_inst_n_166,phase_ampl_inst_n_167}),
        .\ampl_sig_reg[7]_3 ({inst_down_btn_n_5,inst_down_btn_n_6,inst_down_btn_n_7,inst_down_btn_n_8}),
        .axi_araddr(axi_araddr),
        .\axi_rdata_reg[10] (\axi_rdata[10]_i_2_n_0 ),
        .\axi_rdata_reg[11] ({\slv_reg0_reg_n_0_[11] ,\slv_reg0_reg_n_0_[9] ,\slv_reg0_reg_n_0_[7] ,\slv_reg0_reg_n_0_[6] ,\slv_reg0_reg_n_0_[5] ,\slv_reg0_reg_n_0_[3] ,\slv_reg0_reg_n_0_[1] ,slv_reg0}),
        .\axi_rdata_reg[11]_0 ({\slv_reg3_reg_n_0_[11] ,\slv_reg3_reg_n_0_[9] ,\slv_reg3_reg_n_0_[7] ,\slv_reg3_reg_n_0_[6] ,\slv_reg3_reg_n_0_[5] ,\slv_reg3_reg_n_0_[3] ,\slv_reg3_reg_n_0_[1] ,slv_reg3}),
        .\axi_rdata_reg[12] (\axi_rdata[12]_i_2_n_0 ),
        .\axi_rdata_reg[13] (\axi_rdata[13]_i_2_n_0 ),
        .\axi_rdata_reg[14] (\axi_rdata[14]_i_2_n_0 ),
        .\axi_rdata_reg[15] (\axi_rdata[15]_i_2_n_0 ),
        .\axi_rdata_reg[15]_0 ({\slv_reg1_reg_n_0_[15] ,\slv_reg1_reg_n_0_[14] ,\slv_reg1_reg_n_0_[13] ,\slv_reg1_reg_n_0_[12] ,\slv_reg1_reg_n_0_[11] ,\slv_reg1_reg_n_0_[10] ,\slv_reg1_reg_n_0_[9] ,\slv_reg1_reg_n_0_[8] ,\slv_reg1_reg_n_0_[7] ,\slv_reg1_reg_n_0_[6] ,\slv_reg1_reg_n_0_[5] ,\slv_reg1_reg_n_0_[4] ,\slv_reg1_reg_n_0_[3] ,\slv_reg1_reg_n_0_[2] ,\slv_reg1_reg_n_0_[1] ,\slv_reg1_reg_n_0_[0] }),
        .\axi_rdata_reg[2] (\axi_rdata[2]_i_2_n_0 ),
        .\axi_rdata_reg[4] (\axi_rdata[4]_i_2_n_0 ),
        .\axi_rdata_reg[8] (\axi_rdata[8]_i_2_n_0 ),
        .cntr_btn(cntr_btn),
        .left_btn(left_btn),
        .\phase_sig_reg[11]_0 ({phase_ampl_inst_n_31,phase_ampl_inst_n_32,phase_ampl_inst_n_33}),
        .\phase_sig_reg[11]_1 ({phase_ampl_inst_n_41,phase_ampl_inst_n_42,phase_ampl_inst_n_43}),
        .\phase_sig_reg[11]_2 (phase_ampl_inst_n_143),
        .\phase_sig_reg[14]_0 (phase_sig2),
        .\phase_sig_reg[14]_1 ({phase_ampl_inst_n_44,phase_ampl_inst_n_45,phase_ampl_inst_n_46,phase_ampl_inst_n_47}),
        .\phase_sig_reg[15]_0 ({phase_ampl_inst_n_34,phase_ampl_inst_n_35,phase_ampl_inst_n_36,phase_ampl_inst_n_37}),
        .\phase_sig_reg[15]_1 (phase_ampl_inst_n_142),
        .\phase_sig_reg[15]_2 ({inst_left_btn_n_1,inst_left_btn_n_2,inst_left_btn_n_3,inst_left_btn_n_4,inst_left_btn_n_5,inst_left_btn_n_6,inst_left_btn_n_7,inst_left_btn_n_8,inst_left_btn_n_9,inst_left_btn_n_10}),
        .\phase_sig_reg[3]_0 ({phase_ampl_inst_n_12,phase_ampl_inst_n_13}),
        .\phase_sig_reg[3]_1 ({phase_ampl_inst_n_38,phase_ampl_inst_n_39}),
        .\phase_sig_reg[7]_0 (phase_ampl_inst_n_30),
        .\phase_sig_reg[7]_1 (phase_ampl_inst_n_40),
        .rst(\audio_inst/rst ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .signalSel_reg_0(inst_cntr_btn_n_4),
        .\slv_reg0_reg[0]_rep ({phase_ampl_inst_n_129,phase_ampl_inst_n_130,phase_ampl_inst_n_131,phase_ampl_inst_n_132}),
        .\slv_reg0_reg[0]_rep_0 ({phase_ampl_inst_n_133,phase_ampl_inst_n_134,phase_ampl_inst_n_135,phase_ampl_inst_n_136}),
        .\slv_reg0_reg[0]_rep_1 ({phase_ampl_inst_n_148,phase_ampl_inst_n_149,phase_ampl_inst_n_150,phase_ampl_inst_n_151}),
        .\slv_reg0_reg[0]_rep_2 ({phase_ampl_inst_n_152,phase_ampl_inst_n_153,phase_ampl_inst_n_154,phase_ampl_inst_n_155}),
        .\slv_reg0_reg[0]_rep__1 ({phase_ampl_inst_n_92,phase_ampl_inst_n_93,phase_ampl_inst_n_94,phase_ampl_inst_n_95}),
        .\slv_reg0_reg[0]_rep__1_0 ({phase_ampl_inst_n_144,phase_ampl_inst_n_145,phase_ampl_inst_n_146,phase_ampl_inst_n_147}),
        .\slv_reg2_reg[10] ({phase_ampl_inst_n_100,phase_ampl_inst_n_101,phase_ampl_inst_n_102,phase_ampl_inst_n_103}),
        .\slv_reg2_reg[14] ({phase_ampl_inst_n_104,phase_ampl_inst_n_105,phase_ampl_inst_n_106,phase_ampl_inst_n_107}),
        .\slv_reg2_reg[15] (S),
        .\slv_reg2_reg[15]_0 (O),
        .\slv_reg2_reg[15]_1 (\slv_reg2_reg[15]_0 ),
        .\slv_reg2_reg[15]_10 (\slv_reg2_reg[15]_6 ),
        .\slv_reg2_reg[15]_11 (\slv_reg2_reg[15]_7 [3]),
        .\slv_reg2_reg[15]_12 (\slv_reg2_reg[15]_8 ),
        .\slv_reg2_reg[15]_13 (\slv_reg2_reg[15]_7 [2]),
        .\slv_reg2_reg[15]_14 (\slv_reg2_reg[15]_9 ),
        .\slv_reg2_reg[15]_15 (\slv_reg2_reg[15]_7 [1]),
        .\slv_reg2_reg[15]_16 (\slv_reg2_reg[15]_10 ),
        .\slv_reg2_reg[15]_17 (\slv_reg2_reg[15]_7 [0]),
        .\slv_reg2_reg[15]_18 (\slv_reg2_reg[15]_11 ),
        .\slv_reg2_reg[15]_19 (\slv_reg2_reg[15]_12 ),
        .\slv_reg2_reg[15]_2 (\slv_reg2_reg[15]_1 ),
        .\slv_reg2_reg[15]_20 (\slv_reg2_reg[15]_13 ),
        .\slv_reg2_reg[15]_21 (L),
        .\slv_reg2_reg[15]_22 (phase_ampl_inst_n_91),
        .\slv_reg2_reg[15]_23 (phase_ampl_inst_n_108),
        .\slv_reg2_reg[15]_24 ({phase_ampl_inst_n_172,phase_ampl_inst_n_173,phase_ampl_inst_n_174,phase_ampl_inst_n_175}),
        .\slv_reg2_reg[15]_3 (\slv_reg2_reg[15]_2 [3]),
        .\slv_reg2_reg[15]_4 (\slv_reg2_reg[15]_3 ),
        .\slv_reg2_reg[15]_5 (\slv_reg2_reg[15]_2 [2]),
        .\slv_reg2_reg[15]_6 (\slv_reg2_reg[15]_4 ),
        .\slv_reg2_reg[15]_7 (\slv_reg2_reg[15]_2 [1]),
        .\slv_reg2_reg[15]_8 (\slv_reg2_reg[15]_5 ),
        .\slv_reg2_reg[15]_9 (\slv_reg2_reg[15]_2 [0]),
        .switch(switch),
        .waveSel(waveSel));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "slv_reg0_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0),
        .R(\audio_inst/rst ));
  (* ORIG_CELL_NAME = "slv_reg0_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[0]_rep 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg[0]_rep_n_0 ),
        .R(\audio_inst/rst ));
  (* ORIG_CELL_NAME = "slv_reg0_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[0]_rep__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg[0]_rep__0_n_0 ),
        .R(\audio_inst/rst ));
  (* ORIG_CELL_NAME = "slv_reg0_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[0]_rep__1 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg[0]_rep__1_n_0 ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(\audio_inst/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(\audio_inst/rst ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(\audio_inst/rst ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg2_reg_n_0_[0] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg2_reg_n_0_[10] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg2_reg_n_0_[11] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg2_reg_n_0_[12] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg2_reg_n_0_[13] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg2_reg_n_0_[14] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg2_reg_n_0_[15] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg2_reg_n_0_[1] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg2_reg_n_0_[2] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg2_reg_n_0_[3] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg2_reg_n_0_[4] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg2_reg_n_0_[5] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg2_reg_n_0_[6] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg2_reg_n_0_[7] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg2_reg_n_0_[8] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg2_reg_n_0_[9] ),
        .R(\audio_inst/rst ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(axi_wready_reg_0),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg3_reg_n_0_[10] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg3_reg_n_0_[11] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg3_reg_n_0_[12] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg3_reg_n_0_[13] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg3_reg_n_0_[14] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg3_reg_n_0_[15] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg3_reg_n_0_[16] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg3_reg_n_0_[17] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg3_reg_n_0_[18] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg3_reg_n_0_[19] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg3_reg_n_0_[1] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg3_reg_n_0_[20] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg3_reg_n_0_[21] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg3_reg_n_0_[22] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg3_reg_n_0_[23] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg3_reg_n_0_[24] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg3_reg_n_0_[25] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg3_reg_n_0_[26] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg3_reg_n_0_[27] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg3_reg_n_0_[28] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg3_reg_n_0_[29] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg3_reg_n_0_[2] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg3_reg_n_0_[30] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg3_reg_n_0_[31] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg3_reg_n_0_[3] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg3_reg_n_0_[4] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg3_reg_n_0_[5] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg3_reg_n_0_[6] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg3_reg_n_0_[7] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg3_reg_n_0_[8] ),
        .R(\audio_inst/rst ));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg3_reg_n_0_[9] ),
        .R(\audio_inst/rst ));
endmodule

(* ORIG_REF_NAME = "phase_ampl_manager" *) 
module lab4_design_lab4_ip_0_6_phase_ampl_manager
   (\ampl_sig_reg[7]_0 ,
    rst,
    \phase_sig_reg[14]_0 ,
    CO,
    waveSel,
    \phase_sig_reg[3]_0 ,
    Q,
    \phase_sig_reg[7]_0 ,
    \phase_sig_reg[11]_0 ,
    \phase_sig_reg[15]_0 ,
    \phase_sig_reg[3]_1 ,
    \phase_sig_reg[7]_1 ,
    \phase_sig_reg[11]_1 ,
    \phase_sig_reg[14]_1 ,
    \ampl_sig_reg[7]_1 ,
    \ampl_sig_reg[11]_0 ,
    \ampl_sig_reg[15]_0 ,
    L_carry__2,
    \slv_reg2_reg[15] ,
    \slv_reg2_reg[15]_0 ,
    \slv_reg2_reg[15]_1 ,
    \slv_reg2_reg[15]_2 ,
    \slv_reg2_reg[15]_3 ,
    \slv_reg2_reg[15]_4 ,
    \slv_reg2_reg[15]_5 ,
    \slv_reg2_reg[15]_6 ,
    \slv_reg2_reg[15]_7 ,
    \slv_reg2_reg[15]_8 ,
    \slv_reg2_reg[15]_9 ,
    \slv_reg2_reg[15]_10 ,
    \slv_reg2_reg[15]_11 ,
    \slv_reg2_reg[15]_12 ,
    \slv_reg2_reg[15]_13 ,
    \slv_reg2_reg[15]_14 ,
    \slv_reg2_reg[15]_15 ,
    \slv_reg2_reg[15]_16 ,
    \slv_reg2_reg[15]_17 ,
    \slv_reg2_reg[15]_18 ,
    \slv_reg2_reg[15]_19 ,
    \slv_reg2_reg[15]_20 ,
    \slv_reg2_reg[15]_21 ,
    \slv_reg2_reg[15]_22 ,
    \slv_reg0_reg[0]_rep__1 ,
    \ampl_sig_reg[6]_0 ,
    \slv_reg2_reg[10] ,
    \slv_reg2_reg[14] ,
    \slv_reg2_reg[15]_23 ,
    D,
    DI,
    \slv_reg0_reg[0]_rep ,
    \slv_reg0_reg[0]_rep_0 ,
    \ampl_sig_reg[15]_1 ,
    \ampl_sig_reg[11]_1 ,
    \phase_sig_reg[15]_1 ,
    \phase_sig_reg[11]_2 ,
    \slv_reg0_reg[0]_rep__1_0 ,
    \slv_reg0_reg[0]_rep_1 ,
    \slv_reg0_reg[0]_rep_2 ,
    \ampl_sig_reg[15]_2 ,
    \ampl_sig_reg[3]_0 ,
    \ampl_sig_reg[7]_2 ,
    \ampl_sig_reg[11]_2 ,
    \slv_reg2_reg[15]_24 ,
    ampl_sig,
    O,
    s00_axi_aclk,
    \ampl_sig_reg[7]_3 ,
    signalSel_reg_0,
    \ampl_sig_reg[11]_3 ,
    \Data_Out_int[30]_i_3 ,
    \Data_Out_int_reg[30]_i_32_0 ,
    \Data_Out_int_reg[30]_i_17_0 ,
    \Data_Out_int_reg[30]_i_8_0 ,
    \Data_Out_int_reg[30]_i_4_0 ,
    \Data_Out_int[30]_i_12 ,
    \Data_Out_int[30]_i_15 ,
    \Data_Out_int[26]_i_8 ,
    \Data_Out_int[26]_i_11 ,
    \Data_Out_int[26]_i_14 ,
    \Data_Out_int[26]_i_17 ,
    \Data_Out_int[22]_i_8 ,
    \Data_Out_int[22]_i_11 ,
    \Data_Out_int[22]_i_14 ,
    \Data_Out_int[22]_i_17 ,
    \Data_Out_int[18]_i_4 ,
    L__972_carry_i_19,
    L__972_carry_i_10,
    L__972_carry__3_i_1,
    switch,
    \axi_rdata_reg[11] ,
    axi_araddr,
    \axi_rdata_reg[11]_0 ,
    \Data_Out_int_reg[30]_i_47_0 ,
    L_carry__2_0,
    \Data_Out_int_reg[26]_i_44_0 ,
    s00_axi_aresetn,
    \axi_rdata_reg[15] ,
    \axi_rdata_reg[15]_0 ,
    \ampl_sig_reg[15]_3 ,
    left_btn,
    cntr_btn,
    \axi_rdata_reg[14] ,
    \axi_rdata_reg[13] ,
    \axi_rdata_reg[12] ,
    \axi_rdata_reg[10] ,
    \axi_rdata_reg[8] ,
    \axi_rdata_reg[4] ,
    \axi_rdata_reg[2] ,
    DOADO,
    L_carry,
    L__972_carry_i_18_0,
    SR,
    E,
    \phase_sig_reg[15]_2 );
  output [7:0]\ampl_sig_reg[7]_0 ;
  output rst;
  output [0:0]\phase_sig_reg[14]_0 ;
  output [0:0]CO;
  output waveSel;
  output [1:0]\phase_sig_reg[3]_0 ;
  output [15:0]Q;
  output [0:0]\phase_sig_reg[7]_0 ;
  output [2:0]\phase_sig_reg[11]_0 ;
  output [3:0]\phase_sig_reg[15]_0 ;
  output [1:0]\phase_sig_reg[3]_1 ;
  output [0:0]\phase_sig_reg[7]_1 ;
  output [2:0]\phase_sig_reg[11]_1 ;
  output [3:0]\phase_sig_reg[14]_1 ;
  output [7:0]\ampl_sig_reg[7]_1 ;
  output [3:0]\ampl_sig_reg[11]_0 ;
  output [3:0]\ampl_sig_reg[15]_0 ;
  output [0:0]L_carry__2;
  output [2:0]\slv_reg2_reg[15] ;
  output [0:0]\slv_reg2_reg[15]_0 ;
  output [0:0]\slv_reg2_reg[15]_1 ;
  output [0:0]\slv_reg2_reg[15]_2 ;
  output [0:0]\slv_reg2_reg[15]_3 ;
  output [0:0]\slv_reg2_reg[15]_4 ;
  output [0:0]\slv_reg2_reg[15]_5 ;
  output [0:0]\slv_reg2_reg[15]_6 ;
  output [0:0]\slv_reg2_reg[15]_7 ;
  output [0:0]\slv_reg2_reg[15]_8 ;
  output [0:0]\slv_reg2_reg[15]_9 ;
  output [0:0]\slv_reg2_reg[15]_10 ;
  output [0:0]\slv_reg2_reg[15]_11 ;
  output [0:0]\slv_reg2_reg[15]_12 ;
  output [0:0]\slv_reg2_reg[15]_13 ;
  output [0:0]\slv_reg2_reg[15]_14 ;
  output [0:0]\slv_reg2_reg[15]_15 ;
  output [0:0]\slv_reg2_reg[15]_16 ;
  output [0:0]\slv_reg2_reg[15]_17 ;
  output [0:0]\slv_reg2_reg[15]_18 ;
  output [0:0]\slv_reg2_reg[15]_19 ;
  output [0:0]\slv_reg2_reg[15]_20 ;
  output [1:0]\slv_reg2_reg[15]_21 ;
  output [0:0]\slv_reg2_reg[15]_22 ;
  output [3:0]\slv_reg0_reg[0]_rep__1 ;
  output [3:0]\ampl_sig_reg[6]_0 ;
  output [3:0]\slv_reg2_reg[10] ;
  output [3:0]\slv_reg2_reg[14] ;
  output [0:0]\slv_reg2_reg[15]_23 ;
  output [15:0]D;
  output [3:0]DI;
  output [3:0]\slv_reg0_reg[0]_rep ;
  output [3:0]\slv_reg0_reg[0]_rep_0 ;
  output [3:0]\ampl_sig_reg[15]_1 ;
  output \ampl_sig_reg[11]_1 ;
  output \phase_sig_reg[15]_1 ;
  output \phase_sig_reg[11]_2 ;
  output [3:0]\slv_reg0_reg[0]_rep__1_0 ;
  output [3:0]\slv_reg0_reg[0]_rep_1 ;
  output [3:0]\slv_reg0_reg[0]_rep_2 ;
  output [3:0]\ampl_sig_reg[15]_2 ;
  output [3:0]\ampl_sig_reg[3]_0 ;
  output [3:0]\ampl_sig_reg[7]_2 ;
  output [3:0]\ampl_sig_reg[11]_2 ;
  output [3:0]\slv_reg2_reg[15]_24 ;
  input ampl_sig;
  input [3:0]O;
  input s00_axi_aclk;
  input [3:0]\ampl_sig_reg[7]_3 ;
  input signalSel_reg_0;
  input [0:0]\ampl_sig_reg[11]_3 ;
  input [0:0]\Data_Out_int[30]_i_3 ;
  input [3:0]\Data_Out_int_reg[30]_i_32_0 ;
  input [3:0]\Data_Out_int_reg[30]_i_17_0 ;
  input [3:0]\Data_Out_int_reg[30]_i_8_0 ;
  input [2:0]\Data_Out_int_reg[30]_i_4_0 ;
  input [0:0]\Data_Out_int[30]_i_12 ;
  input [0:0]\Data_Out_int[30]_i_15 ;
  input [0:0]\Data_Out_int[26]_i_8 ;
  input [0:0]\Data_Out_int[26]_i_11 ;
  input [0:0]\Data_Out_int[26]_i_14 ;
  input [0:0]\Data_Out_int[26]_i_17 ;
  input [0:0]\Data_Out_int[22]_i_8 ;
  input [0:0]\Data_Out_int[22]_i_11 ;
  input [0:0]\Data_Out_int[22]_i_14 ;
  input [0:0]\Data_Out_int[22]_i_17 ;
  input [0:0]\Data_Out_int[18]_i_4 ;
  input [0:0]L__972_carry_i_19;
  input [0:0]L__972_carry_i_10;
  input [0:0]L__972_carry__3_i_1;
  input [7:0]switch;
  input [7:0]\axi_rdata_reg[11] ;
  input [1:0]axi_araddr;
  input [7:0]\axi_rdata_reg[11]_0 ;
  input \Data_Out_int_reg[30]_i_47_0 ;
  input [15:0]L_carry__2_0;
  input \Data_Out_int_reg[26]_i_44_0 ;
  input s00_axi_aresetn;
  input \axi_rdata_reg[15] ;
  input [15:0]\axi_rdata_reg[15]_0 ;
  input \ampl_sig_reg[15]_3 ;
  input left_btn;
  input cntr_btn;
  input \axi_rdata_reg[14] ;
  input \axi_rdata_reg[13] ;
  input \axi_rdata_reg[12] ;
  input \axi_rdata_reg[10] ;
  input \axi_rdata_reg[8] ;
  input \axi_rdata_reg[4] ;
  input \axi_rdata_reg[2] ;
  input [15:0]DOADO;
  input [15:0]L_carry;
  input L__972_carry_i_18_0;
  input [0:0]SR;
  input [0:0]E;
  input [9:0]\phase_sig_reg[15]_2 ;

  wire [15:8]C;
  wire [0:0]CO;
  wire [15:0]D;
  wire [3:0]DI;
  wire [15:0]DOADO;
  wire [0:0]\Data_Out_int[18]_i_4 ;
  wire \Data_Out_int[18]_i_5_n_0 ;
  wire [0:0]\Data_Out_int[22]_i_11 ;
  wire \Data_Out_int[22]_i_12_n_0 ;
  wire [0:0]\Data_Out_int[22]_i_14 ;
  wire \Data_Out_int[22]_i_15_n_0 ;
  wire [0:0]\Data_Out_int[22]_i_17 ;
  wire \Data_Out_int[22]_i_18_n_0 ;
  wire \Data_Out_int[22]_i_20_n_0 ;
  wire \Data_Out_int[22]_i_21_n_0 ;
  wire \Data_Out_int[22]_i_22_n_0 ;
  wire \Data_Out_int[22]_i_23_n_0 ;
  wire \Data_Out_int[22]_i_25_n_0 ;
  wire \Data_Out_int[22]_i_26_n_0 ;
  wire \Data_Out_int[22]_i_27_n_0 ;
  wire \Data_Out_int[22]_i_28_n_0 ;
  wire \Data_Out_int[22]_i_30_n_0 ;
  wire \Data_Out_int[22]_i_31_n_0 ;
  wire \Data_Out_int[22]_i_32_n_0 ;
  wire \Data_Out_int[22]_i_33_n_0 ;
  wire \Data_Out_int[22]_i_34_n_0 ;
  wire \Data_Out_int[22]_i_35_n_0 ;
  wire \Data_Out_int[22]_i_36_n_0 ;
  wire \Data_Out_int[22]_i_37_n_0 ;
  wire \Data_Out_int[22]_i_39_n_0 ;
  wire \Data_Out_int[22]_i_40_n_0 ;
  wire \Data_Out_int[22]_i_41_n_0 ;
  wire \Data_Out_int[22]_i_42_n_0 ;
  wire \Data_Out_int[22]_i_44_n_0 ;
  wire \Data_Out_int[22]_i_45_n_0 ;
  wire \Data_Out_int[22]_i_46_n_0 ;
  wire \Data_Out_int[22]_i_47_n_0 ;
  wire \Data_Out_int[22]_i_48_n_0 ;
  wire \Data_Out_int[22]_i_49_n_0 ;
  wire \Data_Out_int[22]_i_50_n_0 ;
  wire \Data_Out_int[22]_i_51_n_0 ;
  wire \Data_Out_int[22]_i_53_n_0 ;
  wire \Data_Out_int[22]_i_54_n_0 ;
  wire \Data_Out_int[22]_i_55_n_0 ;
  wire \Data_Out_int[22]_i_56_n_0 ;
  wire \Data_Out_int[22]_i_57_n_0 ;
  wire \Data_Out_int[22]_i_58_n_0 ;
  wire \Data_Out_int[22]_i_59_n_0 ;
  wire \Data_Out_int[22]_i_60_n_0 ;
  wire \Data_Out_int[22]_i_61_n_0 ;
  wire \Data_Out_int[22]_i_62_n_0 ;
  wire \Data_Out_int[22]_i_63_n_0 ;
  wire \Data_Out_int[22]_i_64_n_0 ;
  wire [0:0]\Data_Out_int[22]_i_8 ;
  wire \Data_Out_int[22]_i_9_n_0 ;
  wire [0:0]\Data_Out_int[26]_i_11 ;
  wire \Data_Out_int[26]_i_12_n_0 ;
  wire [0:0]\Data_Out_int[26]_i_14 ;
  wire \Data_Out_int[26]_i_15_n_0 ;
  wire [0:0]\Data_Out_int[26]_i_17 ;
  wire \Data_Out_int[26]_i_18_n_0 ;
  wire \Data_Out_int[26]_i_20_n_0 ;
  wire \Data_Out_int[26]_i_21_n_0 ;
  wire \Data_Out_int[26]_i_22_n_0 ;
  wire \Data_Out_int[26]_i_23_n_0 ;
  wire \Data_Out_int[26]_i_25_n_0 ;
  wire \Data_Out_int[26]_i_26_n_0 ;
  wire \Data_Out_int[26]_i_27_n_0 ;
  wire \Data_Out_int[26]_i_28_n_0 ;
  wire \Data_Out_int[26]_i_30_n_0 ;
  wire \Data_Out_int[26]_i_31_n_0 ;
  wire \Data_Out_int[26]_i_32_n_0 ;
  wire \Data_Out_int[26]_i_33_n_0 ;
  wire \Data_Out_int[26]_i_35_n_0 ;
  wire \Data_Out_int[26]_i_36_n_0 ;
  wire \Data_Out_int[26]_i_37_n_0 ;
  wire \Data_Out_int[26]_i_38_n_0 ;
  wire \Data_Out_int[26]_i_40_n_0 ;
  wire \Data_Out_int[26]_i_41_n_0 ;
  wire \Data_Out_int[26]_i_42_n_0 ;
  wire \Data_Out_int[26]_i_43_n_0 ;
  wire \Data_Out_int[26]_i_45_n_0 ;
  wire \Data_Out_int[26]_i_46_n_0 ;
  wire \Data_Out_int[26]_i_47_n_0 ;
  wire \Data_Out_int[26]_i_48_n_0 ;
  wire \Data_Out_int[26]_i_50_n_0 ;
  wire \Data_Out_int[26]_i_51_n_0 ;
  wire \Data_Out_int[26]_i_52_n_0 ;
  wire \Data_Out_int[26]_i_53_n_0 ;
  wire \Data_Out_int[26]_i_55_n_0 ;
  wire \Data_Out_int[26]_i_56_n_0 ;
  wire \Data_Out_int[26]_i_57_n_0 ;
  wire \Data_Out_int[26]_i_58_n_0 ;
  wire \Data_Out_int[26]_i_60_n_0 ;
  wire \Data_Out_int[26]_i_61_n_0 ;
  wire \Data_Out_int[26]_i_62_n_0 ;
  wire \Data_Out_int[26]_i_63_n_0 ;
  wire \Data_Out_int[26]_i_65_n_0 ;
  wire \Data_Out_int[26]_i_66_n_0 ;
  wire \Data_Out_int[26]_i_67_n_0 ;
  wire \Data_Out_int[26]_i_68_n_0 ;
  wire \Data_Out_int[26]_i_70_n_0 ;
  wire \Data_Out_int[26]_i_71_n_0 ;
  wire \Data_Out_int[26]_i_72_n_0 ;
  wire \Data_Out_int[26]_i_73_n_0 ;
  wire \Data_Out_int[26]_i_75_n_0 ;
  wire \Data_Out_int[26]_i_76_n_0 ;
  wire \Data_Out_int[26]_i_77_n_0 ;
  wire \Data_Out_int[26]_i_78_n_0 ;
  wire \Data_Out_int[26]_i_79_n_0 ;
  wire [0:0]\Data_Out_int[26]_i_8 ;
  wire \Data_Out_int[26]_i_80_n_0 ;
  wire \Data_Out_int[26]_i_81_n_0 ;
  wire \Data_Out_int[26]_i_82_n_0 ;
  wire \Data_Out_int[26]_i_83_n_0 ;
  wire \Data_Out_int[26]_i_84_n_0 ;
  wire \Data_Out_int[26]_i_85_n_0 ;
  wire \Data_Out_int[26]_i_86_n_0 ;
  wire \Data_Out_int[26]_i_87_n_0 ;
  wire \Data_Out_int[26]_i_88_n_0 ;
  wire \Data_Out_int[26]_i_89_n_0 ;
  wire \Data_Out_int[26]_i_90_n_0 ;
  wire \Data_Out_int[26]_i_91_n_0 ;
  wire \Data_Out_int[26]_i_92_n_0 ;
  wire \Data_Out_int[26]_i_93_n_0 ;
  wire \Data_Out_int[26]_i_94_n_0 ;
  wire \Data_Out_int[26]_i_9_n_0 ;
  wire \Data_Out_int[30]_i_10_n_0 ;
  wire [0:0]\Data_Out_int[30]_i_12 ;
  wire \Data_Out_int[30]_i_13_n_0 ;
  wire [0:0]\Data_Out_int[30]_i_15 ;
  wire \Data_Out_int[30]_i_16_n_0 ;
  wire \Data_Out_int[30]_i_18_n_0 ;
  wire \Data_Out_int[30]_i_19_n_0 ;
  wire \Data_Out_int[30]_i_20_n_0 ;
  wire \Data_Out_int[30]_i_21_n_0 ;
  wire \Data_Out_int[30]_i_23_n_0 ;
  wire \Data_Out_int[30]_i_24_n_0 ;
  wire \Data_Out_int[30]_i_25_n_0 ;
  wire \Data_Out_int[30]_i_26_n_0 ;
  wire \Data_Out_int[30]_i_28_n_0 ;
  wire \Data_Out_int[30]_i_29_n_0 ;
  wire [0:0]\Data_Out_int[30]_i_3 ;
  wire \Data_Out_int[30]_i_30_n_0 ;
  wire \Data_Out_int[30]_i_31_n_0 ;
  wire \Data_Out_int[30]_i_33_n_0 ;
  wire \Data_Out_int[30]_i_34_n_0 ;
  wire \Data_Out_int[30]_i_35_n_0 ;
  wire \Data_Out_int[30]_i_36_n_0 ;
  wire \Data_Out_int[30]_i_38_n_0 ;
  wire \Data_Out_int[30]_i_39_n_0 ;
  wire \Data_Out_int[30]_i_40_n_0 ;
  wire \Data_Out_int[30]_i_41_n_0 ;
  wire \Data_Out_int[30]_i_43_n_0 ;
  wire \Data_Out_int[30]_i_44_n_0 ;
  wire \Data_Out_int[30]_i_45_n_0 ;
  wire \Data_Out_int[30]_i_46_n_0 ;
  wire \Data_Out_int[30]_i_48_n_0 ;
  wire \Data_Out_int[30]_i_49_n_0 ;
  wire \Data_Out_int[30]_i_50_n_0 ;
  wire \Data_Out_int[30]_i_51_n_0 ;
  wire \Data_Out_int[30]_i_53_n_0 ;
  wire \Data_Out_int[30]_i_54_n_0 ;
  wire \Data_Out_int[30]_i_55_n_0 ;
  wire \Data_Out_int[30]_i_56_n_0 ;
  wire \Data_Out_int[30]_i_58_n_0 ;
  wire \Data_Out_int[30]_i_59_n_0 ;
  wire \Data_Out_int[30]_i_60_n_0 ;
  wire \Data_Out_int[30]_i_61_n_0 ;
  wire \Data_Out_int[30]_i_62_n_0 ;
  wire \Data_Out_int[30]_i_63_n_0 ;
  wire \Data_Out_int[30]_i_64_n_0 ;
  wire \Data_Out_int[30]_i_65_n_0 ;
  wire \Data_Out_int[30]_i_66_n_0 ;
  wire \Data_Out_int[30]_i_67_n_0 ;
  wire \Data_Out_int[30]_i_68_n_0 ;
  wire \Data_Out_int[30]_i_69_n_0 ;
  wire \Data_Out_int[30]_i_70_n_0 ;
  wire \Data_Out_int[30]_i_71_n_0 ;
  wire \Data_Out_int[30]_i_72_n_0 ;
  wire \Data_Out_int[30]_i_73_n_0 ;
  wire \Data_Out_int_reg[18]_i_3_n_3 ;
  wire \Data_Out_int_reg[22]_i_10_n_0 ;
  wire \Data_Out_int_reg[22]_i_10_n_1 ;
  wire \Data_Out_int_reg[22]_i_10_n_2 ;
  wire \Data_Out_int_reg[22]_i_10_n_3 ;
  wire \Data_Out_int_reg[22]_i_10_n_4 ;
  wire \Data_Out_int_reg[22]_i_10_n_5 ;
  wire \Data_Out_int_reg[22]_i_10_n_6 ;
  wire \Data_Out_int_reg[22]_i_10_n_7 ;
  wire \Data_Out_int_reg[22]_i_13_n_0 ;
  wire \Data_Out_int_reg[22]_i_13_n_1 ;
  wire \Data_Out_int_reg[22]_i_13_n_2 ;
  wire \Data_Out_int_reg[22]_i_13_n_3 ;
  wire \Data_Out_int_reg[22]_i_13_n_4 ;
  wire \Data_Out_int_reg[22]_i_13_n_5 ;
  wire \Data_Out_int_reg[22]_i_13_n_6 ;
  wire \Data_Out_int_reg[22]_i_13_n_7 ;
  wire \Data_Out_int_reg[22]_i_16_n_0 ;
  wire \Data_Out_int_reg[22]_i_16_n_1 ;
  wire \Data_Out_int_reg[22]_i_16_n_2 ;
  wire \Data_Out_int_reg[22]_i_16_n_3 ;
  wire \Data_Out_int_reg[22]_i_16_n_4 ;
  wire \Data_Out_int_reg[22]_i_16_n_5 ;
  wire \Data_Out_int_reg[22]_i_16_n_6 ;
  wire \Data_Out_int_reg[22]_i_16_n_7 ;
  wire \Data_Out_int_reg[22]_i_19_n_0 ;
  wire \Data_Out_int_reg[22]_i_19_n_1 ;
  wire \Data_Out_int_reg[22]_i_19_n_2 ;
  wire \Data_Out_int_reg[22]_i_19_n_3 ;
  wire \Data_Out_int_reg[22]_i_19_n_4 ;
  wire \Data_Out_int_reg[22]_i_19_n_5 ;
  wire \Data_Out_int_reg[22]_i_19_n_6 ;
  wire \Data_Out_int_reg[22]_i_19_n_7 ;
  wire \Data_Out_int_reg[22]_i_24_n_0 ;
  wire \Data_Out_int_reg[22]_i_24_n_1 ;
  wire \Data_Out_int_reg[22]_i_24_n_2 ;
  wire \Data_Out_int_reg[22]_i_24_n_3 ;
  wire \Data_Out_int_reg[22]_i_24_n_4 ;
  wire \Data_Out_int_reg[22]_i_24_n_5 ;
  wire \Data_Out_int_reg[22]_i_24_n_6 ;
  wire \Data_Out_int_reg[22]_i_24_n_7 ;
  wire \Data_Out_int_reg[22]_i_29_n_0 ;
  wire \Data_Out_int_reg[22]_i_29_n_1 ;
  wire \Data_Out_int_reg[22]_i_29_n_2 ;
  wire \Data_Out_int_reg[22]_i_29_n_3 ;
  wire \Data_Out_int_reg[22]_i_29_n_4 ;
  wire \Data_Out_int_reg[22]_i_29_n_5 ;
  wire \Data_Out_int_reg[22]_i_29_n_6 ;
  wire \Data_Out_int_reg[22]_i_29_n_7 ;
  wire \Data_Out_int_reg[22]_i_38_n_0 ;
  wire \Data_Out_int_reg[22]_i_38_n_1 ;
  wire \Data_Out_int_reg[22]_i_38_n_2 ;
  wire \Data_Out_int_reg[22]_i_38_n_3 ;
  wire \Data_Out_int_reg[22]_i_38_n_4 ;
  wire \Data_Out_int_reg[22]_i_38_n_5 ;
  wire \Data_Out_int_reg[22]_i_38_n_6 ;
  wire \Data_Out_int_reg[22]_i_38_n_7 ;
  wire \Data_Out_int_reg[22]_i_3_n_3 ;
  wire \Data_Out_int_reg[22]_i_43_n_0 ;
  wire \Data_Out_int_reg[22]_i_43_n_1 ;
  wire \Data_Out_int_reg[22]_i_43_n_2 ;
  wire \Data_Out_int_reg[22]_i_43_n_3 ;
  wire \Data_Out_int_reg[22]_i_43_n_4 ;
  wire \Data_Out_int_reg[22]_i_43_n_5 ;
  wire \Data_Out_int_reg[22]_i_43_n_6 ;
  wire \Data_Out_int_reg[22]_i_43_n_7 ;
  wire \Data_Out_int_reg[22]_i_4_n_3 ;
  wire \Data_Out_int_reg[22]_i_52_n_0 ;
  wire \Data_Out_int_reg[22]_i_52_n_1 ;
  wire \Data_Out_int_reg[22]_i_52_n_2 ;
  wire \Data_Out_int_reg[22]_i_52_n_3 ;
  wire \Data_Out_int_reg[22]_i_52_n_4 ;
  wire \Data_Out_int_reg[22]_i_52_n_5 ;
  wire \Data_Out_int_reg[22]_i_52_n_6 ;
  wire \Data_Out_int_reg[22]_i_5_n_3 ;
  wire \Data_Out_int_reg[22]_i_6_n_3 ;
  wire \Data_Out_int_reg[22]_i_7_n_0 ;
  wire \Data_Out_int_reg[22]_i_7_n_1 ;
  wire \Data_Out_int_reg[22]_i_7_n_2 ;
  wire \Data_Out_int_reg[22]_i_7_n_3 ;
  wire \Data_Out_int_reg[22]_i_7_n_4 ;
  wire \Data_Out_int_reg[22]_i_7_n_5 ;
  wire \Data_Out_int_reg[22]_i_7_n_6 ;
  wire \Data_Out_int_reg[22]_i_7_n_7 ;
  wire \Data_Out_int_reg[26]_i_10_n_0 ;
  wire \Data_Out_int_reg[26]_i_10_n_1 ;
  wire \Data_Out_int_reg[26]_i_10_n_2 ;
  wire \Data_Out_int_reg[26]_i_10_n_3 ;
  wire \Data_Out_int_reg[26]_i_10_n_4 ;
  wire \Data_Out_int_reg[26]_i_10_n_5 ;
  wire \Data_Out_int_reg[26]_i_10_n_6 ;
  wire \Data_Out_int_reg[26]_i_10_n_7 ;
  wire \Data_Out_int_reg[26]_i_13_n_0 ;
  wire \Data_Out_int_reg[26]_i_13_n_1 ;
  wire \Data_Out_int_reg[26]_i_13_n_2 ;
  wire \Data_Out_int_reg[26]_i_13_n_3 ;
  wire \Data_Out_int_reg[26]_i_13_n_4 ;
  wire \Data_Out_int_reg[26]_i_13_n_5 ;
  wire \Data_Out_int_reg[26]_i_13_n_6 ;
  wire \Data_Out_int_reg[26]_i_13_n_7 ;
  wire \Data_Out_int_reg[26]_i_16_n_0 ;
  wire \Data_Out_int_reg[26]_i_16_n_1 ;
  wire \Data_Out_int_reg[26]_i_16_n_2 ;
  wire \Data_Out_int_reg[26]_i_16_n_3 ;
  wire \Data_Out_int_reg[26]_i_16_n_4 ;
  wire \Data_Out_int_reg[26]_i_16_n_5 ;
  wire \Data_Out_int_reg[26]_i_16_n_6 ;
  wire \Data_Out_int_reg[26]_i_16_n_7 ;
  wire \Data_Out_int_reg[26]_i_19_n_0 ;
  wire \Data_Out_int_reg[26]_i_19_n_1 ;
  wire \Data_Out_int_reg[26]_i_19_n_2 ;
  wire \Data_Out_int_reg[26]_i_19_n_3 ;
  wire \Data_Out_int_reg[26]_i_19_n_4 ;
  wire \Data_Out_int_reg[26]_i_19_n_5 ;
  wire \Data_Out_int_reg[26]_i_19_n_6 ;
  wire \Data_Out_int_reg[26]_i_19_n_7 ;
  wire \Data_Out_int_reg[26]_i_24_n_0 ;
  wire \Data_Out_int_reg[26]_i_24_n_1 ;
  wire \Data_Out_int_reg[26]_i_24_n_2 ;
  wire \Data_Out_int_reg[26]_i_24_n_3 ;
  wire \Data_Out_int_reg[26]_i_24_n_4 ;
  wire \Data_Out_int_reg[26]_i_24_n_5 ;
  wire \Data_Out_int_reg[26]_i_24_n_6 ;
  wire \Data_Out_int_reg[26]_i_24_n_7 ;
  wire \Data_Out_int_reg[26]_i_29_n_0 ;
  wire \Data_Out_int_reg[26]_i_29_n_1 ;
  wire \Data_Out_int_reg[26]_i_29_n_2 ;
  wire \Data_Out_int_reg[26]_i_29_n_3 ;
  wire \Data_Out_int_reg[26]_i_29_n_4 ;
  wire \Data_Out_int_reg[26]_i_29_n_5 ;
  wire \Data_Out_int_reg[26]_i_29_n_6 ;
  wire \Data_Out_int_reg[26]_i_29_n_7 ;
  wire \Data_Out_int_reg[26]_i_34_n_0 ;
  wire \Data_Out_int_reg[26]_i_34_n_1 ;
  wire \Data_Out_int_reg[26]_i_34_n_2 ;
  wire \Data_Out_int_reg[26]_i_34_n_3 ;
  wire \Data_Out_int_reg[26]_i_34_n_4 ;
  wire \Data_Out_int_reg[26]_i_34_n_5 ;
  wire \Data_Out_int_reg[26]_i_34_n_6 ;
  wire \Data_Out_int_reg[26]_i_34_n_7 ;
  wire \Data_Out_int_reg[26]_i_39_n_0 ;
  wire \Data_Out_int_reg[26]_i_39_n_1 ;
  wire \Data_Out_int_reg[26]_i_39_n_2 ;
  wire \Data_Out_int_reg[26]_i_39_n_3 ;
  wire \Data_Out_int_reg[26]_i_39_n_4 ;
  wire \Data_Out_int_reg[26]_i_39_n_5 ;
  wire \Data_Out_int_reg[26]_i_39_n_6 ;
  wire \Data_Out_int_reg[26]_i_39_n_7 ;
  wire \Data_Out_int_reg[26]_i_3_n_3 ;
  wire \Data_Out_int_reg[26]_i_44_0 ;
  wire \Data_Out_int_reg[26]_i_44_n_0 ;
  wire \Data_Out_int_reg[26]_i_44_n_1 ;
  wire \Data_Out_int_reg[26]_i_44_n_2 ;
  wire \Data_Out_int_reg[26]_i_44_n_3 ;
  wire \Data_Out_int_reg[26]_i_44_n_4 ;
  wire \Data_Out_int_reg[26]_i_44_n_5 ;
  wire \Data_Out_int_reg[26]_i_44_n_6 ;
  wire \Data_Out_int_reg[26]_i_44_n_7 ;
  wire \Data_Out_int_reg[26]_i_49_n_0 ;
  wire \Data_Out_int_reg[26]_i_49_n_1 ;
  wire \Data_Out_int_reg[26]_i_49_n_2 ;
  wire \Data_Out_int_reg[26]_i_49_n_3 ;
  wire \Data_Out_int_reg[26]_i_49_n_4 ;
  wire \Data_Out_int_reg[26]_i_49_n_5 ;
  wire \Data_Out_int_reg[26]_i_49_n_6 ;
  wire \Data_Out_int_reg[26]_i_49_n_7 ;
  wire \Data_Out_int_reg[26]_i_4_n_3 ;
  wire \Data_Out_int_reg[26]_i_54_n_0 ;
  wire \Data_Out_int_reg[26]_i_54_n_1 ;
  wire \Data_Out_int_reg[26]_i_54_n_2 ;
  wire \Data_Out_int_reg[26]_i_54_n_3 ;
  wire \Data_Out_int_reg[26]_i_54_n_4 ;
  wire \Data_Out_int_reg[26]_i_54_n_5 ;
  wire \Data_Out_int_reg[26]_i_54_n_6 ;
  wire \Data_Out_int_reg[26]_i_54_n_7 ;
  wire \Data_Out_int_reg[26]_i_59_n_0 ;
  wire \Data_Out_int_reg[26]_i_59_n_1 ;
  wire \Data_Out_int_reg[26]_i_59_n_2 ;
  wire \Data_Out_int_reg[26]_i_59_n_3 ;
  wire \Data_Out_int_reg[26]_i_59_n_4 ;
  wire \Data_Out_int_reg[26]_i_59_n_5 ;
  wire \Data_Out_int_reg[26]_i_59_n_6 ;
  wire \Data_Out_int_reg[26]_i_5_n_3 ;
  wire \Data_Out_int_reg[26]_i_64_n_0 ;
  wire \Data_Out_int_reg[26]_i_64_n_1 ;
  wire \Data_Out_int_reg[26]_i_64_n_2 ;
  wire \Data_Out_int_reg[26]_i_64_n_3 ;
  wire \Data_Out_int_reg[26]_i_64_n_4 ;
  wire \Data_Out_int_reg[26]_i_64_n_5 ;
  wire \Data_Out_int_reg[26]_i_64_n_6 ;
  wire \Data_Out_int_reg[26]_i_69_n_0 ;
  wire \Data_Out_int_reg[26]_i_69_n_1 ;
  wire \Data_Out_int_reg[26]_i_69_n_2 ;
  wire \Data_Out_int_reg[26]_i_69_n_3 ;
  wire \Data_Out_int_reg[26]_i_69_n_4 ;
  wire \Data_Out_int_reg[26]_i_69_n_5 ;
  wire \Data_Out_int_reg[26]_i_69_n_6 ;
  wire \Data_Out_int_reg[26]_i_6_n_3 ;
  wire \Data_Out_int_reg[26]_i_74_n_0 ;
  wire \Data_Out_int_reg[26]_i_74_n_1 ;
  wire \Data_Out_int_reg[26]_i_74_n_2 ;
  wire \Data_Out_int_reg[26]_i_74_n_3 ;
  wire \Data_Out_int_reg[26]_i_74_n_4 ;
  wire \Data_Out_int_reg[26]_i_74_n_5 ;
  wire \Data_Out_int_reg[26]_i_74_n_6 ;
  wire \Data_Out_int_reg[26]_i_7_n_0 ;
  wire \Data_Out_int_reg[26]_i_7_n_1 ;
  wire \Data_Out_int_reg[26]_i_7_n_2 ;
  wire \Data_Out_int_reg[26]_i_7_n_3 ;
  wire \Data_Out_int_reg[26]_i_7_n_4 ;
  wire \Data_Out_int_reg[26]_i_7_n_5 ;
  wire \Data_Out_int_reg[26]_i_7_n_6 ;
  wire \Data_Out_int_reg[26]_i_7_n_7 ;
  wire \Data_Out_int_reg[30]_i_11_n_0 ;
  wire \Data_Out_int_reg[30]_i_11_n_1 ;
  wire \Data_Out_int_reg[30]_i_11_n_2 ;
  wire \Data_Out_int_reg[30]_i_11_n_3 ;
  wire \Data_Out_int_reg[30]_i_11_n_4 ;
  wire \Data_Out_int_reg[30]_i_11_n_5 ;
  wire \Data_Out_int_reg[30]_i_11_n_6 ;
  wire \Data_Out_int_reg[30]_i_11_n_7 ;
  wire \Data_Out_int_reg[30]_i_14_n_0 ;
  wire \Data_Out_int_reg[30]_i_14_n_1 ;
  wire \Data_Out_int_reg[30]_i_14_n_2 ;
  wire \Data_Out_int_reg[30]_i_14_n_3 ;
  wire \Data_Out_int_reg[30]_i_14_n_4 ;
  wire \Data_Out_int_reg[30]_i_14_n_5 ;
  wire \Data_Out_int_reg[30]_i_14_n_6 ;
  wire \Data_Out_int_reg[30]_i_14_n_7 ;
  wire [3:0]\Data_Out_int_reg[30]_i_17_0 ;
  wire \Data_Out_int_reg[30]_i_17_n_0 ;
  wire \Data_Out_int_reg[30]_i_17_n_1 ;
  wire \Data_Out_int_reg[30]_i_17_n_2 ;
  wire \Data_Out_int_reg[30]_i_17_n_3 ;
  wire \Data_Out_int_reg[30]_i_17_n_4 ;
  wire \Data_Out_int_reg[30]_i_17_n_5 ;
  wire \Data_Out_int_reg[30]_i_17_n_6 ;
  wire \Data_Out_int_reg[30]_i_17_n_7 ;
  wire \Data_Out_int_reg[30]_i_22_n_0 ;
  wire \Data_Out_int_reg[30]_i_22_n_1 ;
  wire \Data_Out_int_reg[30]_i_22_n_2 ;
  wire \Data_Out_int_reg[30]_i_22_n_3 ;
  wire \Data_Out_int_reg[30]_i_22_n_4 ;
  wire \Data_Out_int_reg[30]_i_22_n_5 ;
  wire \Data_Out_int_reg[30]_i_22_n_6 ;
  wire \Data_Out_int_reg[30]_i_22_n_7 ;
  wire \Data_Out_int_reg[30]_i_27_n_0 ;
  wire \Data_Out_int_reg[30]_i_27_n_1 ;
  wire \Data_Out_int_reg[30]_i_27_n_2 ;
  wire \Data_Out_int_reg[30]_i_27_n_3 ;
  wire \Data_Out_int_reg[30]_i_27_n_4 ;
  wire \Data_Out_int_reg[30]_i_27_n_5 ;
  wire \Data_Out_int_reg[30]_i_27_n_6 ;
  wire \Data_Out_int_reg[30]_i_27_n_7 ;
  wire [3:0]\Data_Out_int_reg[30]_i_32_0 ;
  wire \Data_Out_int_reg[30]_i_32_n_0 ;
  wire \Data_Out_int_reg[30]_i_32_n_1 ;
  wire \Data_Out_int_reg[30]_i_32_n_2 ;
  wire \Data_Out_int_reg[30]_i_32_n_3 ;
  wire \Data_Out_int_reg[30]_i_32_n_4 ;
  wire \Data_Out_int_reg[30]_i_32_n_5 ;
  wire \Data_Out_int_reg[30]_i_32_n_6 ;
  wire \Data_Out_int_reg[30]_i_32_n_7 ;
  wire \Data_Out_int_reg[30]_i_37_n_0 ;
  wire \Data_Out_int_reg[30]_i_37_n_1 ;
  wire \Data_Out_int_reg[30]_i_37_n_2 ;
  wire \Data_Out_int_reg[30]_i_37_n_3 ;
  wire \Data_Out_int_reg[30]_i_37_n_4 ;
  wire \Data_Out_int_reg[30]_i_37_n_5 ;
  wire \Data_Out_int_reg[30]_i_37_n_6 ;
  wire \Data_Out_int_reg[30]_i_37_n_7 ;
  wire \Data_Out_int_reg[30]_i_42_n_0 ;
  wire \Data_Out_int_reg[30]_i_42_n_1 ;
  wire \Data_Out_int_reg[30]_i_42_n_2 ;
  wire \Data_Out_int_reg[30]_i_42_n_3 ;
  wire \Data_Out_int_reg[30]_i_42_n_4 ;
  wire \Data_Out_int_reg[30]_i_42_n_5 ;
  wire \Data_Out_int_reg[30]_i_42_n_6 ;
  wire \Data_Out_int_reg[30]_i_42_n_7 ;
  wire \Data_Out_int_reg[30]_i_47_0 ;
  wire \Data_Out_int_reg[30]_i_47_n_0 ;
  wire \Data_Out_int_reg[30]_i_47_n_1 ;
  wire \Data_Out_int_reg[30]_i_47_n_2 ;
  wire \Data_Out_int_reg[30]_i_47_n_3 ;
  wire \Data_Out_int_reg[30]_i_47_n_4 ;
  wire \Data_Out_int_reg[30]_i_47_n_5 ;
  wire \Data_Out_int_reg[30]_i_47_n_6 ;
  wire [2:0]\Data_Out_int_reg[30]_i_4_0 ;
  wire \Data_Out_int_reg[30]_i_4_n_3 ;
  wire \Data_Out_int_reg[30]_i_52_n_0 ;
  wire \Data_Out_int_reg[30]_i_52_n_1 ;
  wire \Data_Out_int_reg[30]_i_52_n_2 ;
  wire \Data_Out_int_reg[30]_i_52_n_3 ;
  wire \Data_Out_int_reg[30]_i_52_n_4 ;
  wire \Data_Out_int_reg[30]_i_52_n_5 ;
  wire \Data_Out_int_reg[30]_i_52_n_6 ;
  wire \Data_Out_int_reg[30]_i_57_n_0 ;
  wire \Data_Out_int_reg[30]_i_57_n_1 ;
  wire \Data_Out_int_reg[30]_i_57_n_2 ;
  wire \Data_Out_int_reg[30]_i_57_n_3 ;
  wire \Data_Out_int_reg[30]_i_57_n_4 ;
  wire \Data_Out_int_reg[30]_i_57_n_5 ;
  wire \Data_Out_int_reg[30]_i_57_n_6 ;
  wire \Data_Out_int_reg[30]_i_5_n_3 ;
  wire \Data_Out_int_reg[30]_i_6_n_3 ;
  wire [3:0]\Data_Out_int_reg[30]_i_8_0 ;
  wire \Data_Out_int_reg[30]_i_8_n_0 ;
  wire \Data_Out_int_reg[30]_i_8_n_1 ;
  wire \Data_Out_int_reg[30]_i_8_n_2 ;
  wire \Data_Out_int_reg[30]_i_8_n_3 ;
  wire \Data_Out_int_reg[30]_i_8_n_4 ;
  wire \Data_Out_int_reg[30]_i_8_n_5 ;
  wire \Data_Out_int_reg[30]_i_8_n_6 ;
  wire \Data_Out_int_reg[30]_i_8_n_7 ;
  wire [0:0]E;
  wire L__972_carry__0_i_10_n_0;
  wire L__972_carry__0_i_11_n_0;
  wire L__972_carry__0_i_11_n_1;
  wire L__972_carry__0_i_11_n_2;
  wire L__972_carry__0_i_11_n_3;
  wire L__972_carry__0_i_11_n_4;
  wire L__972_carry__0_i_11_n_5;
  wire L__972_carry__0_i_11_n_6;
  wire L__972_carry__0_i_11_n_7;
  wire L__972_carry__0_i_12_n_0;
  wire L__972_carry__0_i_13_n_0;
  wire L__972_carry__0_i_14_n_0;
  wire L__972_carry__0_i_15_n_0;
  wire L__972_carry__0_i_16_n_0;
  wire L__972_carry__0_i_17_n_0;
  wire L__972_carry__0_i_18_n_0;
  wire L__972_carry__0_i_19_n_0;
  wire L__972_carry__0_i_1_n_0;
  wire L__972_carry__0_i_1_n_1;
  wire L__972_carry__0_i_1_n_2;
  wire L__972_carry__0_i_1_n_3;
  wire L__972_carry__0_i_6_n_0;
  wire L__972_carry__0_i_6_n_1;
  wire L__972_carry__0_i_6_n_2;
  wire L__972_carry__0_i_6_n_3;
  wire L__972_carry__0_i_6_n_4;
  wire L__972_carry__0_i_6_n_5;
  wire L__972_carry__0_i_6_n_6;
  wire L__972_carry__0_i_6_n_7;
  wire L__972_carry__0_i_7_n_0;
  wire L__972_carry__0_i_8_n_0;
  wire L__972_carry__0_i_9_n_0;
  wire L__972_carry__1_i_10_n_0;
  wire L__972_carry__1_i_11_n_0;
  wire L__972_carry__1_i_12_n_0;
  wire L__972_carry__1_i_13_n_0;
  wire L__972_carry__1_i_14_n_0;
  wire L__972_carry__1_i_1_n_0;
  wire L__972_carry__1_i_1_n_1;
  wire L__972_carry__1_i_1_n_2;
  wire L__972_carry__1_i_1_n_3;
  wire L__972_carry__1_i_6_n_0;
  wire L__972_carry__1_i_6_n_1;
  wire L__972_carry__1_i_6_n_2;
  wire L__972_carry__1_i_6_n_3;
  wire L__972_carry__1_i_6_n_4;
  wire L__972_carry__1_i_6_n_5;
  wire L__972_carry__1_i_6_n_6;
  wire L__972_carry__1_i_6_n_7;
  wire L__972_carry__1_i_7_n_0;
  wire L__972_carry__1_i_8_n_0;
  wire L__972_carry__1_i_9_n_0;
  wire L__972_carry__2_i_1_n_0;
  wire L__972_carry__2_i_1_n_1;
  wire L__972_carry__2_i_1_n_2;
  wire L__972_carry__2_i_1_n_3;
  wire L__972_carry__2_i_6_n_0;
  wire L__972_carry__2_i_7_n_0;
  wire L__972_carry__2_i_8_n_0;
  wire L__972_carry__2_i_9_n_0;
  wire [0:0]L__972_carry__3_i_1;
  wire [0:0]L__972_carry_i_10;
  wire L__972_carry_i_11_n_0;
  wire L__972_carry_i_12_n_0;
  wire L__972_carry_i_12_n_1;
  wire L__972_carry_i_12_n_2;
  wire L__972_carry_i_12_n_3;
  wire L__972_carry_i_12_n_4;
  wire L__972_carry_i_12_n_5;
  wire L__972_carry_i_12_n_6;
  wire L__972_carry_i_13_n_0;
  wire L__972_carry_i_14_n_0;
  wire L__972_carry_i_15_n_0;
  wire L__972_carry_i_16_n_0;
  wire L__972_carry_i_17_n_0;
  wire L__972_carry_i_18_0;
  wire L__972_carry_i_18_n_0;
  wire L__972_carry_i_18_n_1;
  wire L__972_carry_i_18_n_2;
  wire L__972_carry_i_18_n_3;
  wire L__972_carry_i_18_n_4;
  wire L__972_carry_i_18_n_5;
  wire L__972_carry_i_18_n_6;
  wire L__972_carry_i_18_n_7;
  wire [0:0]L__972_carry_i_19;
  wire L__972_carry_i_1_n_3;
  wire L__972_carry_i_20_n_0;
  wire L__972_carry_i_21_n_0;
  wire L__972_carry_i_21_n_1;
  wire L__972_carry_i_21_n_2;
  wire L__972_carry_i_21_n_3;
  wire L__972_carry_i_21_n_4;
  wire L__972_carry_i_21_n_5;
  wire L__972_carry_i_21_n_6;
  wire L__972_carry_i_21_n_7;
  wire L__972_carry_i_22_n_0;
  wire L__972_carry_i_23_n_0;
  wire L__972_carry_i_24_n_0;
  wire L__972_carry_i_25_n_0;
  wire L__972_carry_i_26_n_0;
  wire L__972_carry_i_26_n_1;
  wire L__972_carry_i_26_n_2;
  wire L__972_carry_i_26_n_3;
  wire L__972_carry_i_26_n_4;
  wire L__972_carry_i_26_n_5;
  wire L__972_carry_i_26_n_6;
  wire L__972_carry_i_27_n_0;
  wire L__972_carry_i_28_n_0;
  wire L__972_carry_i_29_n_0;
  wire L__972_carry_i_2_n_0;
  wire L__972_carry_i_2_n_1;
  wire L__972_carry_i_2_n_2;
  wire L__972_carry_i_2_n_3;
  wire L__972_carry_i_30_n_0;
  wire L__972_carry_i_31_n_0;
  wire L__972_carry_i_31_n_1;
  wire L__972_carry_i_31_n_2;
  wire L__972_carry_i_31_n_3;
  wire L__972_carry_i_31_n_4;
  wire L__972_carry_i_31_n_5;
  wire L__972_carry_i_31_n_6;
  wire L__972_carry_i_31_n_7;
  wire L__972_carry_i_32_n_0;
  wire L__972_carry_i_33_n_0;
  wire L__972_carry_i_34_n_0;
  wire L__972_carry_i_35_n_0;
  wire L__972_carry_i_36_n_0;
  wire L__972_carry_i_36_n_1;
  wire L__972_carry_i_36_n_2;
  wire L__972_carry_i_36_n_3;
  wire L__972_carry_i_36_n_4;
  wire L__972_carry_i_36_n_5;
  wire L__972_carry_i_36_n_6;
  wire L__972_carry_i_36_n_7;
  wire L__972_carry_i_37_n_0;
  wire L__972_carry_i_38_n_0;
  wire L__972_carry_i_39_n_0;
  wire L__972_carry_i_40_n_0;
  wire L__972_carry_i_41_n_0;
  wire L__972_carry_i_41_n_1;
  wire L__972_carry_i_41_n_2;
  wire L__972_carry_i_41_n_3;
  wire L__972_carry_i_41_n_4;
  wire L__972_carry_i_41_n_5;
  wire L__972_carry_i_41_n_6;
  wire L__972_carry_i_42_n_0;
  wire L__972_carry_i_43_n_0;
  wire L__972_carry_i_44_n_0;
  wire L__972_carry_i_45_n_0;
  wire L__972_carry_i_46_n_0;
  wire L__972_carry_i_46_n_1;
  wire L__972_carry_i_46_n_2;
  wire L__972_carry_i_46_n_3;
  wire L__972_carry_i_46_n_4;
  wire L__972_carry_i_46_n_5;
  wire L__972_carry_i_46_n_6;
  wire L__972_carry_i_46_n_7;
  wire L__972_carry_i_47_n_0;
  wire L__972_carry_i_48_n_0;
  wire L__972_carry_i_49_n_0;
  wire L__972_carry_i_50_n_0;
  wire L__972_carry_i_51_n_0;
  wire L__972_carry_i_51_n_1;
  wire L__972_carry_i_51_n_2;
  wire L__972_carry_i_51_n_3;
  wire L__972_carry_i_51_n_4;
  wire L__972_carry_i_51_n_5;
  wire L__972_carry_i_51_n_6;
  wire L__972_carry_i_52_n_0;
  wire L__972_carry_i_53_n_0;
  wire L__972_carry_i_54_n_0;
  wire L__972_carry_i_55_n_0;
  wire L__972_carry_i_56_n_0;
  wire L__972_carry_i_57_n_0;
  wire L__972_carry_i_58_n_0;
  wire L__972_carry_i_59_n_0;
  wire L__972_carry_i_60_n_0;
  wire L__972_carry_i_60_n_1;
  wire L__972_carry_i_60_n_2;
  wire L__972_carry_i_60_n_3;
  wire L__972_carry_i_60_n_4;
  wire L__972_carry_i_60_n_5;
  wire L__972_carry_i_60_n_6;
  wire L__972_carry_i_61_n_0;
  wire L__972_carry_i_62_n_0;
  wire L__972_carry_i_63_n_0;
  wire L__972_carry_i_64_n_0;
  wire L__972_carry_i_65_n_0;
  wire L__972_carry_i_66_n_0;
  wire L__972_carry_i_67_n_0;
  wire L__972_carry_i_68_n_0;
  wire L__972_carry_i_69_n_0;
  wire L__972_carry_i_70_n_0;
  wire L__972_carry_i_71_n_0;
  wire L__972_carry_i_72_n_0;
  wire L__972_carry_i_8_n_3;
  wire L__972_carry_i_9_n_0;
  wire L__972_carry_i_9_n_1;
  wire L__972_carry_i_9_n_2;
  wire L__972_carry_i_9_n_3;
  wire L__972_carry_i_9_n_4;
  wire L__972_carry_i_9_n_5;
  wire L__972_carry_i_9_n_6;
  wire L__972_carry_i_9_n_7;
  wire [15:0]L_carry;
  wire [0:0]L_carry__2;
  wire [15:0]L_carry__2_0;
  wire [3:0]O;
  wire [15:0]Q;
  wire [0:0]SR;
  wire ampl_sig;
  wire \ampl_sig1_inferred__0/i__carry__0_n_1 ;
  wire \ampl_sig1_inferred__0/i__carry__0_n_2 ;
  wire \ampl_sig1_inferred__0/i__carry__0_n_3 ;
  wire \ampl_sig1_inferred__0/i__carry_n_0 ;
  wire \ampl_sig1_inferred__0/i__carry_n_1 ;
  wire \ampl_sig1_inferred__0/i__carry_n_2 ;
  wire \ampl_sig1_inferred__0/i__carry_n_3 ;
  wire \ampl_sig[0]_i_18_n_0 ;
  wire \ampl_sig[0]_i_19_n_0 ;
  wire \ampl_sig[0]_i_20_n_0 ;
  wire \ampl_sig[0]_i_21_n_0 ;
  wire \ampl_sig[0]_i_24_n_0 ;
  wire \ampl_sig[0]_i_25_n_0 ;
  wire \ampl_sig[0]_i_26_n_0 ;
  wire \ampl_sig[0]_i_27_n_0 ;
  wire \ampl_sig[0]_i_28_n_0 ;
  wire \ampl_sig[0]_i_29_n_0 ;
  wire \ampl_sig[0]_i_30_n_0 ;
  wire \ampl_sig[0]_i_31_n_0 ;
  wire \ampl_sig[12]_i_10_n_0 ;
  wire \ampl_sig[12]_i_2_n_0 ;
  wire \ampl_sig[12]_i_3_n_0 ;
  wire \ampl_sig[12]_i_4_n_0 ;
  wire \ampl_sig[12]_i_5_n_0 ;
  wire \ampl_sig[12]_i_7_n_0 ;
  wire \ampl_sig[12]_i_8_n_0 ;
  wire \ampl_sig[12]_i_9_n_0 ;
  wire \ampl_sig[4]_i_11_n_0 ;
  wire \ampl_sig[4]_i_12_n_0 ;
  wire \ampl_sig[4]_i_13_n_0 ;
  wire \ampl_sig[4]_i_14_n_0 ;
  wire \ampl_sig[8]_i_10_n_0 ;
  wire \ampl_sig[8]_i_2_n_0 ;
  wire \ampl_sig[8]_i_3_n_0 ;
  wire \ampl_sig[8]_i_4_n_0 ;
  wire \ampl_sig[8]_i_5_n_0 ;
  wire \ampl_sig[8]_i_7_n_0 ;
  wire \ampl_sig[8]_i_8_n_0 ;
  wire \ampl_sig[8]_i_9_n_0 ;
  wire [15:8]ampl_sig_reg;
  wire \ampl_sig_reg[0]_i_15_n_0 ;
  wire \ampl_sig_reg[0]_i_15_n_1 ;
  wire \ampl_sig_reg[0]_i_15_n_2 ;
  wire \ampl_sig_reg[0]_i_15_n_3 ;
  wire \ampl_sig_reg[0]_i_16_n_0 ;
  wire \ampl_sig_reg[0]_i_16_n_1 ;
  wire \ampl_sig_reg[0]_i_16_n_2 ;
  wire \ampl_sig_reg[0]_i_16_n_3 ;
  wire \ampl_sig_reg[0]_i_17_n_1 ;
  wire \ampl_sig_reg[0]_i_17_n_2 ;
  wire \ampl_sig_reg[0]_i_17_n_3 ;
  wire \ampl_sig_reg[0]_i_22_n_0 ;
  wire \ampl_sig_reg[0]_i_22_n_1 ;
  wire \ampl_sig_reg[0]_i_22_n_2 ;
  wire \ampl_sig_reg[0]_i_22_n_3 ;
  wire \ampl_sig_reg[0]_i_23_n_0 ;
  wire \ampl_sig_reg[0]_i_23_n_1 ;
  wire \ampl_sig_reg[0]_i_23_n_2 ;
  wire \ampl_sig_reg[0]_i_23_n_3 ;
  wire [3:0]\ampl_sig_reg[11]_0 ;
  wire \ampl_sig_reg[11]_1 ;
  wire [3:0]\ampl_sig_reg[11]_2 ;
  wire [0:0]\ampl_sig_reg[11]_3 ;
  wire \ampl_sig_reg[12]_i_1_n_1 ;
  wire \ampl_sig_reg[12]_i_1_n_2 ;
  wire \ampl_sig_reg[12]_i_1_n_3 ;
  wire \ampl_sig_reg[12]_i_1_n_4 ;
  wire \ampl_sig_reg[12]_i_1_n_5 ;
  wire \ampl_sig_reg[12]_i_1_n_6 ;
  wire \ampl_sig_reg[12]_i_1_n_7 ;
  wire \ampl_sig_reg[12]_i_6_n_1 ;
  wire \ampl_sig_reg[12]_i_6_n_2 ;
  wire \ampl_sig_reg[12]_i_6_n_3 ;
  wire [3:0]\ampl_sig_reg[15]_0 ;
  wire [3:0]\ampl_sig_reg[15]_1 ;
  wire [3:0]\ampl_sig_reg[15]_2 ;
  wire \ampl_sig_reg[15]_3 ;
  wire [3:0]\ampl_sig_reg[3]_0 ;
  wire \ampl_sig_reg[4]_i_10_n_0 ;
  wire \ampl_sig_reg[4]_i_10_n_1 ;
  wire \ampl_sig_reg[4]_i_10_n_2 ;
  wire \ampl_sig_reg[4]_i_10_n_3 ;
  wire [3:0]\ampl_sig_reg[6]_0 ;
  wire [7:0]\ampl_sig_reg[7]_0 ;
  wire [7:0]\ampl_sig_reg[7]_1 ;
  wire [3:0]\ampl_sig_reg[7]_2 ;
  wire [3:0]\ampl_sig_reg[7]_3 ;
  wire \ampl_sig_reg[8]_i_1_n_0 ;
  wire \ampl_sig_reg[8]_i_1_n_1 ;
  wire \ampl_sig_reg[8]_i_1_n_2 ;
  wire \ampl_sig_reg[8]_i_1_n_3 ;
  wire \ampl_sig_reg[8]_i_1_n_4 ;
  wire \ampl_sig_reg[8]_i_1_n_5 ;
  wire \ampl_sig_reg[8]_i_1_n_6 ;
  wire \ampl_sig_reg[8]_i_1_n_7 ;
  wire \ampl_sig_reg[8]_i_6_n_0 ;
  wire \ampl_sig_reg[8]_i_6_n_1 ;
  wire \ampl_sig_reg[8]_i_6_n_2 ;
  wire \ampl_sig_reg[8]_i_6_n_3 ;
  wire [1:0]axi_araddr;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata_reg[10] ;
  wire [7:0]\axi_rdata_reg[11] ;
  wire [7:0]\axi_rdata_reg[11]_0 ;
  wire \axi_rdata_reg[12] ;
  wire \axi_rdata_reg[13] ;
  wire \axi_rdata_reg[14] ;
  wire \axi_rdata_reg[15] ;
  wire [15:0]\axi_rdata_reg[15]_0 ;
  wire \axi_rdata_reg[2] ;
  wire \axi_rdata_reg[4] ;
  wire \axi_rdata_reg[8] ;
  wire cntr_btn;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire left_btn;
  wire [0:0]p_1_in_0;
  wire [14:1]p_2_in;
  wire phase_sig2_carry__0_i_1_n_0;
  wire phase_sig2_carry__0_i_2_n_0;
  wire phase_sig2_carry__0_i_3_n_0;
  wire phase_sig2_carry__0_i_4_n_0;
  wire phase_sig2_carry__0_i_5_n_0;
  wire phase_sig2_carry__0_i_6_n_0;
  wire phase_sig2_carry__0_i_7_n_0;
  wire phase_sig2_carry__0_i_8_n_0;
  wire phase_sig2_carry__0_n_1;
  wire phase_sig2_carry__0_n_2;
  wire phase_sig2_carry__0_n_3;
  wire phase_sig2_carry_i_1_n_0;
  wire phase_sig2_carry_i_2_n_0;
  wire phase_sig2_carry_i_3_n_0;
  wire phase_sig2_carry_i_4_n_0;
  wire phase_sig2_carry_i_5_n_0;
  wire phase_sig2_carry_i_6_n_0;
  wire phase_sig2_carry_i_7_n_0;
  wire phase_sig2_carry_i_8_n_0;
  wire phase_sig2_carry_n_0;
  wire phase_sig2_carry_n_1;
  wire phase_sig2_carry_n_2;
  wire phase_sig2_carry_n_3;
  wire \phase_sig[0]_i_1_n_0 ;
  wire \phase_sig[11]_i_4_n_0 ;
  wire \phase_sig[11]_i_5_n_0 ;
  wire \phase_sig[11]_i_6_n_0 ;
  wire \phase_sig[11]_i_7_n_0 ;
  wire \phase_sig[15]_i_10_n_0 ;
  wire \phase_sig[15]_i_11_n_0 ;
  wire \phase_sig[15]_i_12_n_0 ;
  wire \phase_sig[15]_i_13_n_0 ;
  wire \phase_sig[15]_i_9_n_0 ;
  wire \phase_sig[2]_i_1_n_0 ;
  wire \phase_sig[3]_i_10_n_0 ;
  wire \phase_sig[3]_i_11_n_0 ;
  wire \phase_sig[3]_i_4_n_0 ;
  wire \phase_sig[3]_i_5_n_0 ;
  wire \phase_sig[3]_i_6_n_0 ;
  wire \phase_sig[3]_i_7_n_0 ;
  wire \phase_sig[3]_i_8_n_0 ;
  wire \phase_sig[3]_i_9_n_0 ;
  wire \phase_sig[4]_i_1_n_0 ;
  wire \phase_sig[5]_i_1_n_0 ;
  wire \phase_sig[6]_i_1_n_0 ;
  wire \phase_sig[7]_i_10_n_0 ;
  wire \phase_sig[7]_i_11_n_0 ;
  wire \phase_sig[7]_i_4_n_0 ;
  wire \phase_sig[7]_i_5_n_0 ;
  wire \phase_sig[7]_i_6_n_0 ;
  wire \phase_sig[7]_i_7_n_0 ;
  wire \phase_sig[7]_i_8_n_0 ;
  wire \phase_sig[7]_i_9_n_0 ;
  wire \phase_sig[9]_i_1_n_0 ;
  wire [2:0]\phase_sig_reg[11]_0 ;
  wire [2:0]\phase_sig_reg[11]_1 ;
  wire \phase_sig_reg[11]_2 ;
  wire \phase_sig_reg[11]_i_2_n_0 ;
  wire \phase_sig_reg[11]_i_2_n_1 ;
  wire \phase_sig_reg[11]_i_2_n_2 ;
  wire \phase_sig_reg[11]_i_2_n_3 ;
  wire \phase_sig_reg[11]_i_2_n_6 ;
  wire \phase_sig_reg[11]_i_3_n_0 ;
  wire \phase_sig_reg[11]_i_3_n_1 ;
  wire \phase_sig_reg[11]_i_3_n_2 ;
  wire \phase_sig_reg[11]_i_3_n_3 ;
  wire \phase_sig_reg[11]_i_3_n_6 ;
  wire [0:0]\phase_sig_reg[14]_0 ;
  wire [3:0]\phase_sig_reg[14]_1 ;
  wire [3:0]\phase_sig_reg[15]_0 ;
  wire \phase_sig_reg[15]_1 ;
  wire [9:0]\phase_sig_reg[15]_2 ;
  wire \phase_sig_reg[15]_i_6_n_1 ;
  wire \phase_sig_reg[15]_i_6_n_2 ;
  wire \phase_sig_reg[15]_i_6_n_3 ;
  wire \phase_sig_reg[15]_i_8_n_1 ;
  wire \phase_sig_reg[15]_i_8_n_2 ;
  wire \phase_sig_reg[15]_i_8_n_3 ;
  wire [1:0]\phase_sig_reg[3]_0 ;
  wire [1:0]\phase_sig_reg[3]_1 ;
  wire \phase_sig_reg[3]_i_2_n_0 ;
  wire \phase_sig_reg[3]_i_2_n_1 ;
  wire \phase_sig_reg[3]_i_2_n_2 ;
  wire \phase_sig_reg[3]_i_2_n_3 ;
  wire \phase_sig_reg[3]_i_2_n_5 ;
  wire \phase_sig_reg[3]_i_2_n_7 ;
  wire \phase_sig_reg[3]_i_3_n_0 ;
  wire \phase_sig_reg[3]_i_3_n_1 ;
  wire \phase_sig_reg[3]_i_3_n_2 ;
  wire \phase_sig_reg[3]_i_3_n_3 ;
  wire \phase_sig_reg[3]_i_3_n_5 ;
  wire \phase_sig_reg[3]_i_3_n_7 ;
  wire [0:0]\phase_sig_reg[7]_0 ;
  wire [0:0]\phase_sig_reg[7]_1 ;
  wire \phase_sig_reg[7]_i_2_n_0 ;
  wire \phase_sig_reg[7]_i_2_n_1 ;
  wire \phase_sig_reg[7]_i_2_n_2 ;
  wire \phase_sig_reg[7]_i_2_n_3 ;
  wire \phase_sig_reg[7]_i_2_n_5 ;
  wire \phase_sig_reg[7]_i_2_n_6 ;
  wire \phase_sig_reg[7]_i_2_n_7 ;
  wire \phase_sig_reg[7]_i_3_n_0 ;
  wire \phase_sig_reg[7]_i_3_n_1 ;
  wire \phase_sig_reg[7]_i_3_n_2 ;
  wire \phase_sig_reg[7]_i_3_n_3 ;
  wire \phase_sig_reg[7]_i_3_n_5 ;
  wire \phase_sig_reg[7]_i_3_n_6 ;
  wire \phase_sig_reg[7]_i_3_n_7 ;
  wire rst;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire signalSel_reg_0;
  wire [3:0]\slv_reg0_reg[0]_rep ;
  wire [3:0]\slv_reg0_reg[0]_rep_0 ;
  wire [3:0]\slv_reg0_reg[0]_rep_1 ;
  wire [3:0]\slv_reg0_reg[0]_rep_2 ;
  wire [3:0]\slv_reg0_reg[0]_rep__1 ;
  wire [3:0]\slv_reg0_reg[0]_rep__1_0 ;
  wire [3:0]\slv_reg2_reg[10] ;
  wire [3:0]\slv_reg2_reg[14] ;
  wire [2:0]\slv_reg2_reg[15] ;
  wire [0:0]\slv_reg2_reg[15]_0 ;
  wire [0:0]\slv_reg2_reg[15]_1 ;
  wire [0:0]\slv_reg2_reg[15]_10 ;
  wire [0:0]\slv_reg2_reg[15]_11 ;
  wire [0:0]\slv_reg2_reg[15]_12 ;
  wire [0:0]\slv_reg2_reg[15]_13 ;
  wire [0:0]\slv_reg2_reg[15]_14 ;
  wire [0:0]\slv_reg2_reg[15]_15 ;
  wire [0:0]\slv_reg2_reg[15]_16 ;
  wire [0:0]\slv_reg2_reg[15]_17 ;
  wire [0:0]\slv_reg2_reg[15]_18 ;
  wire [0:0]\slv_reg2_reg[15]_19 ;
  wire [0:0]\slv_reg2_reg[15]_2 ;
  wire [0:0]\slv_reg2_reg[15]_20 ;
  wire [1:0]\slv_reg2_reg[15]_21 ;
  wire [0:0]\slv_reg2_reg[15]_22 ;
  wire [0:0]\slv_reg2_reg[15]_23 ;
  wire [3:0]\slv_reg2_reg[15]_24 ;
  wire [0:0]\slv_reg2_reg[15]_3 ;
  wire [0:0]\slv_reg2_reg[15]_4 ;
  wire [0:0]\slv_reg2_reg[15]_5 ;
  wire [0:0]\slv_reg2_reg[15]_6 ;
  wire [0:0]\slv_reg2_reg[15]_7 ;
  wire [0:0]\slv_reg2_reg[15]_8 ;
  wire [0:0]\slv_reg2_reg[15]_9 ;
  wire [7:0]switch;
  wire waveSel;
  wire [3:2]\NLW_Data_Out_int_reg[18]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_Data_Out_int_reg[18]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_Data_Out_int_reg[22]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_Data_Out_int_reg[22]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_Data_Out_int_reg[22]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_Data_Out_int_reg[22]_i_4_O_UNCONNECTED ;
  wire [3:2]\NLW_Data_Out_int_reg[22]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_Data_Out_int_reg[22]_i_5_O_UNCONNECTED ;
  wire [0:0]\NLW_Data_Out_int_reg[22]_i_52_O_UNCONNECTED ;
  wire [3:2]\NLW_Data_Out_int_reg[22]_i_6_CO_UNCONNECTED ;
  wire [3:1]\NLW_Data_Out_int_reg[22]_i_6_O_UNCONNECTED ;
  wire [3:2]\NLW_Data_Out_int_reg[26]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_Data_Out_int_reg[26]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_Data_Out_int_reg[26]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_Data_Out_int_reg[26]_i_4_O_UNCONNECTED ;
  wire [3:2]\NLW_Data_Out_int_reg[26]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_Data_Out_int_reg[26]_i_5_O_UNCONNECTED ;
  wire [0:0]\NLW_Data_Out_int_reg[26]_i_59_O_UNCONNECTED ;
  wire [3:2]\NLW_Data_Out_int_reg[26]_i_6_CO_UNCONNECTED ;
  wire [3:1]\NLW_Data_Out_int_reg[26]_i_6_O_UNCONNECTED ;
  wire [0:0]\NLW_Data_Out_int_reg[26]_i_64_O_UNCONNECTED ;
  wire [0:0]\NLW_Data_Out_int_reg[26]_i_69_O_UNCONNECTED ;
  wire [0:0]\NLW_Data_Out_int_reg[26]_i_74_O_UNCONNECTED ;
  wire [3:2]\NLW_Data_Out_int_reg[30]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_Data_Out_int_reg[30]_i_4_O_UNCONNECTED ;
  wire [0:0]\NLW_Data_Out_int_reg[30]_i_47_O_UNCONNECTED ;
  wire [3:2]\NLW_Data_Out_int_reg[30]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_Data_Out_int_reg[30]_i_5_O_UNCONNECTED ;
  wire [0:0]\NLW_Data_Out_int_reg[30]_i_52_O_UNCONNECTED ;
  wire [0:0]\NLW_Data_Out_int_reg[30]_i_57_O_UNCONNECTED ;
  wire [3:2]\NLW_Data_Out_int_reg[30]_i_6_CO_UNCONNECTED ;
  wire [3:1]\NLW_Data_Out_int_reg[30]_i_6_O_UNCONNECTED ;
  wire [3:1]\NLW_Data_Out_int_reg[30]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_Data_Out_int_reg[30]_i_7_O_UNCONNECTED ;
  wire [3:2]NLW_L__972_carry_i_1_CO_UNCONNECTED;
  wire [3:1]NLW_L__972_carry_i_1_O_UNCONNECTED;
  wire [0:0]NLW_L__972_carry_i_12_O_UNCONNECTED;
  wire [0:0]NLW_L__972_carry_i_2_O_UNCONNECTED;
  wire [0:0]NLW_L__972_carry_i_26_O_UNCONNECTED;
  wire [0:0]NLW_L__972_carry_i_41_O_UNCONNECTED;
  wire [0:0]NLW_L__972_carry_i_51_O_UNCONNECTED;
  wire [0:0]NLW_L__972_carry_i_60_O_UNCONNECTED;
  wire [3:2]NLW_L__972_carry_i_8_CO_UNCONNECTED;
  wire [3:1]NLW_L__972_carry_i_8_O_UNCONNECTED;
  wire [3:0]\NLW_ampl_sig1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_ampl_sig1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_ampl_sig_reg[0]_i_17_CO_UNCONNECTED ;
  wire [3:0]\NLW_ampl_sig_reg[0]_i_22_O_UNCONNECTED ;
  wire [3:0]\NLW_ampl_sig_reg[0]_i_23_O_UNCONNECTED ;
  wire [3:3]\NLW_ampl_sig_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_ampl_sig_reg[12]_i_6_CO_UNCONNECTED ;
  wire [3:0]NLW_phase_sig2_carry_O_UNCONNECTED;
  wire [3:0]NLW_phase_sig2_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_phase_sig_reg[15]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_phase_sig_reg[15]_i_8_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    BCLK_int_i_1
       (.I0(s00_axi_aresetn),
        .O(rst));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[18]_i_5 
       (.I0(L_carry__2_0[15]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[15]),
        .I3(\slv_reg2_reg[15]_17 ),
        .I4(\Data_Out_int_reg[22]_i_16_n_4 ),
        .O(\Data_Out_int[18]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_12 
       (.I0(L_carry__2_0[15]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[15]),
        .I3(\slv_reg2_reg[15]_11 ),
        .I4(\Data_Out_int_reg[22]_i_7_n_4 ),
        .O(\Data_Out_int[22]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_15 
       (.I0(L_carry__2_0[15]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[15]),
        .I3(\slv_reg2_reg[15]_13 ),
        .I4(\Data_Out_int_reg[22]_i_10_n_4 ),
        .O(\Data_Out_int[22]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_18 
       (.I0(L_carry__2_0[15]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[15]),
        .I3(\slv_reg2_reg[15]_15 ),
        .I4(\Data_Out_int_reg[22]_i_13_n_4 ),
        .O(\Data_Out_int[22]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_20 
       (.I0(L_carry__2_0[14]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[14]),
        .I3(\slv_reg2_reg[15]_9 ),
        .I4(\Data_Out_int_reg[26]_i_16_n_5 ),
        .O(\Data_Out_int[22]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_21 
       (.I0(L_carry__2_0[13]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[13]),
        .I3(\slv_reg2_reg[15]_9 ),
        .I4(\Data_Out_int_reg[26]_i_16_n_6 ),
        .O(\Data_Out_int[22]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_22 
       (.I0(L_carry__2_0[12]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[12]),
        .I3(\slv_reg2_reg[15]_9 ),
        .I4(\Data_Out_int_reg[26]_i_16_n_7 ),
        .O(\Data_Out_int[22]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[22]_i_23 
       (.I0(ampl_sig_reg[11]),
        .I1(L_carry__2_0[11]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_9 ),
        .I4(\Data_Out_int_reg[26]_i_34_n_4 ),
        .O(\Data_Out_int[22]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_25 
       (.I0(L_carry__2_0[14]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[14]),
        .I3(\slv_reg2_reg[15]_11 ),
        .I4(\Data_Out_int_reg[22]_i_7_n_5 ),
        .O(\Data_Out_int[22]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_26 
       (.I0(L_carry__2_0[13]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[13]),
        .I3(\slv_reg2_reg[15]_11 ),
        .I4(\Data_Out_int_reg[22]_i_7_n_6 ),
        .O(\Data_Out_int[22]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_27 
       (.I0(L_carry__2_0[12]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[12]),
        .I3(\slv_reg2_reg[15]_11 ),
        .I4(\Data_Out_int_reg[22]_i_7_n_7 ),
        .O(\Data_Out_int[22]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[22]_i_28 
       (.I0(ampl_sig_reg[11]),
        .I1(L_carry__2_0[11]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_11 ),
        .I4(\Data_Out_int_reg[22]_i_19_n_4 ),
        .O(\Data_Out_int[22]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_30 
       (.I0(L_carry__2_0[14]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[14]),
        .I3(\slv_reg2_reg[15]_13 ),
        .I4(\Data_Out_int_reg[22]_i_10_n_5 ),
        .O(\Data_Out_int[22]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_31 
       (.I0(L_carry__2_0[13]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[13]),
        .I3(\slv_reg2_reg[15]_13 ),
        .I4(\Data_Out_int_reg[22]_i_10_n_6 ),
        .O(\Data_Out_int[22]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_32 
       (.I0(L_carry__2_0[12]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[12]),
        .I3(\slv_reg2_reg[15]_13 ),
        .I4(\Data_Out_int_reg[22]_i_10_n_7 ),
        .O(\Data_Out_int[22]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[22]_i_33 
       (.I0(ampl_sig_reg[11]),
        .I1(L_carry__2_0[11]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_13 ),
        .I4(\Data_Out_int_reg[22]_i_24_n_4 ),
        .O(\Data_Out_int[22]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_34 
       (.I0(L_carry__2_0[14]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[14]),
        .I3(\slv_reg2_reg[15]_15 ),
        .I4(\Data_Out_int_reg[22]_i_13_n_5 ),
        .O(\Data_Out_int[22]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_35 
       (.I0(L_carry__2_0[13]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[13]),
        .I3(\slv_reg2_reg[15]_15 ),
        .I4(\Data_Out_int_reg[22]_i_13_n_6 ),
        .O(\Data_Out_int[22]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_36 
       (.I0(L_carry__2_0[12]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[12]),
        .I3(\slv_reg2_reg[15]_15 ),
        .I4(\Data_Out_int_reg[22]_i_13_n_7 ),
        .O(\Data_Out_int[22]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[22]_i_37 
       (.I0(ampl_sig_reg[11]),
        .I1(L_carry__2_0[11]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_15 ),
        .I4(\Data_Out_int_reg[22]_i_29_n_4 ),
        .O(\Data_Out_int[22]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_39 
       (.I0(L_carry__2_0[10]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[10]),
        .I3(\slv_reg2_reg[15]_9 ),
        .I4(\Data_Out_int_reg[26]_i_34_n_5 ),
        .O(\Data_Out_int[22]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[22]_i_40 
       (.I0(ampl_sig_reg[9]),
        .I1(L_carry__2_0[9]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_9 ),
        .I4(\Data_Out_int_reg[26]_i_34_n_6 ),
        .O(\Data_Out_int[22]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_41 
       (.I0(L_carry__2_0[8]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[8]),
        .I3(\slv_reg2_reg[15]_9 ),
        .I4(\Data_Out_int_reg[26]_i_34_n_7 ),
        .O(\Data_Out_int[22]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[22]_i_42 
       (.I0(\ampl_sig_reg[7]_0 [7]),
        .I1(L_carry__2_0[7]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_9 ),
        .I4(\Data_Out_int_reg[26]_i_54_n_4 ),
        .O(\Data_Out_int[22]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_44 
       (.I0(L_carry__2_0[10]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[10]),
        .I3(\slv_reg2_reg[15]_11 ),
        .I4(\Data_Out_int_reg[22]_i_19_n_5 ),
        .O(\Data_Out_int[22]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[22]_i_45 
       (.I0(ampl_sig_reg[9]),
        .I1(L_carry__2_0[9]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_11 ),
        .I4(\Data_Out_int_reg[22]_i_19_n_6 ),
        .O(\Data_Out_int[22]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_46 
       (.I0(L_carry__2_0[8]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[8]),
        .I3(\slv_reg2_reg[15]_11 ),
        .I4(\Data_Out_int_reg[22]_i_19_n_7 ),
        .O(\Data_Out_int[22]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[22]_i_47 
       (.I0(\ampl_sig_reg[7]_0 [7]),
        .I1(L_carry__2_0[7]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_11 ),
        .I4(\Data_Out_int_reg[22]_i_38_n_4 ),
        .O(\Data_Out_int[22]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_48 
       (.I0(L_carry__2_0[10]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[10]),
        .I3(\slv_reg2_reg[15]_13 ),
        .I4(\Data_Out_int_reg[22]_i_24_n_5 ),
        .O(\Data_Out_int[22]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[22]_i_49 
       (.I0(ampl_sig_reg[9]),
        .I1(L_carry__2_0[9]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_13 ),
        .I4(\Data_Out_int_reg[22]_i_24_n_6 ),
        .O(\Data_Out_int[22]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_50 
       (.I0(L_carry__2_0[8]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[8]),
        .I3(\slv_reg2_reg[15]_13 ),
        .I4(\Data_Out_int_reg[22]_i_24_n_7 ),
        .O(\Data_Out_int[22]_i_50_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[22]_i_51 
       (.I0(\ampl_sig_reg[7]_0 [7]),
        .I1(L_carry__2_0[7]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_13 ),
        .I4(\Data_Out_int_reg[22]_i_43_n_4 ),
        .O(\Data_Out_int[22]_i_51_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[22]_i_53 
       (.I0(\ampl_sig_reg[7]_0 [6]),
        .I1(L_carry__2_0[6]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_9 ),
        .I4(\Data_Out_int_reg[26]_i_54_n_5 ),
        .O(\Data_Out_int[22]_i_53_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[22]_i_54 
       (.I0(\ampl_sig_reg[7]_0 [5]),
        .I1(L_carry__2_0[5]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_9 ),
        .I4(\Data_Out_int_reg[26]_i_54_n_6 ),
        .O(\Data_Out_int[22]_i_54_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_55 
       (.I0(L_carry__2_0[4]),
        .I1(L__972_carry_i_18_0),
        .I2(\ampl_sig_reg[7]_0 [4]),
        .I3(\slv_reg2_reg[15]_9 ),
        .I4(\Data_Out_int_reg[26]_i_54_n_7 ),
        .O(\Data_Out_int[22]_i_55_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[22]_i_56 
       (.I0(\ampl_sig_reg[7]_0 [3]),
        .I1(L_carry__2_0[3]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_9 ),
        .I4(\Data_Out_int_reg[26]_i_74_n_4 ),
        .O(\Data_Out_int[22]_i_56_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[22]_i_57 
       (.I0(\ampl_sig_reg[7]_0 [6]),
        .I1(L_carry__2_0[6]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_11 ),
        .I4(\Data_Out_int_reg[22]_i_38_n_5 ),
        .O(\Data_Out_int[22]_i_57_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[22]_i_58 
       (.I0(\ampl_sig_reg[7]_0 [5]),
        .I1(L_carry__2_0[5]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_11 ),
        .I4(\Data_Out_int_reg[22]_i_38_n_6 ),
        .O(\Data_Out_int[22]_i_58_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_59 
       (.I0(L_carry__2_0[4]),
        .I1(L__972_carry_i_18_0),
        .I2(\ampl_sig_reg[7]_0 [4]),
        .I3(\slv_reg2_reg[15]_11 ),
        .I4(\Data_Out_int_reg[22]_i_38_n_7 ),
        .O(\Data_Out_int[22]_i_59_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[22]_i_60 
       (.I0(\ampl_sig_reg[7]_0 [3]),
        .I1(L_carry__2_0[3]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_11 ),
        .I4(\Data_Out_int_reg[22]_i_52_n_4 ),
        .O(\Data_Out_int[22]_i_60_n_0 ));
  LUT4 #(
    .INIT(16'h27D8)) 
    \Data_Out_int[22]_i_61 
       (.I0(\Data_Out_int_reg[30]_i_47_0 ),
        .I1(L_carry__2_0[0]),
        .I2(\ampl_sig_reg[7]_0 [0]),
        .I3(\slv_reg2_reg[15]_9 ),
        .O(\Data_Out_int[22]_i_61_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_62 
       (.I0(L_carry__2_0[2]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(\ampl_sig_reg[7]_0 [2]),
        .I3(\slv_reg2_reg[15]_9 ),
        .I4(\Data_Out_int_reg[26]_i_74_n_5 ),
        .O(\Data_Out_int[22]_i_62_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[22]_i_63 
       (.I0(\ampl_sig_reg[7]_0 [1]),
        .I1(L_carry__2_0[1]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_9 ),
        .I4(\Data_Out_int_reg[26]_i_74_n_6 ),
        .O(\Data_Out_int[22]_i_63_n_0 ));
  LUT5 #(
    .INIT(32'h99966696)) 
    \Data_Out_int[22]_i_64 
       (.I0(\slv_reg2_reg[15]_9 ),
        .I1(p_1_in_0),
        .I2(DOADO[7]),
        .I3(L__972_carry_i_17_n_0),
        .I4(L_carry[7]),
        .O(\Data_Out_int[22]_i_64_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[22]_i_9 
       (.I0(L_carry__2_0[15]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[15]),
        .I3(\slv_reg2_reg[15]_9 ),
        .I4(\Data_Out_int_reg[26]_i_16_n_4 ),
        .O(\Data_Out_int[22]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_12 
       (.I0(L_carry__2_0[15]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[15]),
        .I3(\slv_reg2_reg[15]_3 ),
        .I4(\Data_Out_int_reg[26]_i_7_n_4 ),
        .O(\Data_Out_int[26]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_15 
       (.I0(L_carry__2_0[15]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[15]),
        .I3(\slv_reg2_reg[15]_5 ),
        .I4(\Data_Out_int_reg[26]_i_10_n_4 ),
        .O(\Data_Out_int[26]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_18 
       (.I0(L_carry__2_0[15]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[15]),
        .I3(\slv_reg2_reg[15]_7 ),
        .I4(\Data_Out_int_reg[26]_i_13_n_4 ),
        .O(\Data_Out_int[26]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_20 
       (.I0(L_carry__2_0[14]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[14]),
        .I3(\slv_reg2_reg[15] [0]),
        .I4(\Data_Out_int_reg[30]_i_14_n_5 ),
        .O(\Data_Out_int[26]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_21 
       (.I0(L_carry__2_0[13]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[13]),
        .I3(\slv_reg2_reg[15] [0]),
        .I4(\Data_Out_int_reg[30]_i_14_n_6 ),
        .O(\Data_Out_int[26]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_22 
       (.I0(L_carry__2_0[12]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[12]),
        .I3(\slv_reg2_reg[15] [0]),
        .I4(\Data_Out_int_reg[30]_i_14_n_7 ),
        .O(\Data_Out_int[26]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_23 
       (.I0(ampl_sig_reg[11]),
        .I1(L_carry__2_0[11]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(\slv_reg2_reg[15] [0]),
        .I4(\Data_Out_int_reg[30]_i_27_n_4 ),
        .O(\Data_Out_int[26]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_25 
       (.I0(L_carry__2_0[14]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[14]),
        .I3(\slv_reg2_reg[15]_3 ),
        .I4(\Data_Out_int_reg[26]_i_7_n_5 ),
        .O(\Data_Out_int[26]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_26 
       (.I0(L_carry__2_0[13]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[13]),
        .I3(\slv_reg2_reg[15]_3 ),
        .I4(\Data_Out_int_reg[26]_i_7_n_6 ),
        .O(\Data_Out_int[26]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_27 
       (.I0(L_carry__2_0[12]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[12]),
        .I3(\slv_reg2_reg[15]_3 ),
        .I4(\Data_Out_int_reg[26]_i_7_n_7 ),
        .O(\Data_Out_int[26]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_28 
       (.I0(ampl_sig_reg[11]),
        .I1(L_carry__2_0[11]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_3 ),
        .I4(\Data_Out_int_reg[26]_i_19_n_4 ),
        .O(\Data_Out_int[26]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_30 
       (.I0(L_carry__2_0[14]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[14]),
        .I3(\slv_reg2_reg[15]_5 ),
        .I4(\Data_Out_int_reg[26]_i_10_n_5 ),
        .O(\Data_Out_int[26]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_31 
       (.I0(L_carry__2_0[13]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[13]),
        .I3(\slv_reg2_reg[15]_5 ),
        .I4(\Data_Out_int_reg[26]_i_10_n_6 ),
        .O(\Data_Out_int[26]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_32 
       (.I0(L_carry__2_0[12]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[12]),
        .I3(\slv_reg2_reg[15]_5 ),
        .I4(\Data_Out_int_reg[26]_i_10_n_7 ),
        .O(\Data_Out_int[26]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_33 
       (.I0(ampl_sig_reg[11]),
        .I1(L_carry__2_0[11]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_5 ),
        .I4(\Data_Out_int_reg[26]_i_24_n_4 ),
        .O(\Data_Out_int[26]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_35 
       (.I0(L_carry__2_0[14]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[14]),
        .I3(\slv_reg2_reg[15]_7 ),
        .I4(\Data_Out_int_reg[26]_i_13_n_5 ),
        .O(\Data_Out_int[26]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_36 
       (.I0(L_carry__2_0[13]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[13]),
        .I3(\slv_reg2_reg[15]_7 ),
        .I4(\Data_Out_int_reg[26]_i_13_n_6 ),
        .O(\Data_Out_int[26]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_37 
       (.I0(L_carry__2_0[12]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[12]),
        .I3(\slv_reg2_reg[15]_7 ),
        .I4(\Data_Out_int_reg[26]_i_13_n_7 ),
        .O(\Data_Out_int[26]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_38 
       (.I0(ampl_sig_reg[11]),
        .I1(L_carry__2_0[11]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_7 ),
        .I4(\Data_Out_int_reg[26]_i_29_n_4 ),
        .O(\Data_Out_int[26]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_40 
       (.I0(L_carry__2_0[10]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[10]),
        .I3(\slv_reg2_reg[15] [0]),
        .I4(\Data_Out_int_reg[30]_i_27_n_5 ),
        .O(\Data_Out_int[26]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_41 
       (.I0(ampl_sig_reg[9]),
        .I1(L_carry__2_0[9]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(\slv_reg2_reg[15] [0]),
        .I4(\Data_Out_int_reg[30]_i_27_n_6 ),
        .O(\Data_Out_int[26]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_42 
       (.I0(L_carry__2_0[8]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[8]),
        .I3(\slv_reg2_reg[15] [0]),
        .I4(\Data_Out_int_reg[30]_i_27_n_7 ),
        .O(\Data_Out_int[26]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_43 
       (.I0(\ampl_sig_reg[7]_0 [7]),
        .I1(L_carry__2_0[7]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(\slv_reg2_reg[15] [0]),
        .I4(\Data_Out_int_reg[30]_i_42_n_4 ),
        .O(\Data_Out_int[26]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_45 
       (.I0(L_carry__2_0[10]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[10]),
        .I3(\slv_reg2_reg[15]_3 ),
        .I4(\Data_Out_int_reg[26]_i_19_n_5 ),
        .O(\Data_Out_int[26]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_46 
       (.I0(ampl_sig_reg[9]),
        .I1(L_carry__2_0[9]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_3 ),
        .I4(\Data_Out_int_reg[26]_i_19_n_6 ),
        .O(\Data_Out_int[26]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_47 
       (.I0(L_carry__2_0[8]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[8]),
        .I3(\slv_reg2_reg[15]_3 ),
        .I4(\Data_Out_int_reg[26]_i_19_n_7 ),
        .O(\Data_Out_int[26]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_48 
       (.I0(\ampl_sig_reg[7]_0 [7]),
        .I1(L_carry__2_0[7]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_3 ),
        .I4(\Data_Out_int_reg[26]_i_39_n_4 ),
        .O(\Data_Out_int[26]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_50 
       (.I0(L_carry__2_0[10]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[10]),
        .I3(\slv_reg2_reg[15]_5 ),
        .I4(\Data_Out_int_reg[26]_i_24_n_5 ),
        .O(\Data_Out_int[26]_i_50_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_51 
       (.I0(ampl_sig_reg[9]),
        .I1(L_carry__2_0[9]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_5 ),
        .I4(\Data_Out_int_reg[26]_i_24_n_6 ),
        .O(\Data_Out_int[26]_i_51_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_52 
       (.I0(L_carry__2_0[8]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[8]),
        .I3(\slv_reg2_reg[15]_5 ),
        .I4(\Data_Out_int_reg[26]_i_24_n_7 ),
        .O(\Data_Out_int[26]_i_52_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_53 
       (.I0(\ampl_sig_reg[7]_0 [7]),
        .I1(L_carry__2_0[7]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_5 ),
        .I4(\Data_Out_int_reg[26]_i_44_n_4 ),
        .O(\Data_Out_int[26]_i_53_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_55 
       (.I0(L_carry__2_0[10]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[10]),
        .I3(\slv_reg2_reg[15]_7 ),
        .I4(\Data_Out_int_reg[26]_i_29_n_5 ),
        .O(\Data_Out_int[26]_i_55_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_56 
       (.I0(ampl_sig_reg[9]),
        .I1(L_carry__2_0[9]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_7 ),
        .I4(\Data_Out_int_reg[26]_i_29_n_6 ),
        .O(\Data_Out_int[26]_i_56_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_57 
       (.I0(L_carry__2_0[8]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[8]),
        .I3(\slv_reg2_reg[15]_7 ),
        .I4(\Data_Out_int_reg[26]_i_29_n_7 ),
        .O(\Data_Out_int[26]_i_57_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_58 
       (.I0(\ampl_sig_reg[7]_0 [7]),
        .I1(L_carry__2_0[7]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_7 ),
        .I4(\Data_Out_int_reg[26]_i_49_n_4 ),
        .O(\Data_Out_int[26]_i_58_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_60 
       (.I0(\ampl_sig_reg[7]_0 [6]),
        .I1(L_carry__2_0[6]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(\slv_reg2_reg[15] [0]),
        .I4(\Data_Out_int_reg[30]_i_42_n_5 ),
        .O(\Data_Out_int[26]_i_60_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_61 
       (.I0(\ampl_sig_reg[7]_0 [5]),
        .I1(L_carry__2_0[5]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(\slv_reg2_reg[15] [0]),
        .I4(\Data_Out_int_reg[30]_i_42_n_6 ),
        .O(\Data_Out_int[26]_i_61_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_62 
       (.I0(L_carry__2_0[4]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(\ampl_sig_reg[7]_0 [4]),
        .I3(\slv_reg2_reg[15] [0]),
        .I4(\Data_Out_int_reg[30]_i_42_n_7 ),
        .O(\Data_Out_int[26]_i_62_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_63 
       (.I0(\ampl_sig_reg[7]_0 [3]),
        .I1(L_carry__2_0[3]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(\slv_reg2_reg[15] [0]),
        .I4(\Data_Out_int_reg[30]_i_57_n_4 ),
        .O(\Data_Out_int[26]_i_63_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_65 
       (.I0(\ampl_sig_reg[7]_0 [6]),
        .I1(L_carry__2_0[6]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(\slv_reg2_reg[15]_3 ),
        .I4(\Data_Out_int_reg[26]_i_39_n_5 ),
        .O(\Data_Out_int[26]_i_65_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_66 
       (.I0(\ampl_sig_reg[7]_0 [5]),
        .I1(L_carry__2_0[5]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(\slv_reg2_reg[15]_3 ),
        .I4(\Data_Out_int_reg[26]_i_39_n_6 ),
        .O(\Data_Out_int[26]_i_66_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_67 
       (.I0(L_carry__2_0[4]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(\ampl_sig_reg[7]_0 [4]),
        .I3(\slv_reg2_reg[15]_3 ),
        .I4(\Data_Out_int_reg[26]_i_39_n_7 ),
        .O(\Data_Out_int[26]_i_67_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_68 
       (.I0(\ampl_sig_reg[7]_0 [3]),
        .I1(L_carry__2_0[3]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(\slv_reg2_reg[15]_3 ),
        .I4(\Data_Out_int_reg[26]_i_59_n_4 ),
        .O(\Data_Out_int[26]_i_68_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_70 
       (.I0(\ampl_sig_reg[7]_0 [6]),
        .I1(L_carry__2_0[6]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_5 ),
        .I4(\Data_Out_int_reg[26]_i_44_n_5 ),
        .O(\Data_Out_int[26]_i_70_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_71 
       (.I0(\ampl_sig_reg[7]_0 [5]),
        .I1(L_carry__2_0[5]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_5 ),
        .I4(\Data_Out_int_reg[26]_i_44_n_6 ),
        .O(\Data_Out_int[26]_i_71_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_72 
       (.I0(L_carry__2_0[4]),
        .I1(L__972_carry_i_18_0),
        .I2(\ampl_sig_reg[7]_0 [4]),
        .I3(\slv_reg2_reg[15]_5 ),
        .I4(\Data_Out_int_reg[26]_i_44_n_7 ),
        .O(\Data_Out_int[26]_i_72_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_73 
       (.I0(\ampl_sig_reg[7]_0 [3]),
        .I1(L_carry__2_0[3]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_5 ),
        .I4(\Data_Out_int_reg[26]_i_64_n_4 ),
        .O(\Data_Out_int[26]_i_73_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_75 
       (.I0(\ampl_sig_reg[7]_0 [6]),
        .I1(L_carry__2_0[6]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_7 ),
        .I4(\Data_Out_int_reg[26]_i_49_n_5 ),
        .O(\Data_Out_int[26]_i_75_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_76 
       (.I0(\ampl_sig_reg[7]_0 [5]),
        .I1(L_carry__2_0[5]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_7 ),
        .I4(\Data_Out_int_reg[26]_i_49_n_6 ),
        .O(\Data_Out_int[26]_i_76_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_77 
       (.I0(L_carry__2_0[4]),
        .I1(L__972_carry_i_18_0),
        .I2(\ampl_sig_reg[7]_0 [4]),
        .I3(\slv_reg2_reg[15]_7 ),
        .I4(\Data_Out_int_reg[26]_i_49_n_7 ),
        .O(\Data_Out_int[26]_i_77_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_78 
       (.I0(\ampl_sig_reg[7]_0 [3]),
        .I1(L_carry__2_0[3]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_7 ),
        .I4(\Data_Out_int_reg[26]_i_69_n_4 ),
        .O(\Data_Out_int[26]_i_78_n_0 ));
  LUT4 #(
    .INIT(16'h27D8)) 
    \Data_Out_int[26]_i_79 
       (.I0(\Data_Out_int_reg[30]_i_47_0 ),
        .I1(L_carry__2_0[0]),
        .I2(\ampl_sig_reg[7]_0 [0]),
        .I3(\slv_reg2_reg[15] [0]),
        .O(\Data_Out_int[26]_i_79_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_80 
       (.I0(L_carry__2_0[2]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(\ampl_sig_reg[7]_0 [2]),
        .I3(\slv_reg2_reg[15] [0]),
        .I4(\Data_Out_int_reg[30]_i_57_n_5 ),
        .O(\Data_Out_int[26]_i_80_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_81 
       (.I0(\ampl_sig_reg[7]_0 [1]),
        .I1(L_carry__2_0[1]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15] [0]),
        .I4(\Data_Out_int_reg[30]_i_57_n_6 ),
        .O(\Data_Out_int[26]_i_81_n_0 ));
  LUT5 #(
    .INIT(32'h99966696)) 
    \Data_Out_int[26]_i_82 
       (.I0(\slv_reg2_reg[15] [0]),
        .I1(p_1_in_0),
        .I2(DOADO[11]),
        .I3(L__972_carry_i_17_n_0),
        .I4(L_carry[11]),
        .O(\Data_Out_int[26]_i_82_n_0 ));
  LUT4 #(
    .INIT(16'h27D8)) 
    \Data_Out_int[26]_i_83 
       (.I0(\Data_Out_int_reg[30]_i_47_0 ),
        .I1(L_carry__2_0[0]),
        .I2(\ampl_sig_reg[7]_0 [0]),
        .I3(\slv_reg2_reg[15]_3 ),
        .O(\Data_Out_int[26]_i_83_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_84 
       (.I0(L_carry__2_0[2]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(\ampl_sig_reg[7]_0 [2]),
        .I3(\slv_reg2_reg[15]_3 ),
        .I4(\Data_Out_int_reg[26]_i_59_n_5 ),
        .O(\Data_Out_int[26]_i_84_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_85 
       (.I0(\ampl_sig_reg[7]_0 [1]),
        .I1(L_carry__2_0[1]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_3 ),
        .I4(\Data_Out_int_reg[26]_i_59_n_6 ),
        .O(\Data_Out_int[26]_i_85_n_0 ));
  LUT5 #(
    .INIT(32'h99966696)) 
    \Data_Out_int[26]_i_86 
       (.I0(\slv_reg2_reg[15]_3 ),
        .I1(p_1_in_0),
        .I2(DOADO[10]),
        .I3(L__972_carry_i_17_n_0),
        .I4(L_carry[10]),
        .O(\Data_Out_int[26]_i_86_n_0 ));
  LUT4 #(
    .INIT(16'h27D8)) 
    \Data_Out_int[26]_i_87 
       (.I0(\Data_Out_int_reg[30]_i_47_0 ),
        .I1(L_carry__2_0[0]),
        .I2(\ampl_sig_reg[7]_0 [0]),
        .I3(\slv_reg2_reg[15]_5 ),
        .O(\Data_Out_int[26]_i_87_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_88 
       (.I0(L_carry__2_0[2]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(\ampl_sig_reg[7]_0 [2]),
        .I3(\slv_reg2_reg[15]_5 ),
        .I4(\Data_Out_int_reg[26]_i_64_n_5 ),
        .O(\Data_Out_int[26]_i_88_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_89 
       (.I0(\ampl_sig_reg[7]_0 [1]),
        .I1(L_carry__2_0[1]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_5 ),
        .I4(\Data_Out_int_reg[26]_i_64_n_6 ),
        .O(\Data_Out_int[26]_i_89_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_9 
       (.I0(L_carry__2_0[15]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[15]),
        .I3(\slv_reg2_reg[15] [0]),
        .I4(\Data_Out_int_reg[30]_i_14_n_4 ),
        .O(\Data_Out_int[26]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h99966696)) 
    \Data_Out_int[26]_i_90 
       (.I0(\slv_reg2_reg[15]_5 ),
        .I1(p_1_in_0),
        .I2(DOADO[9]),
        .I3(L__972_carry_i_17_n_0),
        .I4(L_carry[9]),
        .O(\Data_Out_int[26]_i_90_n_0 ));
  LUT4 #(
    .INIT(16'h27D8)) 
    \Data_Out_int[26]_i_91 
       (.I0(\Data_Out_int_reg[30]_i_47_0 ),
        .I1(L_carry__2_0[0]),
        .I2(\ampl_sig_reg[7]_0 [0]),
        .I3(\slv_reg2_reg[15]_7 ),
        .O(\Data_Out_int[26]_i_91_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[26]_i_92 
       (.I0(L_carry__2_0[2]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(\ampl_sig_reg[7]_0 [2]),
        .I3(\slv_reg2_reg[15]_7 ),
        .I4(\Data_Out_int_reg[26]_i_69_n_5 ),
        .O(\Data_Out_int[26]_i_92_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[26]_i_93 
       (.I0(\ampl_sig_reg[7]_0 [1]),
        .I1(L_carry__2_0[1]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_7 ),
        .I4(\Data_Out_int_reg[26]_i_69_n_6 ),
        .O(\Data_Out_int[26]_i_93_n_0 ));
  LUT5 #(
    .INIT(32'h99966696)) 
    \Data_Out_int[26]_i_94 
       (.I0(\slv_reg2_reg[15]_7 ),
        .I1(p_1_in_0),
        .I2(DOADO[8]),
        .I3(L__972_carry_i_17_n_0),
        .I4(L_carry[8]),
        .O(\Data_Out_int[26]_i_94_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_10 
       (.I0(L_carry__2_0[15]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[15]),
        .I3(L_carry__2),
        .I4(\Data_Out_int_reg[30]_i_4_0 [2]),
        .O(\Data_Out_int[30]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_13 
       (.I0(L_carry__2_0[15]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[15]),
        .I3(\slv_reg2_reg[15] [2]),
        .I4(\Data_Out_int_reg[30]_i_8_n_4 ),
        .O(\Data_Out_int[30]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_16 
       (.I0(L_carry__2_0[15]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[15]),
        .I3(\slv_reg2_reg[15] [1]),
        .I4(\Data_Out_int_reg[30]_i_11_n_4 ),
        .O(\Data_Out_int[30]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_18 
       (.I0(L_carry__2_0[14]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[14]),
        .I3(L_carry__2),
        .I4(\Data_Out_int_reg[30]_i_4_0 [1]),
        .O(\Data_Out_int[30]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_19 
       (.I0(L_carry__2_0[13]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[13]),
        .I3(L_carry__2),
        .I4(\Data_Out_int_reg[30]_i_4_0 [0]),
        .O(\Data_Out_int[30]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_20 
       (.I0(L_carry__2_0[12]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[12]),
        .I3(L_carry__2),
        .I4(\Data_Out_int_reg[30]_i_8_0 [3]),
        .O(\Data_Out_int[30]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[30]_i_21 
       (.I0(ampl_sig_reg[11]),
        .I1(L_carry__2_0[11]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(L_carry__2),
        .I4(\Data_Out_int_reg[30]_i_8_0 [2]),
        .O(\Data_Out_int[30]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_23 
       (.I0(L_carry__2_0[14]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[14]),
        .I3(\slv_reg2_reg[15] [2]),
        .I4(\Data_Out_int_reg[30]_i_8_n_5 ),
        .O(\Data_Out_int[30]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_24 
       (.I0(L_carry__2_0[13]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[13]),
        .I3(\slv_reg2_reg[15] [2]),
        .I4(\Data_Out_int_reg[30]_i_8_n_6 ),
        .O(\Data_Out_int[30]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_25 
       (.I0(L_carry__2_0[12]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[12]),
        .I3(\slv_reg2_reg[15] [2]),
        .I4(\Data_Out_int_reg[30]_i_8_n_7 ),
        .O(\Data_Out_int[30]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[30]_i_26 
       (.I0(ampl_sig_reg[11]),
        .I1(L_carry__2_0[11]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(\slv_reg2_reg[15] [2]),
        .I4(\Data_Out_int_reg[30]_i_17_n_4 ),
        .O(\Data_Out_int[30]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_28 
       (.I0(L_carry__2_0[14]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[14]),
        .I3(\slv_reg2_reg[15] [1]),
        .I4(\Data_Out_int_reg[30]_i_11_n_5 ),
        .O(\Data_Out_int[30]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_29 
       (.I0(L_carry__2_0[13]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[13]),
        .I3(\slv_reg2_reg[15] [1]),
        .I4(\Data_Out_int_reg[30]_i_11_n_6 ),
        .O(\Data_Out_int[30]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_30 
       (.I0(L_carry__2_0[12]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[12]),
        .I3(\slv_reg2_reg[15] [1]),
        .I4(\Data_Out_int_reg[30]_i_11_n_7 ),
        .O(\Data_Out_int[30]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[30]_i_31 
       (.I0(ampl_sig_reg[11]),
        .I1(L_carry__2_0[11]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(\slv_reg2_reg[15] [1]),
        .I4(\Data_Out_int_reg[30]_i_22_n_4 ),
        .O(\Data_Out_int[30]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_33 
       (.I0(L_carry__2_0[10]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[10]),
        .I3(L_carry__2),
        .I4(\Data_Out_int_reg[30]_i_8_0 [1]),
        .O(\Data_Out_int[30]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[30]_i_34 
       (.I0(ampl_sig_reg[9]),
        .I1(L_carry__2_0[9]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(L_carry__2),
        .I4(\Data_Out_int_reg[30]_i_8_0 [0]),
        .O(\Data_Out_int[30]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_35 
       (.I0(L_carry__2_0[8]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[8]),
        .I3(L_carry__2),
        .I4(\Data_Out_int_reg[30]_i_17_0 [3]),
        .O(\Data_Out_int[30]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[30]_i_36 
       (.I0(\ampl_sig_reg[7]_0 [7]),
        .I1(L_carry__2_0[7]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(L_carry__2),
        .I4(\Data_Out_int_reg[30]_i_17_0 [2]),
        .O(\Data_Out_int[30]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_38 
       (.I0(L_carry__2_0[10]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[10]),
        .I3(\slv_reg2_reg[15] [2]),
        .I4(\Data_Out_int_reg[30]_i_17_n_5 ),
        .O(\Data_Out_int[30]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[30]_i_39 
       (.I0(ampl_sig_reg[9]),
        .I1(L_carry__2_0[9]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(\slv_reg2_reg[15] [2]),
        .I4(\Data_Out_int_reg[30]_i_17_n_6 ),
        .O(\Data_Out_int[30]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_40 
       (.I0(L_carry__2_0[8]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[8]),
        .I3(\slv_reg2_reg[15] [2]),
        .I4(\Data_Out_int_reg[30]_i_17_n_7 ),
        .O(\Data_Out_int[30]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[30]_i_41 
       (.I0(\ampl_sig_reg[7]_0 [7]),
        .I1(L_carry__2_0[7]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(\slv_reg2_reg[15] [2]),
        .I4(\Data_Out_int_reg[30]_i_32_n_4 ),
        .O(\Data_Out_int[30]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_43 
       (.I0(L_carry__2_0[10]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[10]),
        .I3(\slv_reg2_reg[15] [1]),
        .I4(\Data_Out_int_reg[30]_i_22_n_5 ),
        .O(\Data_Out_int[30]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[30]_i_44 
       (.I0(ampl_sig_reg[9]),
        .I1(L_carry__2_0[9]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(\slv_reg2_reg[15] [1]),
        .I4(\Data_Out_int_reg[30]_i_22_n_6 ),
        .O(\Data_Out_int[30]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_45 
       (.I0(L_carry__2_0[8]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(ampl_sig_reg[8]),
        .I3(\slv_reg2_reg[15] [1]),
        .I4(\Data_Out_int_reg[30]_i_22_n_7 ),
        .O(\Data_Out_int[30]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[30]_i_46 
       (.I0(\ampl_sig_reg[7]_0 [7]),
        .I1(L_carry__2_0[7]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(\slv_reg2_reg[15] [1]),
        .I4(\Data_Out_int_reg[30]_i_37_n_4 ),
        .O(\Data_Out_int[30]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[30]_i_48 
       (.I0(\ampl_sig_reg[7]_0 [6]),
        .I1(L_carry__2_0[6]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(L_carry__2),
        .I4(\Data_Out_int_reg[30]_i_17_0 [1]),
        .O(\Data_Out_int[30]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[30]_i_49 
       (.I0(\ampl_sig_reg[7]_0 [5]),
        .I1(L_carry__2_0[5]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(L_carry__2),
        .I4(\Data_Out_int_reg[30]_i_17_0 [0]),
        .O(\Data_Out_int[30]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_50 
       (.I0(L_carry__2_0[4]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(\ampl_sig_reg[7]_0 [4]),
        .I3(L_carry__2),
        .I4(\Data_Out_int_reg[30]_i_32_0 [3]),
        .O(\Data_Out_int[30]_i_50_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[30]_i_51 
       (.I0(\ampl_sig_reg[7]_0 [3]),
        .I1(L_carry__2_0[3]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(L_carry__2),
        .I4(\Data_Out_int_reg[30]_i_32_0 [2]),
        .O(\Data_Out_int[30]_i_51_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[30]_i_53 
       (.I0(\ampl_sig_reg[7]_0 [6]),
        .I1(L_carry__2_0[6]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(\slv_reg2_reg[15] [2]),
        .I4(\Data_Out_int_reg[30]_i_32_n_5 ),
        .O(\Data_Out_int[30]_i_53_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[30]_i_54 
       (.I0(\ampl_sig_reg[7]_0 [5]),
        .I1(L_carry__2_0[5]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(\slv_reg2_reg[15] [2]),
        .I4(\Data_Out_int_reg[30]_i_32_n_6 ),
        .O(\Data_Out_int[30]_i_54_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_55 
       (.I0(L_carry__2_0[4]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(\ampl_sig_reg[7]_0 [4]),
        .I3(\slv_reg2_reg[15] [2]),
        .I4(\Data_Out_int_reg[30]_i_32_n_7 ),
        .O(\Data_Out_int[30]_i_55_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[30]_i_56 
       (.I0(\ampl_sig_reg[7]_0 [3]),
        .I1(L_carry__2_0[3]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(\slv_reg2_reg[15] [2]),
        .I4(\Data_Out_int_reg[30]_i_47_n_4 ),
        .O(\Data_Out_int[30]_i_56_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[30]_i_58 
       (.I0(\ampl_sig_reg[7]_0 [6]),
        .I1(L_carry__2_0[6]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(\slv_reg2_reg[15] [1]),
        .I4(\Data_Out_int_reg[30]_i_37_n_5 ),
        .O(\Data_Out_int[30]_i_58_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[30]_i_59 
       (.I0(\ampl_sig_reg[7]_0 [5]),
        .I1(L_carry__2_0[5]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(\slv_reg2_reg[15] [1]),
        .I4(\Data_Out_int_reg[30]_i_37_n_6 ),
        .O(\Data_Out_int[30]_i_59_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_60 
       (.I0(L_carry__2_0[4]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(\ampl_sig_reg[7]_0 [4]),
        .I3(\slv_reg2_reg[15] [1]),
        .I4(\Data_Out_int_reg[30]_i_37_n_7 ),
        .O(\Data_Out_int[30]_i_60_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[30]_i_61 
       (.I0(\ampl_sig_reg[7]_0 [3]),
        .I1(L_carry__2_0[3]),
        .I2(\Data_Out_int_reg[26]_i_44_0 ),
        .I3(\slv_reg2_reg[15] [1]),
        .I4(\Data_Out_int_reg[30]_i_52_n_4 ),
        .O(\Data_Out_int[30]_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h27D8)) 
    \Data_Out_int[30]_i_62 
       (.I0(\Data_Out_int_reg[30]_i_47_0 ),
        .I1(L_carry__2_0[0]),
        .I2(\ampl_sig_reg[7]_0 [0]),
        .I3(L_carry__2),
        .O(\Data_Out_int[30]_i_62_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_63 
       (.I0(L_carry__2_0[2]),
        .I1(\axi_rdata_reg[11] [0]),
        .I2(\ampl_sig_reg[7]_0 [2]),
        .I3(L_carry__2),
        .I4(\Data_Out_int_reg[30]_i_32_0 [1]),
        .O(\Data_Out_int[30]_i_63_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[30]_i_64 
       (.I0(\ampl_sig_reg[7]_0 [1]),
        .I1(L_carry__2_0[1]),
        .I2(\axi_rdata_reg[11] [0]),
        .I3(L_carry__2),
        .I4(\Data_Out_int_reg[30]_i_32_0 [0]),
        .O(\Data_Out_int[30]_i_64_n_0 ));
  LUT5 #(
    .INIT(32'h99966696)) 
    \Data_Out_int[30]_i_65 
       (.I0(L_carry__2),
        .I1(p_1_in_0),
        .I2(DOADO[14]),
        .I3(L__972_carry_i_17_n_0),
        .I4(L_carry[14]),
        .O(\Data_Out_int[30]_i_65_n_0 ));
  LUT4 #(
    .INIT(16'h27D8)) 
    \Data_Out_int[30]_i_66 
       (.I0(\Data_Out_int_reg[30]_i_47_0 ),
        .I1(L_carry__2_0[0]),
        .I2(\ampl_sig_reg[7]_0 [0]),
        .I3(\slv_reg2_reg[15] [2]),
        .O(\Data_Out_int[30]_i_66_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_67 
       (.I0(L_carry__2_0[2]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(\ampl_sig_reg[7]_0 [2]),
        .I3(\slv_reg2_reg[15] [2]),
        .I4(\Data_Out_int_reg[30]_i_47_n_5 ),
        .O(\Data_Out_int[30]_i_67_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[30]_i_68 
       (.I0(\ampl_sig_reg[7]_0 [1]),
        .I1(L_carry__2_0[1]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15] [2]),
        .I4(\Data_Out_int_reg[30]_i_47_n_6 ),
        .O(\Data_Out_int[30]_i_68_n_0 ));
  LUT5 #(
    .INIT(32'h99966696)) 
    \Data_Out_int[30]_i_69 
       (.I0(\slv_reg2_reg[15] [2]),
        .I1(p_1_in_0),
        .I2(DOADO[13]),
        .I3(L__972_carry_i_17_n_0),
        .I4(L_carry[13]),
        .O(\Data_Out_int[30]_i_69_n_0 ));
  LUT4 #(
    .INIT(16'h27D8)) 
    \Data_Out_int[30]_i_70 
       (.I0(\Data_Out_int_reg[30]_i_47_0 ),
        .I1(L_carry__2_0[0]),
        .I2(\ampl_sig_reg[7]_0 [0]),
        .I3(\slv_reg2_reg[15] [1]),
        .O(\Data_Out_int[30]_i_70_n_0 ));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    \Data_Out_int[30]_i_71 
       (.I0(L_carry__2_0[2]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(\ampl_sig_reg[7]_0 [2]),
        .I3(\slv_reg2_reg[15] [1]),
        .I4(\Data_Out_int_reg[30]_i_52_n_5 ),
        .O(\Data_Out_int[30]_i_71_n_0 ));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    \Data_Out_int[30]_i_72 
       (.I0(\ampl_sig_reg[7]_0 [1]),
        .I1(L_carry__2_0[1]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15] [1]),
        .I4(\Data_Out_int_reg[30]_i_52_n_6 ),
        .O(\Data_Out_int[30]_i_72_n_0 ));
  LUT5 #(
    .INIT(32'h99966696)) 
    \Data_Out_int[30]_i_73 
       (.I0(\slv_reg2_reg[15] [1]),
        .I1(p_1_in_0),
        .I2(DOADO[12]),
        .I3(L__972_carry_i_17_n_0),
        .I4(L_carry[12]),
        .O(\Data_Out_int[30]_i_73_n_0 ));
  CARRY4 \Data_Out_int_reg[18]_i_3 
       (.CI(L__972_carry_i_18_n_0),
        .CO({\NLW_Data_Out_int_reg[18]_i_3_CO_UNCONNECTED [3:2],\slv_reg2_reg[15]_19 ,\Data_Out_int_reg[18]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\slv_reg2_reg[15]_17 ,\Data_Out_int_reg[22]_i_16_n_4 }),
        .O({\NLW_Data_Out_int_reg[18]_i_3_O_UNCONNECTED [3:1],\slv_reg2_reg[15]_20 }),
        .S({1'b0,1'b0,L__972_carry_i_19,\Data_Out_int[18]_i_5_n_0 }));
  CARRY4 \Data_Out_int_reg[22]_i_10 
       (.CI(\Data_Out_int_reg[22]_i_24_n_0 ),
        .CO({\Data_Out_int_reg[22]_i_10_n_0 ,\Data_Out_int_reg[22]_i_10_n_1 ,\Data_Out_int_reg[22]_i_10_n_2 ,\Data_Out_int_reg[22]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[22]_i_7_n_5 ,\Data_Out_int_reg[22]_i_7_n_6 ,\Data_Out_int_reg[22]_i_7_n_7 ,\Data_Out_int_reg[22]_i_19_n_4 }),
        .O({\Data_Out_int_reg[22]_i_10_n_4 ,\Data_Out_int_reg[22]_i_10_n_5 ,\Data_Out_int_reg[22]_i_10_n_6 ,\Data_Out_int_reg[22]_i_10_n_7 }),
        .S({\Data_Out_int[22]_i_25_n_0 ,\Data_Out_int[22]_i_26_n_0 ,\Data_Out_int[22]_i_27_n_0 ,\Data_Out_int[22]_i_28_n_0 }));
  CARRY4 \Data_Out_int_reg[22]_i_13 
       (.CI(\Data_Out_int_reg[22]_i_29_n_0 ),
        .CO({\Data_Out_int_reg[22]_i_13_n_0 ,\Data_Out_int_reg[22]_i_13_n_1 ,\Data_Out_int_reg[22]_i_13_n_2 ,\Data_Out_int_reg[22]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[22]_i_10_n_5 ,\Data_Out_int_reg[22]_i_10_n_6 ,\Data_Out_int_reg[22]_i_10_n_7 ,\Data_Out_int_reg[22]_i_24_n_4 }),
        .O({\Data_Out_int_reg[22]_i_13_n_4 ,\Data_Out_int_reg[22]_i_13_n_5 ,\Data_Out_int_reg[22]_i_13_n_6 ,\Data_Out_int_reg[22]_i_13_n_7 }),
        .S({\Data_Out_int[22]_i_30_n_0 ,\Data_Out_int[22]_i_31_n_0 ,\Data_Out_int[22]_i_32_n_0 ,\Data_Out_int[22]_i_33_n_0 }));
  CARRY4 \Data_Out_int_reg[22]_i_16 
       (.CI(L__972_carry_i_31_n_0),
        .CO({\Data_Out_int_reg[22]_i_16_n_0 ,\Data_Out_int_reg[22]_i_16_n_1 ,\Data_Out_int_reg[22]_i_16_n_2 ,\Data_Out_int_reg[22]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[22]_i_13_n_5 ,\Data_Out_int_reg[22]_i_13_n_6 ,\Data_Out_int_reg[22]_i_13_n_7 ,\Data_Out_int_reg[22]_i_29_n_4 }),
        .O({\Data_Out_int_reg[22]_i_16_n_4 ,\Data_Out_int_reg[22]_i_16_n_5 ,\Data_Out_int_reg[22]_i_16_n_6 ,\Data_Out_int_reg[22]_i_16_n_7 }),
        .S({\Data_Out_int[22]_i_34_n_0 ,\Data_Out_int[22]_i_35_n_0 ,\Data_Out_int[22]_i_36_n_0 ,\Data_Out_int[22]_i_37_n_0 }));
  CARRY4 \Data_Out_int_reg[22]_i_19 
       (.CI(\Data_Out_int_reg[22]_i_38_n_0 ),
        .CO({\Data_Out_int_reg[22]_i_19_n_0 ,\Data_Out_int_reg[22]_i_19_n_1 ,\Data_Out_int_reg[22]_i_19_n_2 ,\Data_Out_int_reg[22]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[26]_i_34_n_5 ,\Data_Out_int_reg[26]_i_34_n_6 ,\Data_Out_int_reg[26]_i_34_n_7 ,\Data_Out_int_reg[26]_i_54_n_4 }),
        .O({\Data_Out_int_reg[22]_i_19_n_4 ,\Data_Out_int_reg[22]_i_19_n_5 ,\Data_Out_int_reg[22]_i_19_n_6 ,\Data_Out_int_reg[22]_i_19_n_7 }),
        .S({\Data_Out_int[22]_i_39_n_0 ,\Data_Out_int[22]_i_40_n_0 ,\Data_Out_int[22]_i_41_n_0 ,\Data_Out_int[22]_i_42_n_0 }));
  CARRY4 \Data_Out_int_reg[22]_i_24 
       (.CI(\Data_Out_int_reg[22]_i_43_n_0 ),
        .CO({\Data_Out_int_reg[22]_i_24_n_0 ,\Data_Out_int_reg[22]_i_24_n_1 ,\Data_Out_int_reg[22]_i_24_n_2 ,\Data_Out_int_reg[22]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[22]_i_19_n_5 ,\Data_Out_int_reg[22]_i_19_n_6 ,\Data_Out_int_reg[22]_i_19_n_7 ,\Data_Out_int_reg[22]_i_38_n_4 }),
        .O({\Data_Out_int_reg[22]_i_24_n_4 ,\Data_Out_int_reg[22]_i_24_n_5 ,\Data_Out_int_reg[22]_i_24_n_6 ,\Data_Out_int_reg[22]_i_24_n_7 }),
        .S({\Data_Out_int[22]_i_44_n_0 ,\Data_Out_int[22]_i_45_n_0 ,\Data_Out_int[22]_i_46_n_0 ,\Data_Out_int[22]_i_47_n_0 }));
  CARRY4 \Data_Out_int_reg[22]_i_29 
       (.CI(L__972_carry_i_46_n_0),
        .CO({\Data_Out_int_reg[22]_i_29_n_0 ,\Data_Out_int_reg[22]_i_29_n_1 ,\Data_Out_int_reg[22]_i_29_n_2 ,\Data_Out_int_reg[22]_i_29_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[22]_i_24_n_5 ,\Data_Out_int_reg[22]_i_24_n_6 ,\Data_Out_int_reg[22]_i_24_n_7 ,\Data_Out_int_reg[22]_i_43_n_4 }),
        .O({\Data_Out_int_reg[22]_i_29_n_4 ,\Data_Out_int_reg[22]_i_29_n_5 ,\Data_Out_int_reg[22]_i_29_n_6 ,\Data_Out_int_reg[22]_i_29_n_7 }),
        .S({\Data_Out_int[22]_i_48_n_0 ,\Data_Out_int[22]_i_49_n_0 ,\Data_Out_int[22]_i_50_n_0 ,\Data_Out_int[22]_i_51_n_0 }));
  CARRY4 \Data_Out_int_reg[22]_i_3 
       (.CI(\Data_Out_int_reg[22]_i_7_n_0 ),
        .CO({\NLW_Data_Out_int_reg[22]_i_3_CO_UNCONNECTED [3:2],\slv_reg2_reg[15]_11 ,\Data_Out_int_reg[22]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\slv_reg2_reg[15]_9 ,\Data_Out_int_reg[26]_i_16_n_4 }),
        .O({\NLW_Data_Out_int_reg[22]_i_3_O_UNCONNECTED [3:1],\slv_reg2_reg[15]_12 }),
        .S({1'b0,1'b0,\Data_Out_int[22]_i_11 ,\Data_Out_int[22]_i_9_n_0 }));
  CARRY4 \Data_Out_int_reg[22]_i_38 
       (.CI(\Data_Out_int_reg[22]_i_52_n_0 ),
        .CO({\Data_Out_int_reg[22]_i_38_n_0 ,\Data_Out_int_reg[22]_i_38_n_1 ,\Data_Out_int_reg[22]_i_38_n_2 ,\Data_Out_int_reg[22]_i_38_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[26]_i_54_n_5 ,\Data_Out_int_reg[26]_i_54_n_6 ,\Data_Out_int_reg[26]_i_54_n_7 ,\Data_Out_int_reg[26]_i_74_n_4 }),
        .O({\Data_Out_int_reg[22]_i_38_n_4 ,\Data_Out_int_reg[22]_i_38_n_5 ,\Data_Out_int_reg[22]_i_38_n_6 ,\Data_Out_int_reg[22]_i_38_n_7 }),
        .S({\Data_Out_int[22]_i_53_n_0 ,\Data_Out_int[22]_i_54_n_0 ,\Data_Out_int[22]_i_55_n_0 ,\Data_Out_int[22]_i_56_n_0 }));
  CARRY4 \Data_Out_int_reg[22]_i_4 
       (.CI(\Data_Out_int_reg[22]_i_10_n_0 ),
        .CO({\NLW_Data_Out_int_reg[22]_i_4_CO_UNCONNECTED [3:2],\slv_reg2_reg[15]_13 ,\Data_Out_int_reg[22]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\slv_reg2_reg[15]_11 ,\Data_Out_int_reg[22]_i_7_n_4 }),
        .O({\NLW_Data_Out_int_reg[22]_i_4_O_UNCONNECTED [3:1],\slv_reg2_reg[15]_14 }),
        .S({1'b0,1'b0,\Data_Out_int[22]_i_14 ,\Data_Out_int[22]_i_12_n_0 }));
  CARRY4 \Data_Out_int_reg[22]_i_43 
       (.CI(L__972_carry_i_60_n_0),
        .CO({\Data_Out_int_reg[22]_i_43_n_0 ,\Data_Out_int_reg[22]_i_43_n_1 ,\Data_Out_int_reg[22]_i_43_n_2 ,\Data_Out_int_reg[22]_i_43_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[22]_i_38_n_5 ,\Data_Out_int_reg[22]_i_38_n_6 ,\Data_Out_int_reg[22]_i_38_n_7 ,\Data_Out_int_reg[22]_i_52_n_4 }),
        .O({\Data_Out_int_reg[22]_i_43_n_4 ,\Data_Out_int_reg[22]_i_43_n_5 ,\Data_Out_int_reg[22]_i_43_n_6 ,\Data_Out_int_reg[22]_i_43_n_7 }),
        .S({\Data_Out_int[22]_i_57_n_0 ,\Data_Out_int[22]_i_58_n_0 ,\Data_Out_int[22]_i_59_n_0 ,\Data_Out_int[22]_i_60_n_0 }));
  CARRY4 \Data_Out_int_reg[22]_i_5 
       (.CI(\Data_Out_int_reg[22]_i_13_n_0 ),
        .CO({\NLW_Data_Out_int_reg[22]_i_5_CO_UNCONNECTED [3:2],\slv_reg2_reg[15]_15 ,\Data_Out_int_reg[22]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\slv_reg2_reg[15]_13 ,\Data_Out_int_reg[22]_i_10_n_4 }),
        .O({\NLW_Data_Out_int_reg[22]_i_5_O_UNCONNECTED [3:1],\slv_reg2_reg[15]_16 }),
        .S({1'b0,1'b0,\Data_Out_int[22]_i_17 ,\Data_Out_int[22]_i_15_n_0 }));
  CARRY4 \Data_Out_int_reg[22]_i_52 
       (.CI(1'b0),
        .CO({\Data_Out_int_reg[22]_i_52_n_0 ,\Data_Out_int_reg[22]_i_52_n_1 ,\Data_Out_int_reg[22]_i_52_n_2 ,\Data_Out_int_reg[22]_i_52_n_3 }),
        .CYINIT(\slv_reg2_reg[15]_9 ),
        .DI({\Data_Out_int_reg[26]_i_74_n_5 ,\Data_Out_int_reg[26]_i_74_n_6 ,\Data_Out_int[22]_i_61_n_0 ,1'b0}),
        .O({\Data_Out_int_reg[22]_i_52_n_4 ,\Data_Out_int_reg[22]_i_52_n_5 ,\Data_Out_int_reg[22]_i_52_n_6 ,\NLW_Data_Out_int_reg[22]_i_52_O_UNCONNECTED [0]}),
        .S({\Data_Out_int[22]_i_62_n_0 ,\Data_Out_int[22]_i_63_n_0 ,\Data_Out_int[22]_i_64_n_0 ,1'b1}));
  CARRY4 \Data_Out_int_reg[22]_i_6 
       (.CI(\Data_Out_int_reg[22]_i_16_n_0 ),
        .CO({\NLW_Data_Out_int_reg[22]_i_6_CO_UNCONNECTED [3:2],\slv_reg2_reg[15]_17 ,\Data_Out_int_reg[22]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\slv_reg2_reg[15]_15 ,\Data_Out_int_reg[22]_i_13_n_4 }),
        .O({\NLW_Data_Out_int_reg[22]_i_6_O_UNCONNECTED [3:1],\slv_reg2_reg[15]_18 }),
        .S({1'b0,1'b0,\Data_Out_int[18]_i_4 ,\Data_Out_int[22]_i_18_n_0 }));
  CARRY4 \Data_Out_int_reg[22]_i_7 
       (.CI(\Data_Out_int_reg[22]_i_19_n_0 ),
        .CO({\Data_Out_int_reg[22]_i_7_n_0 ,\Data_Out_int_reg[22]_i_7_n_1 ,\Data_Out_int_reg[22]_i_7_n_2 ,\Data_Out_int_reg[22]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[26]_i_16_n_5 ,\Data_Out_int_reg[26]_i_16_n_6 ,\Data_Out_int_reg[26]_i_16_n_7 ,\Data_Out_int_reg[26]_i_34_n_4 }),
        .O({\Data_Out_int_reg[22]_i_7_n_4 ,\Data_Out_int_reg[22]_i_7_n_5 ,\Data_Out_int_reg[22]_i_7_n_6 ,\Data_Out_int_reg[22]_i_7_n_7 }),
        .S({\Data_Out_int[22]_i_20_n_0 ,\Data_Out_int[22]_i_21_n_0 ,\Data_Out_int[22]_i_22_n_0 ,\Data_Out_int[22]_i_23_n_0 }));
  CARRY4 \Data_Out_int_reg[26]_i_10 
       (.CI(\Data_Out_int_reg[26]_i_24_n_0 ),
        .CO({\Data_Out_int_reg[26]_i_10_n_0 ,\Data_Out_int_reg[26]_i_10_n_1 ,\Data_Out_int_reg[26]_i_10_n_2 ,\Data_Out_int_reg[26]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[26]_i_7_n_5 ,\Data_Out_int_reg[26]_i_7_n_6 ,\Data_Out_int_reg[26]_i_7_n_7 ,\Data_Out_int_reg[26]_i_19_n_4 }),
        .O({\Data_Out_int_reg[26]_i_10_n_4 ,\Data_Out_int_reg[26]_i_10_n_5 ,\Data_Out_int_reg[26]_i_10_n_6 ,\Data_Out_int_reg[26]_i_10_n_7 }),
        .S({\Data_Out_int[26]_i_25_n_0 ,\Data_Out_int[26]_i_26_n_0 ,\Data_Out_int[26]_i_27_n_0 ,\Data_Out_int[26]_i_28_n_0 }));
  CARRY4 \Data_Out_int_reg[26]_i_13 
       (.CI(\Data_Out_int_reg[26]_i_29_n_0 ),
        .CO({\Data_Out_int_reg[26]_i_13_n_0 ,\Data_Out_int_reg[26]_i_13_n_1 ,\Data_Out_int_reg[26]_i_13_n_2 ,\Data_Out_int_reg[26]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[26]_i_10_n_5 ,\Data_Out_int_reg[26]_i_10_n_6 ,\Data_Out_int_reg[26]_i_10_n_7 ,\Data_Out_int_reg[26]_i_24_n_4 }),
        .O({\Data_Out_int_reg[26]_i_13_n_4 ,\Data_Out_int_reg[26]_i_13_n_5 ,\Data_Out_int_reg[26]_i_13_n_6 ,\Data_Out_int_reg[26]_i_13_n_7 }),
        .S({\Data_Out_int[26]_i_30_n_0 ,\Data_Out_int[26]_i_31_n_0 ,\Data_Out_int[26]_i_32_n_0 ,\Data_Out_int[26]_i_33_n_0 }));
  CARRY4 \Data_Out_int_reg[26]_i_16 
       (.CI(\Data_Out_int_reg[26]_i_34_n_0 ),
        .CO({\Data_Out_int_reg[26]_i_16_n_0 ,\Data_Out_int_reg[26]_i_16_n_1 ,\Data_Out_int_reg[26]_i_16_n_2 ,\Data_Out_int_reg[26]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[26]_i_13_n_5 ,\Data_Out_int_reg[26]_i_13_n_6 ,\Data_Out_int_reg[26]_i_13_n_7 ,\Data_Out_int_reg[26]_i_29_n_4 }),
        .O({\Data_Out_int_reg[26]_i_16_n_4 ,\Data_Out_int_reg[26]_i_16_n_5 ,\Data_Out_int_reg[26]_i_16_n_6 ,\Data_Out_int_reg[26]_i_16_n_7 }),
        .S({\Data_Out_int[26]_i_35_n_0 ,\Data_Out_int[26]_i_36_n_0 ,\Data_Out_int[26]_i_37_n_0 ,\Data_Out_int[26]_i_38_n_0 }));
  CARRY4 \Data_Out_int_reg[26]_i_19 
       (.CI(\Data_Out_int_reg[26]_i_39_n_0 ),
        .CO({\Data_Out_int_reg[26]_i_19_n_0 ,\Data_Out_int_reg[26]_i_19_n_1 ,\Data_Out_int_reg[26]_i_19_n_2 ,\Data_Out_int_reg[26]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[30]_i_27_n_5 ,\Data_Out_int_reg[30]_i_27_n_6 ,\Data_Out_int_reg[30]_i_27_n_7 ,\Data_Out_int_reg[30]_i_42_n_4 }),
        .O({\Data_Out_int_reg[26]_i_19_n_4 ,\Data_Out_int_reg[26]_i_19_n_5 ,\Data_Out_int_reg[26]_i_19_n_6 ,\Data_Out_int_reg[26]_i_19_n_7 }),
        .S({\Data_Out_int[26]_i_40_n_0 ,\Data_Out_int[26]_i_41_n_0 ,\Data_Out_int[26]_i_42_n_0 ,\Data_Out_int[26]_i_43_n_0 }));
  CARRY4 \Data_Out_int_reg[26]_i_24 
       (.CI(\Data_Out_int_reg[26]_i_44_n_0 ),
        .CO({\Data_Out_int_reg[26]_i_24_n_0 ,\Data_Out_int_reg[26]_i_24_n_1 ,\Data_Out_int_reg[26]_i_24_n_2 ,\Data_Out_int_reg[26]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[26]_i_19_n_5 ,\Data_Out_int_reg[26]_i_19_n_6 ,\Data_Out_int_reg[26]_i_19_n_7 ,\Data_Out_int_reg[26]_i_39_n_4 }),
        .O({\Data_Out_int_reg[26]_i_24_n_4 ,\Data_Out_int_reg[26]_i_24_n_5 ,\Data_Out_int_reg[26]_i_24_n_6 ,\Data_Out_int_reg[26]_i_24_n_7 }),
        .S({\Data_Out_int[26]_i_45_n_0 ,\Data_Out_int[26]_i_46_n_0 ,\Data_Out_int[26]_i_47_n_0 ,\Data_Out_int[26]_i_48_n_0 }));
  CARRY4 \Data_Out_int_reg[26]_i_29 
       (.CI(\Data_Out_int_reg[26]_i_49_n_0 ),
        .CO({\Data_Out_int_reg[26]_i_29_n_0 ,\Data_Out_int_reg[26]_i_29_n_1 ,\Data_Out_int_reg[26]_i_29_n_2 ,\Data_Out_int_reg[26]_i_29_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[26]_i_24_n_5 ,\Data_Out_int_reg[26]_i_24_n_6 ,\Data_Out_int_reg[26]_i_24_n_7 ,\Data_Out_int_reg[26]_i_44_n_4 }),
        .O({\Data_Out_int_reg[26]_i_29_n_4 ,\Data_Out_int_reg[26]_i_29_n_5 ,\Data_Out_int_reg[26]_i_29_n_6 ,\Data_Out_int_reg[26]_i_29_n_7 }),
        .S({\Data_Out_int[26]_i_50_n_0 ,\Data_Out_int[26]_i_51_n_0 ,\Data_Out_int[26]_i_52_n_0 ,\Data_Out_int[26]_i_53_n_0 }));
  CARRY4 \Data_Out_int_reg[26]_i_3 
       (.CI(\Data_Out_int_reg[26]_i_7_n_0 ),
        .CO({\NLW_Data_Out_int_reg[26]_i_3_CO_UNCONNECTED [3:2],\slv_reg2_reg[15]_3 ,\Data_Out_int_reg[26]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\slv_reg2_reg[15] [0],\Data_Out_int_reg[30]_i_14_n_4 }),
        .O({\NLW_Data_Out_int_reg[26]_i_3_O_UNCONNECTED [3:1],\slv_reg2_reg[15]_4 }),
        .S({1'b0,1'b0,\Data_Out_int[26]_i_11 ,\Data_Out_int[26]_i_9_n_0 }));
  CARRY4 \Data_Out_int_reg[26]_i_34 
       (.CI(\Data_Out_int_reg[26]_i_54_n_0 ),
        .CO({\Data_Out_int_reg[26]_i_34_n_0 ,\Data_Out_int_reg[26]_i_34_n_1 ,\Data_Out_int_reg[26]_i_34_n_2 ,\Data_Out_int_reg[26]_i_34_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[26]_i_29_n_5 ,\Data_Out_int_reg[26]_i_29_n_6 ,\Data_Out_int_reg[26]_i_29_n_7 ,\Data_Out_int_reg[26]_i_49_n_4 }),
        .O({\Data_Out_int_reg[26]_i_34_n_4 ,\Data_Out_int_reg[26]_i_34_n_5 ,\Data_Out_int_reg[26]_i_34_n_6 ,\Data_Out_int_reg[26]_i_34_n_7 }),
        .S({\Data_Out_int[26]_i_55_n_0 ,\Data_Out_int[26]_i_56_n_0 ,\Data_Out_int[26]_i_57_n_0 ,\Data_Out_int[26]_i_58_n_0 }));
  CARRY4 \Data_Out_int_reg[26]_i_39 
       (.CI(\Data_Out_int_reg[26]_i_59_n_0 ),
        .CO({\Data_Out_int_reg[26]_i_39_n_0 ,\Data_Out_int_reg[26]_i_39_n_1 ,\Data_Out_int_reg[26]_i_39_n_2 ,\Data_Out_int_reg[26]_i_39_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[30]_i_42_n_5 ,\Data_Out_int_reg[30]_i_42_n_6 ,\Data_Out_int_reg[30]_i_42_n_7 ,\Data_Out_int_reg[30]_i_57_n_4 }),
        .O({\Data_Out_int_reg[26]_i_39_n_4 ,\Data_Out_int_reg[26]_i_39_n_5 ,\Data_Out_int_reg[26]_i_39_n_6 ,\Data_Out_int_reg[26]_i_39_n_7 }),
        .S({\Data_Out_int[26]_i_60_n_0 ,\Data_Out_int[26]_i_61_n_0 ,\Data_Out_int[26]_i_62_n_0 ,\Data_Out_int[26]_i_63_n_0 }));
  CARRY4 \Data_Out_int_reg[26]_i_4 
       (.CI(\Data_Out_int_reg[26]_i_10_n_0 ),
        .CO({\NLW_Data_Out_int_reg[26]_i_4_CO_UNCONNECTED [3:2],\slv_reg2_reg[15]_5 ,\Data_Out_int_reg[26]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\slv_reg2_reg[15]_3 ,\Data_Out_int_reg[26]_i_7_n_4 }),
        .O({\NLW_Data_Out_int_reg[26]_i_4_O_UNCONNECTED [3:1],\slv_reg2_reg[15]_6 }),
        .S({1'b0,1'b0,\Data_Out_int[26]_i_14 ,\Data_Out_int[26]_i_12_n_0 }));
  CARRY4 \Data_Out_int_reg[26]_i_44 
       (.CI(\Data_Out_int_reg[26]_i_64_n_0 ),
        .CO({\Data_Out_int_reg[26]_i_44_n_0 ,\Data_Out_int_reg[26]_i_44_n_1 ,\Data_Out_int_reg[26]_i_44_n_2 ,\Data_Out_int_reg[26]_i_44_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[26]_i_39_n_5 ,\Data_Out_int_reg[26]_i_39_n_6 ,\Data_Out_int_reg[26]_i_39_n_7 ,\Data_Out_int_reg[26]_i_59_n_4 }),
        .O({\Data_Out_int_reg[26]_i_44_n_4 ,\Data_Out_int_reg[26]_i_44_n_5 ,\Data_Out_int_reg[26]_i_44_n_6 ,\Data_Out_int_reg[26]_i_44_n_7 }),
        .S({\Data_Out_int[26]_i_65_n_0 ,\Data_Out_int[26]_i_66_n_0 ,\Data_Out_int[26]_i_67_n_0 ,\Data_Out_int[26]_i_68_n_0 }));
  CARRY4 \Data_Out_int_reg[26]_i_49 
       (.CI(\Data_Out_int_reg[26]_i_69_n_0 ),
        .CO({\Data_Out_int_reg[26]_i_49_n_0 ,\Data_Out_int_reg[26]_i_49_n_1 ,\Data_Out_int_reg[26]_i_49_n_2 ,\Data_Out_int_reg[26]_i_49_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[26]_i_44_n_5 ,\Data_Out_int_reg[26]_i_44_n_6 ,\Data_Out_int_reg[26]_i_44_n_7 ,\Data_Out_int_reg[26]_i_64_n_4 }),
        .O({\Data_Out_int_reg[26]_i_49_n_4 ,\Data_Out_int_reg[26]_i_49_n_5 ,\Data_Out_int_reg[26]_i_49_n_6 ,\Data_Out_int_reg[26]_i_49_n_7 }),
        .S({\Data_Out_int[26]_i_70_n_0 ,\Data_Out_int[26]_i_71_n_0 ,\Data_Out_int[26]_i_72_n_0 ,\Data_Out_int[26]_i_73_n_0 }));
  CARRY4 \Data_Out_int_reg[26]_i_5 
       (.CI(\Data_Out_int_reg[26]_i_13_n_0 ),
        .CO({\NLW_Data_Out_int_reg[26]_i_5_CO_UNCONNECTED [3:2],\slv_reg2_reg[15]_7 ,\Data_Out_int_reg[26]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\slv_reg2_reg[15]_5 ,\Data_Out_int_reg[26]_i_10_n_4 }),
        .O({\NLW_Data_Out_int_reg[26]_i_5_O_UNCONNECTED [3:1],\slv_reg2_reg[15]_8 }),
        .S({1'b0,1'b0,\Data_Out_int[26]_i_17 ,\Data_Out_int[26]_i_15_n_0 }));
  CARRY4 \Data_Out_int_reg[26]_i_54 
       (.CI(\Data_Out_int_reg[26]_i_74_n_0 ),
        .CO({\Data_Out_int_reg[26]_i_54_n_0 ,\Data_Out_int_reg[26]_i_54_n_1 ,\Data_Out_int_reg[26]_i_54_n_2 ,\Data_Out_int_reg[26]_i_54_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[26]_i_49_n_5 ,\Data_Out_int_reg[26]_i_49_n_6 ,\Data_Out_int_reg[26]_i_49_n_7 ,\Data_Out_int_reg[26]_i_69_n_4 }),
        .O({\Data_Out_int_reg[26]_i_54_n_4 ,\Data_Out_int_reg[26]_i_54_n_5 ,\Data_Out_int_reg[26]_i_54_n_6 ,\Data_Out_int_reg[26]_i_54_n_7 }),
        .S({\Data_Out_int[26]_i_75_n_0 ,\Data_Out_int[26]_i_76_n_0 ,\Data_Out_int[26]_i_77_n_0 ,\Data_Out_int[26]_i_78_n_0 }));
  CARRY4 \Data_Out_int_reg[26]_i_59 
       (.CI(1'b0),
        .CO({\Data_Out_int_reg[26]_i_59_n_0 ,\Data_Out_int_reg[26]_i_59_n_1 ,\Data_Out_int_reg[26]_i_59_n_2 ,\Data_Out_int_reg[26]_i_59_n_3 }),
        .CYINIT(\slv_reg2_reg[15] [0]),
        .DI({\Data_Out_int_reg[30]_i_57_n_5 ,\Data_Out_int_reg[30]_i_57_n_6 ,\Data_Out_int[26]_i_79_n_0 ,1'b0}),
        .O({\Data_Out_int_reg[26]_i_59_n_4 ,\Data_Out_int_reg[26]_i_59_n_5 ,\Data_Out_int_reg[26]_i_59_n_6 ,\NLW_Data_Out_int_reg[26]_i_59_O_UNCONNECTED [0]}),
        .S({\Data_Out_int[26]_i_80_n_0 ,\Data_Out_int[26]_i_81_n_0 ,\Data_Out_int[26]_i_82_n_0 ,1'b1}));
  CARRY4 \Data_Out_int_reg[26]_i_6 
       (.CI(\Data_Out_int_reg[26]_i_16_n_0 ),
        .CO({\NLW_Data_Out_int_reg[26]_i_6_CO_UNCONNECTED [3:2],\slv_reg2_reg[15]_9 ,\Data_Out_int_reg[26]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\slv_reg2_reg[15]_7 ,\Data_Out_int_reg[26]_i_13_n_4 }),
        .O({\NLW_Data_Out_int_reg[26]_i_6_O_UNCONNECTED [3:1],\slv_reg2_reg[15]_10 }),
        .S({1'b0,1'b0,\Data_Out_int[22]_i_8 ,\Data_Out_int[26]_i_18_n_0 }));
  CARRY4 \Data_Out_int_reg[26]_i_64 
       (.CI(1'b0),
        .CO({\Data_Out_int_reg[26]_i_64_n_0 ,\Data_Out_int_reg[26]_i_64_n_1 ,\Data_Out_int_reg[26]_i_64_n_2 ,\Data_Out_int_reg[26]_i_64_n_3 }),
        .CYINIT(\slv_reg2_reg[15]_3 ),
        .DI({\Data_Out_int_reg[26]_i_59_n_5 ,\Data_Out_int_reg[26]_i_59_n_6 ,\Data_Out_int[26]_i_83_n_0 ,1'b0}),
        .O({\Data_Out_int_reg[26]_i_64_n_4 ,\Data_Out_int_reg[26]_i_64_n_5 ,\Data_Out_int_reg[26]_i_64_n_6 ,\NLW_Data_Out_int_reg[26]_i_64_O_UNCONNECTED [0]}),
        .S({\Data_Out_int[26]_i_84_n_0 ,\Data_Out_int[26]_i_85_n_0 ,\Data_Out_int[26]_i_86_n_0 ,1'b1}));
  CARRY4 \Data_Out_int_reg[26]_i_69 
       (.CI(1'b0),
        .CO({\Data_Out_int_reg[26]_i_69_n_0 ,\Data_Out_int_reg[26]_i_69_n_1 ,\Data_Out_int_reg[26]_i_69_n_2 ,\Data_Out_int_reg[26]_i_69_n_3 }),
        .CYINIT(\slv_reg2_reg[15]_5 ),
        .DI({\Data_Out_int_reg[26]_i_64_n_5 ,\Data_Out_int_reg[26]_i_64_n_6 ,\Data_Out_int[26]_i_87_n_0 ,1'b0}),
        .O({\Data_Out_int_reg[26]_i_69_n_4 ,\Data_Out_int_reg[26]_i_69_n_5 ,\Data_Out_int_reg[26]_i_69_n_6 ,\NLW_Data_Out_int_reg[26]_i_69_O_UNCONNECTED [0]}),
        .S({\Data_Out_int[26]_i_88_n_0 ,\Data_Out_int[26]_i_89_n_0 ,\Data_Out_int[26]_i_90_n_0 ,1'b1}));
  CARRY4 \Data_Out_int_reg[26]_i_7 
       (.CI(\Data_Out_int_reg[26]_i_19_n_0 ),
        .CO({\Data_Out_int_reg[26]_i_7_n_0 ,\Data_Out_int_reg[26]_i_7_n_1 ,\Data_Out_int_reg[26]_i_7_n_2 ,\Data_Out_int_reg[26]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[30]_i_14_n_5 ,\Data_Out_int_reg[30]_i_14_n_6 ,\Data_Out_int_reg[30]_i_14_n_7 ,\Data_Out_int_reg[30]_i_27_n_4 }),
        .O({\Data_Out_int_reg[26]_i_7_n_4 ,\Data_Out_int_reg[26]_i_7_n_5 ,\Data_Out_int_reg[26]_i_7_n_6 ,\Data_Out_int_reg[26]_i_7_n_7 }),
        .S({\Data_Out_int[26]_i_20_n_0 ,\Data_Out_int[26]_i_21_n_0 ,\Data_Out_int[26]_i_22_n_0 ,\Data_Out_int[26]_i_23_n_0 }));
  CARRY4 \Data_Out_int_reg[26]_i_74 
       (.CI(1'b0),
        .CO({\Data_Out_int_reg[26]_i_74_n_0 ,\Data_Out_int_reg[26]_i_74_n_1 ,\Data_Out_int_reg[26]_i_74_n_2 ,\Data_Out_int_reg[26]_i_74_n_3 }),
        .CYINIT(\slv_reg2_reg[15]_7 ),
        .DI({\Data_Out_int_reg[26]_i_69_n_5 ,\Data_Out_int_reg[26]_i_69_n_6 ,\Data_Out_int[26]_i_91_n_0 ,1'b0}),
        .O({\Data_Out_int_reg[26]_i_74_n_4 ,\Data_Out_int_reg[26]_i_74_n_5 ,\Data_Out_int_reg[26]_i_74_n_6 ,\NLW_Data_Out_int_reg[26]_i_74_O_UNCONNECTED [0]}),
        .S({\Data_Out_int[26]_i_92_n_0 ,\Data_Out_int[26]_i_93_n_0 ,\Data_Out_int[26]_i_94_n_0 ,1'b1}));
  CARRY4 \Data_Out_int_reg[30]_i_11 
       (.CI(\Data_Out_int_reg[30]_i_22_n_0 ),
        .CO({\Data_Out_int_reg[30]_i_11_n_0 ,\Data_Out_int_reg[30]_i_11_n_1 ,\Data_Out_int_reg[30]_i_11_n_2 ,\Data_Out_int_reg[30]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[30]_i_8_n_5 ,\Data_Out_int_reg[30]_i_8_n_6 ,\Data_Out_int_reg[30]_i_8_n_7 ,\Data_Out_int_reg[30]_i_17_n_4 }),
        .O({\Data_Out_int_reg[30]_i_11_n_4 ,\Data_Out_int_reg[30]_i_11_n_5 ,\Data_Out_int_reg[30]_i_11_n_6 ,\Data_Out_int_reg[30]_i_11_n_7 }),
        .S({\Data_Out_int[30]_i_23_n_0 ,\Data_Out_int[30]_i_24_n_0 ,\Data_Out_int[30]_i_25_n_0 ,\Data_Out_int[30]_i_26_n_0 }));
  CARRY4 \Data_Out_int_reg[30]_i_14 
       (.CI(\Data_Out_int_reg[30]_i_27_n_0 ),
        .CO({\Data_Out_int_reg[30]_i_14_n_0 ,\Data_Out_int_reg[30]_i_14_n_1 ,\Data_Out_int_reg[30]_i_14_n_2 ,\Data_Out_int_reg[30]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[30]_i_11_n_5 ,\Data_Out_int_reg[30]_i_11_n_6 ,\Data_Out_int_reg[30]_i_11_n_7 ,\Data_Out_int_reg[30]_i_22_n_4 }),
        .O({\Data_Out_int_reg[30]_i_14_n_4 ,\Data_Out_int_reg[30]_i_14_n_5 ,\Data_Out_int_reg[30]_i_14_n_6 ,\Data_Out_int_reg[30]_i_14_n_7 }),
        .S({\Data_Out_int[30]_i_28_n_0 ,\Data_Out_int[30]_i_29_n_0 ,\Data_Out_int[30]_i_30_n_0 ,\Data_Out_int[30]_i_31_n_0 }));
  CARRY4 \Data_Out_int_reg[30]_i_17 
       (.CI(\Data_Out_int_reg[30]_i_32_n_0 ),
        .CO({\Data_Out_int_reg[30]_i_17_n_0 ,\Data_Out_int_reg[30]_i_17_n_1 ,\Data_Out_int_reg[30]_i_17_n_2 ,\Data_Out_int_reg[30]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[30]_i_8_0 [1:0],\Data_Out_int_reg[30]_i_17_0 [3:2]}),
        .O({\Data_Out_int_reg[30]_i_17_n_4 ,\Data_Out_int_reg[30]_i_17_n_5 ,\Data_Out_int_reg[30]_i_17_n_6 ,\Data_Out_int_reg[30]_i_17_n_7 }),
        .S({\Data_Out_int[30]_i_33_n_0 ,\Data_Out_int[30]_i_34_n_0 ,\Data_Out_int[30]_i_35_n_0 ,\Data_Out_int[30]_i_36_n_0 }));
  CARRY4 \Data_Out_int_reg[30]_i_22 
       (.CI(\Data_Out_int_reg[30]_i_37_n_0 ),
        .CO({\Data_Out_int_reg[30]_i_22_n_0 ,\Data_Out_int_reg[30]_i_22_n_1 ,\Data_Out_int_reg[30]_i_22_n_2 ,\Data_Out_int_reg[30]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[30]_i_17_n_5 ,\Data_Out_int_reg[30]_i_17_n_6 ,\Data_Out_int_reg[30]_i_17_n_7 ,\Data_Out_int_reg[30]_i_32_n_4 }),
        .O({\Data_Out_int_reg[30]_i_22_n_4 ,\Data_Out_int_reg[30]_i_22_n_5 ,\Data_Out_int_reg[30]_i_22_n_6 ,\Data_Out_int_reg[30]_i_22_n_7 }),
        .S({\Data_Out_int[30]_i_38_n_0 ,\Data_Out_int[30]_i_39_n_0 ,\Data_Out_int[30]_i_40_n_0 ,\Data_Out_int[30]_i_41_n_0 }));
  CARRY4 \Data_Out_int_reg[30]_i_27 
       (.CI(\Data_Out_int_reg[30]_i_42_n_0 ),
        .CO({\Data_Out_int_reg[30]_i_27_n_0 ,\Data_Out_int_reg[30]_i_27_n_1 ,\Data_Out_int_reg[30]_i_27_n_2 ,\Data_Out_int_reg[30]_i_27_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[30]_i_22_n_5 ,\Data_Out_int_reg[30]_i_22_n_6 ,\Data_Out_int_reg[30]_i_22_n_7 ,\Data_Out_int_reg[30]_i_37_n_4 }),
        .O({\Data_Out_int_reg[30]_i_27_n_4 ,\Data_Out_int_reg[30]_i_27_n_5 ,\Data_Out_int_reg[30]_i_27_n_6 ,\Data_Out_int_reg[30]_i_27_n_7 }),
        .S({\Data_Out_int[30]_i_43_n_0 ,\Data_Out_int[30]_i_44_n_0 ,\Data_Out_int[30]_i_45_n_0 ,\Data_Out_int[30]_i_46_n_0 }));
  CARRY4 \Data_Out_int_reg[30]_i_32 
       (.CI(\Data_Out_int_reg[30]_i_47_n_0 ),
        .CO({\Data_Out_int_reg[30]_i_32_n_0 ,\Data_Out_int_reg[30]_i_32_n_1 ,\Data_Out_int_reg[30]_i_32_n_2 ,\Data_Out_int_reg[30]_i_32_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[30]_i_17_0 [1:0],\Data_Out_int_reg[30]_i_32_0 [3:2]}),
        .O({\Data_Out_int_reg[30]_i_32_n_4 ,\Data_Out_int_reg[30]_i_32_n_5 ,\Data_Out_int_reg[30]_i_32_n_6 ,\Data_Out_int_reg[30]_i_32_n_7 }),
        .S({\Data_Out_int[30]_i_48_n_0 ,\Data_Out_int[30]_i_49_n_0 ,\Data_Out_int[30]_i_50_n_0 ,\Data_Out_int[30]_i_51_n_0 }));
  CARRY4 \Data_Out_int_reg[30]_i_37 
       (.CI(\Data_Out_int_reg[30]_i_52_n_0 ),
        .CO({\Data_Out_int_reg[30]_i_37_n_0 ,\Data_Out_int_reg[30]_i_37_n_1 ,\Data_Out_int_reg[30]_i_37_n_2 ,\Data_Out_int_reg[30]_i_37_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[30]_i_32_n_5 ,\Data_Out_int_reg[30]_i_32_n_6 ,\Data_Out_int_reg[30]_i_32_n_7 ,\Data_Out_int_reg[30]_i_47_n_4 }),
        .O({\Data_Out_int_reg[30]_i_37_n_4 ,\Data_Out_int_reg[30]_i_37_n_5 ,\Data_Out_int_reg[30]_i_37_n_6 ,\Data_Out_int_reg[30]_i_37_n_7 }),
        .S({\Data_Out_int[30]_i_53_n_0 ,\Data_Out_int[30]_i_54_n_0 ,\Data_Out_int[30]_i_55_n_0 ,\Data_Out_int[30]_i_56_n_0 }));
  CARRY4 \Data_Out_int_reg[30]_i_4 
       (.CI(\Data_Out_int_reg[30]_i_8_n_0 ),
        .CO({\NLW_Data_Out_int_reg[30]_i_4_CO_UNCONNECTED [3:2],\slv_reg2_reg[15] [2],\Data_Out_int_reg[30]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,L_carry__2,\Data_Out_int_reg[30]_i_4_0 [2]}),
        .O({\NLW_Data_Out_int_reg[30]_i_4_O_UNCONNECTED [3:1],\slv_reg2_reg[15]_0 }),
        .S({1'b0,1'b0,\Data_Out_int[30]_i_12 ,\Data_Out_int[30]_i_10_n_0 }));
  CARRY4 \Data_Out_int_reg[30]_i_42 
       (.CI(\Data_Out_int_reg[30]_i_57_n_0 ),
        .CO({\Data_Out_int_reg[30]_i_42_n_0 ,\Data_Out_int_reg[30]_i_42_n_1 ,\Data_Out_int_reg[30]_i_42_n_2 ,\Data_Out_int_reg[30]_i_42_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[30]_i_37_n_5 ,\Data_Out_int_reg[30]_i_37_n_6 ,\Data_Out_int_reg[30]_i_37_n_7 ,\Data_Out_int_reg[30]_i_52_n_4 }),
        .O({\Data_Out_int_reg[30]_i_42_n_4 ,\Data_Out_int_reg[30]_i_42_n_5 ,\Data_Out_int_reg[30]_i_42_n_6 ,\Data_Out_int_reg[30]_i_42_n_7 }),
        .S({\Data_Out_int[30]_i_58_n_0 ,\Data_Out_int[30]_i_59_n_0 ,\Data_Out_int[30]_i_60_n_0 ,\Data_Out_int[30]_i_61_n_0 }));
  CARRY4 \Data_Out_int_reg[30]_i_47 
       (.CI(1'b0),
        .CO({\Data_Out_int_reg[30]_i_47_n_0 ,\Data_Out_int_reg[30]_i_47_n_1 ,\Data_Out_int_reg[30]_i_47_n_2 ,\Data_Out_int_reg[30]_i_47_n_3 }),
        .CYINIT(L_carry__2),
        .DI({\Data_Out_int_reg[30]_i_32_0 [1:0],\Data_Out_int[30]_i_62_n_0 ,1'b0}),
        .O({\Data_Out_int_reg[30]_i_47_n_4 ,\Data_Out_int_reg[30]_i_47_n_5 ,\Data_Out_int_reg[30]_i_47_n_6 ,\NLW_Data_Out_int_reg[30]_i_47_O_UNCONNECTED [0]}),
        .S({\Data_Out_int[30]_i_63_n_0 ,\Data_Out_int[30]_i_64_n_0 ,\Data_Out_int[30]_i_65_n_0 ,1'b1}));
  CARRY4 \Data_Out_int_reg[30]_i_5 
       (.CI(\Data_Out_int_reg[30]_i_11_n_0 ),
        .CO({\NLW_Data_Out_int_reg[30]_i_5_CO_UNCONNECTED [3:2],\slv_reg2_reg[15] [1],\Data_Out_int_reg[30]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\slv_reg2_reg[15] [2],\Data_Out_int_reg[30]_i_8_n_4 }),
        .O({\NLW_Data_Out_int_reg[30]_i_5_O_UNCONNECTED [3:1],\slv_reg2_reg[15]_1 }),
        .S({1'b0,1'b0,\Data_Out_int[30]_i_15 ,\Data_Out_int[30]_i_13_n_0 }));
  CARRY4 \Data_Out_int_reg[30]_i_52 
       (.CI(1'b0),
        .CO({\Data_Out_int_reg[30]_i_52_n_0 ,\Data_Out_int_reg[30]_i_52_n_1 ,\Data_Out_int_reg[30]_i_52_n_2 ,\Data_Out_int_reg[30]_i_52_n_3 }),
        .CYINIT(\slv_reg2_reg[15] [2]),
        .DI({\Data_Out_int_reg[30]_i_47_n_5 ,\Data_Out_int_reg[30]_i_47_n_6 ,\Data_Out_int[30]_i_66_n_0 ,1'b0}),
        .O({\Data_Out_int_reg[30]_i_52_n_4 ,\Data_Out_int_reg[30]_i_52_n_5 ,\Data_Out_int_reg[30]_i_52_n_6 ,\NLW_Data_Out_int_reg[30]_i_52_O_UNCONNECTED [0]}),
        .S({\Data_Out_int[30]_i_67_n_0 ,\Data_Out_int[30]_i_68_n_0 ,\Data_Out_int[30]_i_69_n_0 ,1'b1}));
  CARRY4 \Data_Out_int_reg[30]_i_57 
       (.CI(1'b0),
        .CO({\Data_Out_int_reg[30]_i_57_n_0 ,\Data_Out_int_reg[30]_i_57_n_1 ,\Data_Out_int_reg[30]_i_57_n_2 ,\Data_Out_int_reg[30]_i_57_n_3 }),
        .CYINIT(\slv_reg2_reg[15] [1]),
        .DI({\Data_Out_int_reg[30]_i_52_n_5 ,\Data_Out_int_reg[30]_i_52_n_6 ,\Data_Out_int[30]_i_70_n_0 ,1'b0}),
        .O({\Data_Out_int_reg[30]_i_57_n_4 ,\Data_Out_int_reg[30]_i_57_n_5 ,\Data_Out_int_reg[30]_i_57_n_6 ,\NLW_Data_Out_int_reg[30]_i_57_O_UNCONNECTED [0]}),
        .S({\Data_Out_int[30]_i_71_n_0 ,\Data_Out_int[30]_i_72_n_0 ,\Data_Out_int[30]_i_73_n_0 ,1'b1}));
  CARRY4 \Data_Out_int_reg[30]_i_6 
       (.CI(\Data_Out_int_reg[30]_i_14_n_0 ),
        .CO({\NLW_Data_Out_int_reg[30]_i_6_CO_UNCONNECTED [3:2],\slv_reg2_reg[15] [0],\Data_Out_int_reg[30]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\slv_reg2_reg[15] [1],\Data_Out_int_reg[30]_i_11_n_4 }),
        .O({\NLW_Data_Out_int_reg[30]_i_6_O_UNCONNECTED [3:1],\slv_reg2_reg[15]_2 }),
        .S({1'b0,1'b0,\Data_Out_int[26]_i_8 ,\Data_Out_int[30]_i_16_n_0 }));
  CARRY4 \Data_Out_int_reg[30]_i_7 
       (.CI(\Data_Out_int[30]_i_3 ),
        .CO({\NLW_Data_Out_int_reg[30]_i_7_CO_UNCONNECTED [3:1],L_carry__2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Data_Out_int_reg[30]_i_7_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \Data_Out_int_reg[30]_i_8 
       (.CI(\Data_Out_int_reg[30]_i_17_n_0 ),
        .CO({\Data_Out_int_reg[30]_i_8_n_0 ,\Data_Out_int_reg[30]_i_8_n_1 ,\Data_Out_int_reg[30]_i_8_n_2 ,\Data_Out_int_reg[30]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[30]_i_4_0 [1:0],\Data_Out_int_reg[30]_i_8_0 [3:2]}),
        .O({\Data_Out_int_reg[30]_i_8_n_4 ,\Data_Out_int_reg[30]_i_8_n_5 ,\Data_Out_int_reg[30]_i_8_n_6 ,\Data_Out_int_reg[30]_i_8_n_7 }),
        .S({\Data_Out_int[30]_i_18_n_0 ,\Data_Out_int[30]_i_19_n_0 ,\Data_Out_int[30]_i_20_n_0 ,\Data_Out_int[30]_i_21_n_0 }));
  CARRY4 L__972_carry__0_i_1
       (.CI(L__972_carry_i_2_n_0),
        .CO({L__972_carry__0_i_1_n_0,L__972_carry__0_i_1_n_1,L__972_carry__0_i_1_n_2,L__972_carry__0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({L__972_carry__0_i_6_n_5,L__972_carry__0_i_6_n_6,L__972_carry__0_i_6_n_7,L__972_carry_i_12_n_4}),
        .O(\ampl_sig_reg[6]_0 ),
        .S({L__972_carry__0_i_7_n_0,L__972_carry__0_i_8_n_0,L__972_carry__0_i_9_n_0,L__972_carry__0_i_10_n_0}));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry__0_i_10
       (.I0(\ampl_sig_reg[7]_0 [3]),
        .I1(L_carry__2_0[3]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_21 [1]),
        .I4(L__972_carry_i_12_n_4),
        .O(L__972_carry__0_i_10_n_0));
  CARRY4 L__972_carry__0_i_11
       (.CI(L__972_carry_i_26_n_0),
        .CO({L__972_carry__0_i_11_n_0,L__972_carry__0_i_11_n_1,L__972_carry__0_i_11_n_2,L__972_carry__0_i_11_n_3}),
        .CYINIT(1'b0),
        .DI({L__972_carry_i_36_n_5,L__972_carry_i_36_n_6,L__972_carry_i_36_n_7,L__972_carry_i_41_n_4}),
        .O({L__972_carry__0_i_11_n_4,L__972_carry__0_i_11_n_5,L__972_carry__0_i_11_n_6,L__972_carry__0_i_11_n_7}),
        .S({L__972_carry__0_i_16_n_0,L__972_carry__0_i_17_n_0,L__972_carry__0_i_18_n_0,L__972_carry__0_i_19_n_0}));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry__0_i_12
       (.I0(\ampl_sig_reg[7]_0 [6]),
        .I1(L_carry__2_0[6]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_19 ),
        .I4(L__972_carry__0_i_11_n_5),
        .O(L__972_carry__0_i_12_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry__0_i_13
       (.I0(\ampl_sig_reg[7]_0 [5]),
        .I1(L_carry__2_0[5]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_19 ),
        .I4(L__972_carry__0_i_11_n_6),
        .O(L__972_carry__0_i_13_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry__0_i_14
       (.I0(L_carry__2_0[4]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(\ampl_sig_reg[7]_0 [4]),
        .I3(\slv_reg2_reg[15]_19 ),
        .I4(L__972_carry__0_i_11_n_7),
        .O(L__972_carry__0_i_14_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry__0_i_15
       (.I0(\ampl_sig_reg[7]_0 [3]),
        .I1(L_carry__2_0[3]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_19 ),
        .I4(L__972_carry_i_26_n_4),
        .O(L__972_carry__0_i_15_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry__0_i_16
       (.I0(\ampl_sig_reg[7]_0 [6]),
        .I1(L_carry__2_0[6]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_17 ),
        .I4(L__972_carry_i_36_n_5),
        .O(L__972_carry__0_i_16_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry__0_i_17
       (.I0(\ampl_sig_reg[7]_0 [5]),
        .I1(L_carry__2_0[5]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_17 ),
        .I4(L__972_carry_i_36_n_6),
        .O(L__972_carry__0_i_17_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry__0_i_18
       (.I0(L_carry__2_0[4]),
        .I1(L__972_carry_i_18_0),
        .I2(\ampl_sig_reg[7]_0 [4]),
        .I3(\slv_reg2_reg[15]_17 ),
        .I4(L__972_carry_i_36_n_7),
        .O(L__972_carry__0_i_18_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry__0_i_19
       (.I0(\ampl_sig_reg[7]_0 [3]),
        .I1(L_carry__2_0[3]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_17 ),
        .I4(L__972_carry_i_41_n_4),
        .O(L__972_carry__0_i_19_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry__0_i_2
       (.I0(\ampl_sig_reg[7]_0 [7]),
        .I1(L_carry__2_0[7]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_21 [0]),
        .I4(\ampl_sig_reg[6]_0 [3]),
        .O(\ampl_sig_reg[7]_2 [3]));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry__0_i_3
       (.I0(\ampl_sig_reg[7]_0 [6]),
        .I1(L_carry__2_0[6]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_21 [0]),
        .I4(\ampl_sig_reg[6]_0 [2]),
        .O(\ampl_sig_reg[7]_2 [2]));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry__0_i_4
       (.I0(\ampl_sig_reg[7]_0 [5]),
        .I1(L_carry__2_0[5]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_21 [0]),
        .I4(\ampl_sig_reg[6]_0 [1]),
        .O(\ampl_sig_reg[7]_2 [1]));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry__0_i_5
       (.I0(L_carry__2_0[4]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(\ampl_sig_reg[7]_0 [4]),
        .I3(\slv_reg2_reg[15]_21 [0]),
        .I4(\ampl_sig_reg[6]_0 [0]),
        .O(\ampl_sig_reg[7]_2 [0]));
  CARRY4 L__972_carry__0_i_6
       (.CI(L__972_carry_i_12_n_0),
        .CO({L__972_carry__0_i_6_n_0,L__972_carry__0_i_6_n_1,L__972_carry__0_i_6_n_2,L__972_carry__0_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({L__972_carry__0_i_11_n_5,L__972_carry__0_i_11_n_6,L__972_carry__0_i_11_n_7,L__972_carry_i_26_n_4}),
        .O({L__972_carry__0_i_6_n_4,L__972_carry__0_i_6_n_5,L__972_carry__0_i_6_n_6,L__972_carry__0_i_6_n_7}),
        .S({L__972_carry__0_i_12_n_0,L__972_carry__0_i_13_n_0,L__972_carry__0_i_14_n_0,L__972_carry__0_i_15_n_0}));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry__0_i_7
       (.I0(\ampl_sig_reg[7]_0 [6]),
        .I1(L_carry__2_0[6]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_21 [1]),
        .I4(L__972_carry__0_i_6_n_5),
        .O(L__972_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry__0_i_8
       (.I0(\ampl_sig_reg[7]_0 [5]),
        .I1(L_carry__2_0[5]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_21 [1]),
        .I4(L__972_carry__0_i_6_n_6),
        .O(L__972_carry__0_i_8_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry__0_i_9
       (.I0(L_carry__2_0[4]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(\ampl_sig_reg[7]_0 [4]),
        .I3(\slv_reg2_reg[15]_21 [1]),
        .I4(L__972_carry__0_i_6_n_7),
        .O(L__972_carry__0_i_9_n_0));
  CARRY4 L__972_carry__1_i_1
       (.CI(L__972_carry__0_i_1_n_0),
        .CO({L__972_carry__1_i_1_n_0,L__972_carry__1_i_1_n_1,L__972_carry__1_i_1_n_2,L__972_carry__1_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({L__972_carry__1_i_6_n_5,L__972_carry__1_i_6_n_6,L__972_carry__1_i_6_n_7,L__972_carry__0_i_6_n_4}),
        .O(\slv_reg2_reg[10] ),
        .S({L__972_carry__1_i_7_n_0,L__972_carry__1_i_8_n_0,L__972_carry__1_i_9_n_0,L__972_carry__1_i_10_n_0}));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry__1_i_10
       (.I0(\ampl_sig_reg[7]_0 [7]),
        .I1(L_carry__2_0[7]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_21 [1]),
        .I4(L__972_carry__0_i_6_n_4),
        .O(L__972_carry__1_i_10_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry__1_i_11
       (.I0(L_carry__2_0[10]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[10]),
        .I3(\slv_reg2_reg[15]_19 ),
        .I4(L__972_carry_i_21_n_5),
        .O(L__972_carry__1_i_11_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry__1_i_12
       (.I0(ampl_sig_reg[9]),
        .I1(L_carry__2_0[9]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_19 ),
        .I4(L__972_carry_i_21_n_6),
        .O(L__972_carry__1_i_12_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry__1_i_13
       (.I0(L_carry__2_0[8]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[8]),
        .I3(\slv_reg2_reg[15]_19 ),
        .I4(L__972_carry_i_21_n_7),
        .O(L__972_carry__1_i_13_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry__1_i_14
       (.I0(\ampl_sig_reg[7]_0 [7]),
        .I1(L_carry__2_0[7]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_19 ),
        .I4(L__972_carry__0_i_11_n_4),
        .O(L__972_carry__1_i_14_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry__1_i_2
       (.I0(ampl_sig_reg[11]),
        .I1(L_carry__2_0[11]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_21 [0]),
        .I4(\slv_reg2_reg[10] [3]),
        .O(\ampl_sig_reg[11]_2 [3]));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry__1_i_3
       (.I0(L_carry__2_0[10]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[10]),
        .I3(\slv_reg2_reg[15]_21 [0]),
        .I4(\slv_reg2_reg[10] [2]),
        .O(\ampl_sig_reg[11]_2 [2]));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry__1_i_4
       (.I0(ampl_sig_reg[9]),
        .I1(L_carry__2_0[9]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_21 [0]),
        .I4(\slv_reg2_reg[10] [1]),
        .O(\ampl_sig_reg[11]_2 [1]));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry__1_i_5
       (.I0(L_carry__2_0[8]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[8]),
        .I3(\slv_reg2_reg[15]_21 [0]),
        .I4(\slv_reg2_reg[10] [0]),
        .O(\ampl_sig_reg[11]_2 [0]));
  CARRY4 L__972_carry__1_i_6
       (.CI(L__972_carry__0_i_6_n_0),
        .CO({L__972_carry__1_i_6_n_0,L__972_carry__1_i_6_n_1,L__972_carry__1_i_6_n_2,L__972_carry__1_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({L__972_carry_i_21_n_5,L__972_carry_i_21_n_6,L__972_carry_i_21_n_7,L__972_carry__0_i_11_n_4}),
        .O({L__972_carry__1_i_6_n_4,L__972_carry__1_i_6_n_5,L__972_carry__1_i_6_n_6,L__972_carry__1_i_6_n_7}),
        .S({L__972_carry__1_i_11_n_0,L__972_carry__1_i_12_n_0,L__972_carry__1_i_13_n_0,L__972_carry__1_i_14_n_0}));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry__1_i_7
       (.I0(L_carry__2_0[10]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[10]),
        .I3(\slv_reg2_reg[15]_21 [1]),
        .I4(L__972_carry__1_i_6_n_5),
        .O(L__972_carry__1_i_7_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry__1_i_8
       (.I0(ampl_sig_reg[9]),
        .I1(L_carry__2_0[9]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_21 [1]),
        .I4(L__972_carry__1_i_6_n_6),
        .O(L__972_carry__1_i_8_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry__1_i_9
       (.I0(L_carry__2_0[8]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[8]),
        .I3(\slv_reg2_reg[15]_21 [1]),
        .I4(L__972_carry__1_i_6_n_7),
        .O(L__972_carry__1_i_9_n_0));
  CARRY4 L__972_carry__2_i_1
       (.CI(L__972_carry__1_i_1_n_0),
        .CO({L__972_carry__2_i_1_n_0,L__972_carry__2_i_1_n_1,L__972_carry__2_i_1_n_2,L__972_carry__2_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({L__972_carry_i_9_n_5,L__972_carry_i_9_n_6,L__972_carry_i_9_n_7,L__972_carry__1_i_6_n_4}),
        .O(\slv_reg2_reg[14] ),
        .S({L__972_carry__2_i_6_n_0,L__972_carry__2_i_7_n_0,L__972_carry__2_i_8_n_0,L__972_carry__2_i_9_n_0}));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry__2_i_2
       (.I0(L_carry__2_0[15]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[15]),
        .I3(\slv_reg2_reg[15]_21 [0]),
        .I4(\slv_reg2_reg[14] [3]),
        .O(\slv_reg2_reg[15]_24 [3]));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry__2_i_3
       (.I0(L_carry__2_0[14]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[14]),
        .I3(\slv_reg2_reg[15]_21 [0]),
        .I4(\slv_reg2_reg[14] [2]),
        .O(\slv_reg2_reg[15]_24 [2]));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry__2_i_4
       (.I0(L_carry__2_0[13]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[13]),
        .I3(\slv_reg2_reg[15]_21 [0]),
        .I4(\slv_reg2_reg[14] [1]),
        .O(\slv_reg2_reg[15]_24 [1]));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry__2_i_5
       (.I0(L_carry__2_0[12]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[12]),
        .I3(\slv_reg2_reg[15]_21 [0]),
        .I4(\slv_reg2_reg[14] [0]),
        .O(\slv_reg2_reg[15]_24 [0]));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry__2_i_6
       (.I0(L_carry__2_0[14]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[14]),
        .I3(\slv_reg2_reg[15]_21 [1]),
        .I4(L__972_carry_i_9_n_5),
        .O(L__972_carry__2_i_6_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry__2_i_7
       (.I0(L_carry__2_0[13]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[13]),
        .I3(\slv_reg2_reg[15]_21 [1]),
        .I4(L__972_carry_i_9_n_6),
        .O(L__972_carry__2_i_7_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry__2_i_8
       (.I0(L_carry__2_0[12]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[12]),
        .I3(\slv_reg2_reg[15]_21 [1]),
        .I4(L__972_carry_i_9_n_7),
        .O(L__972_carry__2_i_8_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry__2_i_9
       (.I0(ampl_sig_reg[11]),
        .I1(L_carry__2_0[11]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_21 [1]),
        .I4(L__972_carry__1_i_6_n_4),
        .O(L__972_carry__2_i_9_n_0));
  CARRY4 L__972_carry_i_1
       (.CI(L__972_carry__2_i_1_n_0),
        .CO({NLW_L__972_carry_i_1_CO_UNCONNECTED[3:2],\slv_reg2_reg[15]_21 [0],L__972_carry_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\slv_reg2_reg[15]_21 [1],L__972_carry_i_9_n_4}),
        .O({NLW_L__972_carry_i_1_O_UNCONNECTED[3:1],\slv_reg2_reg[15]_23 }),
        .S({1'b0,1'b0,L__972_carry__3_i_1,L__972_carry_i_11_n_0}));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry_i_11
       (.I0(L_carry__2_0[15]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[15]),
        .I3(\slv_reg2_reg[15]_21 [1]),
        .I4(L__972_carry_i_9_n_4),
        .O(L__972_carry_i_11_n_0));
  CARRY4 L__972_carry_i_12
       (.CI(1'b0),
        .CO({L__972_carry_i_12_n_0,L__972_carry_i_12_n_1,L__972_carry_i_12_n_2,L__972_carry_i_12_n_3}),
        .CYINIT(\slv_reg2_reg[15]_19 ),
        .DI({L__972_carry_i_26_n_5,L__972_carry_i_26_n_6,L__972_carry_i_27_n_0,1'b0}),
        .O({L__972_carry_i_12_n_4,L__972_carry_i_12_n_5,L__972_carry_i_12_n_6,NLW_L__972_carry_i_12_O_UNCONNECTED[0]}),
        .S({L__972_carry_i_28_n_0,L__972_carry_i_29_n_0,L__972_carry_i_30_n_0,1'b1}));
  LUT4 #(
    .INIT(16'h27D8)) 
    L__972_carry_i_13
       (.I0(\Data_Out_int_reg[30]_i_47_0 ),
        .I1(L_carry__2_0[0]),
        .I2(\ampl_sig_reg[7]_0 [0]),
        .I3(\slv_reg2_reg[15]_21 [1]),
        .O(L__972_carry_i_13_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry_i_14
       (.I0(L_carry__2_0[2]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(\ampl_sig_reg[7]_0 [2]),
        .I3(\slv_reg2_reg[15]_21 [1]),
        .I4(L__972_carry_i_12_n_5),
        .O(L__972_carry_i_14_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry_i_15
       (.I0(\ampl_sig_reg[7]_0 [1]),
        .I1(L_carry__2_0[1]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_21 [1]),
        .I4(L__972_carry_i_12_n_6),
        .O(L__972_carry_i_15_n_0));
  LUT5 #(
    .INIT(32'h99966696)) 
    L__972_carry_i_16
       (.I0(\slv_reg2_reg[15]_21 [1]),
        .I1(p_1_in_0),
        .I2(DOADO[1]),
        .I3(L__972_carry_i_17_n_0),
        .I4(L_carry[1]),
        .O(L__972_carry_i_16_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    L__972_carry_i_17
       (.I0(\axi_rdata_reg[11]_0 [0]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(waveSel),
        .O(L__972_carry_i_17_n_0));
  CARRY4 L__972_carry_i_18
       (.CI(L__972_carry_i_21_n_0),
        .CO({L__972_carry_i_18_n_0,L__972_carry_i_18_n_1,L__972_carry_i_18_n_2,L__972_carry_i_18_n_3}),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[22]_i_16_n_5 ,\Data_Out_int_reg[22]_i_16_n_6 ,\Data_Out_int_reg[22]_i_16_n_7 ,L__972_carry_i_31_n_4}),
        .O({L__972_carry_i_18_n_4,L__972_carry_i_18_n_5,L__972_carry_i_18_n_6,L__972_carry_i_18_n_7}),
        .S({L__972_carry_i_32_n_0,L__972_carry_i_33_n_0,L__972_carry_i_34_n_0,L__972_carry_i_35_n_0}));
  CARRY4 L__972_carry_i_2
       (.CI(1'b0),
        .CO({L__972_carry_i_2_n_0,L__972_carry_i_2_n_1,L__972_carry_i_2_n_2,L__972_carry_i_2_n_3}),
        .CYINIT(\slv_reg2_reg[15]_21 [1]),
        .DI({L__972_carry_i_12_n_5,L__972_carry_i_12_n_6,L__972_carry_i_13_n_0,1'b0}),
        .O({\slv_reg0_reg[0]_rep__1 [3:1],NLW_L__972_carry_i_2_O_UNCONNECTED[0]}),
        .S({L__972_carry_i_14_n_0,L__972_carry_i_15_n_0,L__972_carry_i_16_n_0,1'b1}));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry_i_20
       (.I0(L_carry__2_0[15]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[15]),
        .I3(\slv_reg2_reg[15]_19 ),
        .I4(L__972_carry_i_18_n_4),
        .O(L__972_carry_i_20_n_0));
  CARRY4 L__972_carry_i_21
       (.CI(L__972_carry__0_i_11_n_0),
        .CO({L__972_carry_i_21_n_0,L__972_carry_i_21_n_1,L__972_carry_i_21_n_2,L__972_carry_i_21_n_3}),
        .CYINIT(1'b0),
        .DI({L__972_carry_i_31_n_5,L__972_carry_i_31_n_6,L__972_carry_i_31_n_7,L__972_carry_i_36_n_4}),
        .O({L__972_carry_i_21_n_4,L__972_carry_i_21_n_5,L__972_carry_i_21_n_6,L__972_carry_i_21_n_7}),
        .S({L__972_carry_i_37_n_0,L__972_carry_i_38_n_0,L__972_carry_i_39_n_0,L__972_carry_i_40_n_0}));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry_i_22
       (.I0(L_carry__2_0[14]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[14]),
        .I3(\slv_reg2_reg[15]_19 ),
        .I4(L__972_carry_i_18_n_5),
        .O(L__972_carry_i_22_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry_i_23
       (.I0(L_carry__2_0[13]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[13]),
        .I3(\slv_reg2_reg[15]_19 ),
        .I4(L__972_carry_i_18_n_6),
        .O(L__972_carry_i_23_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry_i_24
       (.I0(L_carry__2_0[12]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[12]),
        .I3(\slv_reg2_reg[15]_19 ),
        .I4(L__972_carry_i_18_n_7),
        .O(L__972_carry_i_24_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry_i_25
       (.I0(ampl_sig_reg[11]),
        .I1(L_carry__2_0[11]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_19 ),
        .I4(L__972_carry_i_21_n_4),
        .O(L__972_carry_i_25_n_0));
  CARRY4 L__972_carry_i_26
       (.CI(1'b0),
        .CO({L__972_carry_i_26_n_0,L__972_carry_i_26_n_1,L__972_carry_i_26_n_2,L__972_carry_i_26_n_3}),
        .CYINIT(\slv_reg2_reg[15]_17 ),
        .DI({L__972_carry_i_41_n_5,L__972_carry_i_41_n_6,L__972_carry_i_42_n_0,1'b0}),
        .O({L__972_carry_i_26_n_4,L__972_carry_i_26_n_5,L__972_carry_i_26_n_6,NLW_L__972_carry_i_26_O_UNCONNECTED[0]}),
        .S({L__972_carry_i_43_n_0,L__972_carry_i_44_n_0,L__972_carry_i_45_n_0,1'b1}));
  LUT4 #(
    .INIT(16'h27D8)) 
    L__972_carry_i_27
       (.I0(\Data_Out_int_reg[30]_i_47_0 ),
        .I1(L_carry__2_0[0]),
        .I2(\ampl_sig_reg[7]_0 [0]),
        .I3(\slv_reg2_reg[15]_19 ),
        .O(L__972_carry_i_27_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry_i_28
       (.I0(L_carry__2_0[2]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(\ampl_sig_reg[7]_0 [2]),
        .I3(\slv_reg2_reg[15]_19 ),
        .I4(L__972_carry_i_26_n_5),
        .O(L__972_carry_i_28_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry_i_29
       (.I0(\ampl_sig_reg[7]_0 [1]),
        .I1(L_carry__2_0[1]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_19 ),
        .I4(L__972_carry_i_26_n_6),
        .O(L__972_carry_i_29_n_0));
  LUT4 #(
    .INIT(16'h27D8)) 
    L__972_carry_i_3
       (.I0(\Data_Out_int_reg[30]_i_47_0 ),
        .I1(L_carry__2_0[0]),
        .I2(\ampl_sig_reg[7]_0 [0]),
        .I3(\slv_reg2_reg[15]_21 [0]),
        .O(\slv_reg0_reg[0]_rep__1 [0]));
  LUT5 #(
    .INIT(32'h99966696)) 
    L__972_carry_i_30
       (.I0(\slv_reg2_reg[15]_19 ),
        .I1(p_1_in_0),
        .I2(DOADO[2]),
        .I3(L__972_carry_i_17_n_0),
        .I4(L_carry[2]),
        .O(L__972_carry_i_30_n_0));
  CARRY4 L__972_carry_i_31
       (.CI(L__972_carry_i_36_n_0),
        .CO({L__972_carry_i_31_n_0,L__972_carry_i_31_n_1,L__972_carry_i_31_n_2,L__972_carry_i_31_n_3}),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[22]_i_29_n_5 ,\Data_Out_int_reg[22]_i_29_n_6 ,\Data_Out_int_reg[22]_i_29_n_7 ,L__972_carry_i_46_n_4}),
        .O({L__972_carry_i_31_n_4,L__972_carry_i_31_n_5,L__972_carry_i_31_n_6,L__972_carry_i_31_n_7}),
        .S({L__972_carry_i_47_n_0,L__972_carry_i_48_n_0,L__972_carry_i_49_n_0,L__972_carry_i_50_n_0}));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry_i_32
       (.I0(L_carry__2_0[14]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[14]),
        .I3(\slv_reg2_reg[15]_17 ),
        .I4(\Data_Out_int_reg[22]_i_16_n_5 ),
        .O(L__972_carry_i_32_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry_i_33
       (.I0(L_carry__2_0[13]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[13]),
        .I3(\slv_reg2_reg[15]_17 ),
        .I4(\Data_Out_int_reg[22]_i_16_n_6 ),
        .O(L__972_carry_i_33_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry_i_34
       (.I0(L_carry__2_0[12]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(ampl_sig_reg[12]),
        .I3(\slv_reg2_reg[15]_17 ),
        .I4(\Data_Out_int_reg[22]_i_16_n_7 ),
        .O(L__972_carry_i_34_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry_i_35
       (.I0(ampl_sig_reg[11]),
        .I1(L_carry__2_0[11]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_17 ),
        .I4(L__972_carry_i_31_n_4),
        .O(L__972_carry_i_35_n_0));
  CARRY4 L__972_carry_i_36
       (.CI(L__972_carry_i_41_n_0),
        .CO({L__972_carry_i_36_n_0,L__972_carry_i_36_n_1,L__972_carry_i_36_n_2,L__972_carry_i_36_n_3}),
        .CYINIT(1'b0),
        .DI({L__972_carry_i_46_n_5,L__972_carry_i_46_n_6,L__972_carry_i_46_n_7,L__972_carry_i_51_n_4}),
        .O({L__972_carry_i_36_n_4,L__972_carry_i_36_n_5,L__972_carry_i_36_n_6,L__972_carry_i_36_n_7}),
        .S({L__972_carry_i_52_n_0,L__972_carry_i_53_n_0,L__972_carry_i_54_n_0,L__972_carry_i_55_n_0}));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry_i_37
       (.I0(L_carry__2_0[10]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[10]),
        .I3(\slv_reg2_reg[15]_17 ),
        .I4(L__972_carry_i_31_n_5),
        .O(L__972_carry_i_37_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry_i_38
       (.I0(ampl_sig_reg[9]),
        .I1(L_carry__2_0[9]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_17 ),
        .I4(L__972_carry_i_31_n_6),
        .O(L__972_carry_i_38_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry_i_39
       (.I0(L_carry__2_0[8]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[8]),
        .I3(\slv_reg2_reg[15]_17 ),
        .I4(L__972_carry_i_31_n_7),
        .O(L__972_carry_i_39_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry_i_4
       (.I0(\ampl_sig_reg[7]_0 [3]),
        .I1(L_carry__2_0[3]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_21 [0]),
        .I4(\slv_reg0_reg[0]_rep__1 [3]),
        .O(\ampl_sig_reg[3]_0 [3]));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry_i_40
       (.I0(\ampl_sig_reg[7]_0 [7]),
        .I1(L_carry__2_0[7]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_17 ),
        .I4(L__972_carry_i_36_n_4),
        .O(L__972_carry_i_40_n_0));
  CARRY4 L__972_carry_i_41
       (.CI(1'b0),
        .CO({L__972_carry_i_41_n_0,L__972_carry_i_41_n_1,L__972_carry_i_41_n_2,L__972_carry_i_41_n_3}),
        .CYINIT(\slv_reg2_reg[15]_15 ),
        .DI({L__972_carry_i_51_n_5,L__972_carry_i_51_n_6,L__972_carry_i_56_n_0,1'b0}),
        .O({L__972_carry_i_41_n_4,L__972_carry_i_41_n_5,L__972_carry_i_41_n_6,NLW_L__972_carry_i_41_O_UNCONNECTED[0]}),
        .S({L__972_carry_i_57_n_0,L__972_carry_i_58_n_0,L__972_carry_i_59_n_0,1'b1}));
  LUT4 #(
    .INIT(16'h27D8)) 
    L__972_carry_i_42
       (.I0(\Data_Out_int_reg[30]_i_47_0 ),
        .I1(L_carry__2_0[0]),
        .I2(\ampl_sig_reg[7]_0 [0]),
        .I3(\slv_reg2_reg[15]_17 ),
        .O(L__972_carry_i_42_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry_i_43
       (.I0(L_carry__2_0[2]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(\ampl_sig_reg[7]_0 [2]),
        .I3(\slv_reg2_reg[15]_17 ),
        .I4(L__972_carry_i_41_n_5),
        .O(L__972_carry_i_43_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry_i_44
       (.I0(\ampl_sig_reg[7]_0 [1]),
        .I1(L_carry__2_0[1]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_17 ),
        .I4(L__972_carry_i_41_n_6),
        .O(L__972_carry_i_44_n_0));
  LUT5 #(
    .INIT(32'h99966696)) 
    L__972_carry_i_45
       (.I0(\slv_reg2_reg[15]_17 ),
        .I1(p_1_in_0),
        .I2(DOADO[3]),
        .I3(L__972_carry_i_17_n_0),
        .I4(L_carry[3]),
        .O(L__972_carry_i_45_n_0));
  CARRY4 L__972_carry_i_46
       (.CI(L__972_carry_i_51_n_0),
        .CO({L__972_carry_i_46_n_0,L__972_carry_i_46_n_1,L__972_carry_i_46_n_2,L__972_carry_i_46_n_3}),
        .CYINIT(1'b0),
        .DI({\Data_Out_int_reg[22]_i_43_n_5 ,\Data_Out_int_reg[22]_i_43_n_6 ,\Data_Out_int_reg[22]_i_43_n_7 ,L__972_carry_i_60_n_4}),
        .O({L__972_carry_i_46_n_4,L__972_carry_i_46_n_5,L__972_carry_i_46_n_6,L__972_carry_i_46_n_7}),
        .S({L__972_carry_i_61_n_0,L__972_carry_i_62_n_0,L__972_carry_i_63_n_0,L__972_carry_i_64_n_0}));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry_i_47
       (.I0(L_carry__2_0[10]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[10]),
        .I3(\slv_reg2_reg[15]_15 ),
        .I4(\Data_Out_int_reg[22]_i_29_n_5 ),
        .O(L__972_carry_i_47_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry_i_48
       (.I0(ampl_sig_reg[9]),
        .I1(L_carry__2_0[9]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_15 ),
        .I4(\Data_Out_int_reg[22]_i_29_n_6 ),
        .O(L__972_carry_i_48_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry_i_49
       (.I0(L_carry__2_0[8]),
        .I1(L__972_carry_i_18_0),
        .I2(ampl_sig_reg[8]),
        .I3(\slv_reg2_reg[15]_15 ),
        .I4(\Data_Out_int_reg[22]_i_29_n_7 ),
        .O(L__972_carry_i_49_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry_i_5
       (.I0(L_carry__2_0[2]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(\ampl_sig_reg[7]_0 [2]),
        .I3(\slv_reg2_reg[15]_21 [0]),
        .I4(\slv_reg0_reg[0]_rep__1 [2]),
        .O(\ampl_sig_reg[3]_0 [2]));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry_i_50
       (.I0(\ampl_sig_reg[7]_0 [7]),
        .I1(L_carry__2_0[7]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_15 ),
        .I4(L__972_carry_i_46_n_4),
        .O(L__972_carry_i_50_n_0));
  CARRY4 L__972_carry_i_51
       (.CI(1'b0),
        .CO({L__972_carry_i_51_n_0,L__972_carry_i_51_n_1,L__972_carry_i_51_n_2,L__972_carry_i_51_n_3}),
        .CYINIT(\slv_reg2_reg[15]_13 ),
        .DI({L__972_carry_i_60_n_5,L__972_carry_i_60_n_6,L__972_carry_i_65_n_0,1'b0}),
        .O({L__972_carry_i_51_n_4,L__972_carry_i_51_n_5,L__972_carry_i_51_n_6,NLW_L__972_carry_i_51_O_UNCONNECTED[0]}),
        .S({L__972_carry_i_66_n_0,L__972_carry_i_67_n_0,L__972_carry_i_68_n_0,1'b1}));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry_i_52
       (.I0(\ampl_sig_reg[7]_0 [6]),
        .I1(L_carry__2_0[6]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_15 ),
        .I4(L__972_carry_i_46_n_5),
        .O(L__972_carry_i_52_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry_i_53
       (.I0(\ampl_sig_reg[7]_0 [5]),
        .I1(L_carry__2_0[5]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_15 ),
        .I4(L__972_carry_i_46_n_6),
        .O(L__972_carry_i_53_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry_i_54
       (.I0(L_carry__2_0[4]),
        .I1(L__972_carry_i_18_0),
        .I2(\ampl_sig_reg[7]_0 [4]),
        .I3(\slv_reg2_reg[15]_15 ),
        .I4(L__972_carry_i_46_n_7),
        .O(L__972_carry_i_54_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry_i_55
       (.I0(\ampl_sig_reg[7]_0 [3]),
        .I1(L_carry__2_0[3]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_15 ),
        .I4(L__972_carry_i_51_n_4),
        .O(L__972_carry_i_55_n_0));
  LUT4 #(
    .INIT(16'h27D8)) 
    L__972_carry_i_56
       (.I0(\Data_Out_int_reg[30]_i_47_0 ),
        .I1(L_carry__2_0[0]),
        .I2(\ampl_sig_reg[7]_0 [0]),
        .I3(\slv_reg2_reg[15]_15 ),
        .O(L__972_carry_i_56_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry_i_57
       (.I0(L_carry__2_0[2]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(\ampl_sig_reg[7]_0 [2]),
        .I3(\slv_reg2_reg[15]_15 ),
        .I4(L__972_carry_i_51_n_5),
        .O(L__972_carry_i_57_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry_i_58
       (.I0(\ampl_sig_reg[7]_0 [1]),
        .I1(L_carry__2_0[1]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_15 ),
        .I4(L__972_carry_i_51_n_6),
        .O(L__972_carry_i_58_n_0));
  LUT5 #(
    .INIT(32'h99966696)) 
    L__972_carry_i_59
       (.I0(\slv_reg2_reg[15]_15 ),
        .I1(p_1_in_0),
        .I2(DOADO[4]),
        .I3(L__972_carry_i_17_n_0),
        .I4(L_carry[4]),
        .O(L__972_carry_i_59_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry_i_6
       (.I0(\ampl_sig_reg[7]_0 [1]),
        .I1(L_carry__2_0[1]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_21 [0]),
        .I4(\slv_reg0_reg[0]_rep__1 [1]),
        .O(\ampl_sig_reg[3]_0 [1]));
  CARRY4 L__972_carry_i_60
       (.CI(1'b0),
        .CO({L__972_carry_i_60_n_0,L__972_carry_i_60_n_1,L__972_carry_i_60_n_2,L__972_carry_i_60_n_3}),
        .CYINIT(\slv_reg2_reg[15]_11 ),
        .DI({\Data_Out_int_reg[22]_i_52_n_5 ,\Data_Out_int_reg[22]_i_52_n_6 ,L__972_carry_i_69_n_0,1'b0}),
        .O({L__972_carry_i_60_n_4,L__972_carry_i_60_n_5,L__972_carry_i_60_n_6,NLW_L__972_carry_i_60_O_UNCONNECTED[0]}),
        .S({L__972_carry_i_70_n_0,L__972_carry_i_71_n_0,L__972_carry_i_72_n_0,1'b1}));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry_i_61
       (.I0(\ampl_sig_reg[7]_0 [6]),
        .I1(L_carry__2_0[6]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_13 ),
        .I4(\Data_Out_int_reg[22]_i_43_n_5 ),
        .O(L__972_carry_i_61_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry_i_62
       (.I0(\ampl_sig_reg[7]_0 [5]),
        .I1(L_carry__2_0[5]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_13 ),
        .I4(\Data_Out_int_reg[22]_i_43_n_6 ),
        .O(L__972_carry_i_62_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry_i_63
       (.I0(L_carry__2_0[4]),
        .I1(L__972_carry_i_18_0),
        .I2(\ampl_sig_reg[7]_0 [4]),
        .I3(\slv_reg2_reg[15]_13 ),
        .I4(\Data_Out_int_reg[22]_i_43_n_7 ),
        .O(L__972_carry_i_63_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry_i_64
       (.I0(\ampl_sig_reg[7]_0 [3]),
        .I1(L_carry__2_0[3]),
        .I2(L__972_carry_i_18_0),
        .I3(\slv_reg2_reg[15]_13 ),
        .I4(L__972_carry_i_60_n_4),
        .O(L__972_carry_i_64_n_0));
  LUT4 #(
    .INIT(16'h27D8)) 
    L__972_carry_i_65
       (.I0(\Data_Out_int_reg[30]_i_47_0 ),
        .I1(L_carry__2_0[0]),
        .I2(\ampl_sig_reg[7]_0 [0]),
        .I3(\slv_reg2_reg[15]_13 ),
        .O(L__972_carry_i_65_n_0));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry_i_66
       (.I0(L_carry__2_0[2]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(\ampl_sig_reg[7]_0 [2]),
        .I3(\slv_reg2_reg[15]_13 ),
        .I4(L__972_carry_i_60_n_5),
        .O(L__972_carry_i_66_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry_i_67
       (.I0(\ampl_sig_reg[7]_0 [1]),
        .I1(L_carry__2_0[1]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_13 ),
        .I4(L__972_carry_i_60_n_6),
        .O(L__972_carry_i_67_n_0));
  LUT5 #(
    .INIT(32'h99966696)) 
    L__972_carry_i_68
       (.I0(\slv_reg2_reg[15]_13 ),
        .I1(p_1_in_0),
        .I2(DOADO[5]),
        .I3(L__972_carry_i_17_n_0),
        .I4(L_carry[5]),
        .O(L__972_carry_i_68_n_0));
  LUT4 #(
    .INIT(16'h27D8)) 
    L__972_carry_i_69
       (.I0(\Data_Out_int_reg[30]_i_47_0 ),
        .I1(L_carry__2_0[0]),
        .I2(\ampl_sig_reg[7]_0 [0]),
        .I3(\slv_reg2_reg[15]_11 ),
        .O(L__972_carry_i_69_n_0));
  LUT5 #(
    .INIT(32'h99966696)) 
    L__972_carry_i_7
       (.I0(\slv_reg2_reg[15]_21 [0]),
        .I1(p_1_in_0),
        .I2(DOADO[0]),
        .I3(L__972_carry_i_17_n_0),
        .I4(L_carry[0]),
        .O(\ampl_sig_reg[3]_0 [0]));
  LUT5 #(
    .INIT(32'hB84747B8)) 
    L__972_carry_i_70
       (.I0(L_carry__2_0[2]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(\ampl_sig_reg[7]_0 [2]),
        .I3(\slv_reg2_reg[15]_11 ),
        .I4(\Data_Out_int_reg[22]_i_52_n_5 ),
        .O(L__972_carry_i_70_n_0));
  LUT5 #(
    .INIT(32'hCA3535CA)) 
    L__972_carry_i_71
       (.I0(\ampl_sig_reg[7]_0 [1]),
        .I1(L_carry__2_0[1]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .I3(\slv_reg2_reg[15]_11 ),
        .I4(\Data_Out_int_reg[22]_i_52_n_6 ),
        .O(L__972_carry_i_71_n_0));
  LUT5 #(
    .INIT(32'h99966696)) 
    L__972_carry_i_72
       (.I0(\slv_reg2_reg[15]_11 ),
        .I1(p_1_in_0),
        .I2(DOADO[6]),
        .I3(L__972_carry_i_17_n_0),
        .I4(L_carry[6]),
        .O(L__972_carry_i_72_n_0));
  CARRY4 L__972_carry_i_8
       (.CI(L__972_carry_i_9_n_0),
        .CO({NLW_L__972_carry_i_8_CO_UNCONNECTED[3:2],\slv_reg2_reg[15]_21 [1],L__972_carry_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\slv_reg2_reg[15]_19 ,L__972_carry_i_18_n_4}),
        .O({NLW_L__972_carry_i_8_O_UNCONNECTED[3:1],\slv_reg2_reg[15]_22 }),
        .S({1'b0,1'b0,L__972_carry_i_10,L__972_carry_i_20_n_0}));
  CARRY4 L__972_carry_i_9
       (.CI(L__972_carry__1_i_6_n_0),
        .CO({L__972_carry_i_9_n_0,L__972_carry_i_9_n_1,L__972_carry_i_9_n_2,L__972_carry_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({L__972_carry_i_18_n_5,L__972_carry_i_18_n_6,L__972_carry_i_18_n_7,L__972_carry_i_21_n_4}),
        .O({L__972_carry_i_9_n_4,L__972_carry_i_9_n_5,L__972_carry_i_9_n_6,L__972_carry_i_9_n_7}),
        .S({L__972_carry_i_22_n_0,L__972_carry_i_23_n_0,L__972_carry_i_24_n_0,L__972_carry_i_25_n_0}));
  LUT3 #(
    .INIT(8'h27)) 
    L_carry__0_i_1
       (.I0(\Data_Out_int_reg[26]_i_44_0 ),
        .I1(L_carry__2_0[7]),
        .I2(\ampl_sig_reg[7]_0 [7]),
        .O(\slv_reg0_reg[0]_rep [3]));
  LUT3 #(
    .INIT(8'h27)) 
    L_carry__0_i_2
       (.I0(\Data_Out_int_reg[26]_i_44_0 ),
        .I1(L_carry__2_0[6]),
        .I2(\ampl_sig_reg[7]_0 [6]),
        .O(\slv_reg0_reg[0]_rep [2]));
  LUT3 #(
    .INIT(8'h27)) 
    L_carry__0_i_3
       (.I0(\Data_Out_int_reg[26]_i_44_0 ),
        .I1(L_carry__2_0[5]),
        .I2(\ampl_sig_reg[7]_0 [5]),
        .O(\slv_reg0_reg[0]_rep [1]));
  LUT3 #(
    .INIT(8'h1D)) 
    L_carry__0_i_4
       (.I0(\ampl_sig_reg[7]_0 [4]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(L_carry__2_0[4]),
        .O(\slv_reg0_reg[0]_rep [0]));
  LUT3 #(
    .INIT(8'h27)) 
    L_carry__0_i_5
       (.I0(\Data_Out_int_reg[26]_i_44_0 ),
        .I1(L_carry__2_0[7]),
        .I2(\ampl_sig_reg[7]_0 [7]),
        .O(\slv_reg0_reg[0]_rep_1 [3]));
  LUT3 #(
    .INIT(8'h27)) 
    L_carry__0_i_6
       (.I0(\Data_Out_int_reg[26]_i_44_0 ),
        .I1(L_carry__2_0[6]),
        .I2(\ampl_sig_reg[7]_0 [6]),
        .O(\slv_reg0_reg[0]_rep_1 [2]));
  LUT3 #(
    .INIT(8'h27)) 
    L_carry__0_i_7
       (.I0(\Data_Out_int_reg[26]_i_44_0 ),
        .I1(L_carry__2_0[5]),
        .I2(\ampl_sig_reg[7]_0 [5]),
        .O(\slv_reg0_reg[0]_rep_1 [1]));
  LUT3 #(
    .INIT(8'h1D)) 
    L_carry__0_i_8
       (.I0(\ampl_sig_reg[7]_0 [4]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(L_carry__2_0[4]),
        .O(\slv_reg0_reg[0]_rep_1 [0]));
  LUT3 #(
    .INIT(8'h27)) 
    L_carry__1_i_1
       (.I0(\Data_Out_int_reg[26]_i_44_0 ),
        .I1(L_carry__2_0[11]),
        .I2(ampl_sig_reg[11]),
        .O(\slv_reg0_reg[0]_rep_0 [3]));
  LUT3 #(
    .INIT(8'h1D)) 
    L_carry__1_i_2
       (.I0(ampl_sig_reg[10]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(L_carry__2_0[10]),
        .O(\slv_reg0_reg[0]_rep_0 [2]));
  LUT3 #(
    .INIT(8'h27)) 
    L_carry__1_i_3
       (.I0(\Data_Out_int_reg[26]_i_44_0 ),
        .I1(L_carry__2_0[9]),
        .I2(ampl_sig_reg[9]),
        .O(\slv_reg0_reg[0]_rep_0 [1]));
  LUT3 #(
    .INIT(8'h1D)) 
    L_carry__1_i_4
       (.I0(ampl_sig_reg[8]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(L_carry__2_0[8]),
        .O(\slv_reg0_reg[0]_rep_0 [0]));
  LUT3 #(
    .INIT(8'h27)) 
    L_carry__1_i_5
       (.I0(\Data_Out_int_reg[26]_i_44_0 ),
        .I1(L_carry__2_0[11]),
        .I2(ampl_sig_reg[11]),
        .O(\slv_reg0_reg[0]_rep_2 [3]));
  LUT3 #(
    .INIT(8'h1D)) 
    L_carry__1_i_6
       (.I0(ampl_sig_reg[10]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(L_carry__2_0[10]),
        .O(\slv_reg0_reg[0]_rep_2 [2]));
  LUT3 #(
    .INIT(8'h27)) 
    L_carry__1_i_7
       (.I0(\Data_Out_int_reg[26]_i_44_0 ),
        .I1(L_carry__2_0[9]),
        .I2(ampl_sig_reg[9]),
        .O(\slv_reg0_reg[0]_rep_2 [1]));
  LUT3 #(
    .INIT(8'h1D)) 
    L_carry__1_i_8
       (.I0(ampl_sig_reg[8]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(L_carry__2_0[8]),
        .O(\slv_reg0_reg[0]_rep_2 [0]));
  LUT3 #(
    .INIT(8'h1D)) 
    L_carry__2_i_1
       (.I0(ampl_sig_reg[15]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(L_carry__2_0[15]),
        .O(\ampl_sig_reg[15]_1 [3]));
  LUT3 #(
    .INIT(8'h1D)) 
    L_carry__2_i_2
       (.I0(ampl_sig_reg[14]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(L_carry__2_0[14]),
        .O(\ampl_sig_reg[15]_1 [2]));
  LUT3 #(
    .INIT(8'h1D)) 
    L_carry__2_i_3
       (.I0(ampl_sig_reg[13]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(L_carry__2_0[13]),
        .O(\ampl_sig_reg[15]_1 [1]));
  LUT3 #(
    .INIT(8'h1D)) 
    L_carry__2_i_4
       (.I0(ampl_sig_reg[12]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(L_carry__2_0[12]),
        .O(\ampl_sig_reg[15]_1 [0]));
  LUT3 #(
    .INIT(8'h1D)) 
    L_carry__2_i_5
       (.I0(ampl_sig_reg[15]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(L_carry__2_0[15]),
        .O(\ampl_sig_reg[15]_2 [3]));
  LUT3 #(
    .INIT(8'h1D)) 
    L_carry__2_i_6
       (.I0(ampl_sig_reg[14]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(L_carry__2_0[14]),
        .O(\ampl_sig_reg[15]_2 [2]));
  LUT3 #(
    .INIT(8'h1D)) 
    L_carry__2_i_7
       (.I0(ampl_sig_reg[13]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(L_carry__2_0[13]),
        .O(\ampl_sig_reg[15]_2 [1]));
  LUT3 #(
    .INIT(8'h1D)) 
    L_carry__2_i_8
       (.I0(ampl_sig_reg[12]),
        .I1(\Data_Out_int_reg[26]_i_44_0 ),
        .I2(L_carry__2_0[12]),
        .O(\ampl_sig_reg[15]_2 [0]));
  LUT3 #(
    .INIT(8'h27)) 
    L_carry_i_1
       (.I0(\Data_Out_int_reg[30]_i_47_0 ),
        .I1(L_carry__2_0[3]),
        .I2(\ampl_sig_reg[7]_0 [3]),
        .O(DI[3]));
  LUT3 #(
    .INIT(8'h1D)) 
    L_carry_i_2
       (.I0(\ampl_sig_reg[7]_0 [2]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(L_carry__2_0[2]),
        .O(DI[2]));
  LUT3 #(
    .INIT(8'h27)) 
    L_carry_i_3
       (.I0(\Data_Out_int_reg[30]_i_47_0 ),
        .I1(L_carry__2_0[1]),
        .I2(\ampl_sig_reg[7]_0 [1]),
        .O(DI[1]));
  LUT3 #(
    .INIT(8'h27)) 
    L_carry_i_4
       (.I0(\Data_Out_int_reg[30]_i_47_0 ),
        .I1(L_carry__2_0[0]),
        .I2(\ampl_sig_reg[7]_0 [0]),
        .O(DI[0]));
  LUT3 #(
    .INIT(8'h27)) 
    L_carry_i_5
       (.I0(\Data_Out_int_reg[30]_i_47_0 ),
        .I1(L_carry__2_0[3]),
        .I2(\ampl_sig_reg[7]_0 [3]),
        .O(\slv_reg0_reg[0]_rep__1_0 [3]));
  LUT3 #(
    .INIT(8'h1D)) 
    L_carry_i_6
       (.I0(\ampl_sig_reg[7]_0 [2]),
        .I1(\Data_Out_int_reg[30]_i_47_0 ),
        .I2(L_carry__2_0[2]),
        .O(\slv_reg0_reg[0]_rep__1_0 [2]));
  LUT3 #(
    .INIT(8'h27)) 
    L_carry_i_7
       (.I0(\Data_Out_int_reg[30]_i_47_0 ),
        .I1(L_carry__2_0[1]),
        .I2(\ampl_sig_reg[7]_0 [1]),
        .O(\slv_reg0_reg[0]_rep__1_0 [1]));
  LUT6 #(
    .INIT(64'hAAA999A955599959)) 
    L_carry_i_8
       (.I0(p_1_in_0),
        .I1(DOADO[15]),
        .I2(waveSel),
        .I3(\Data_Out_int_reg[30]_i_47_0 ),
        .I4(\axi_rdata_reg[11]_0 [0]),
        .I5(L_carry[15]),
        .O(\slv_reg0_reg[0]_rep__1_0 [0]));
  LUT3 #(
    .INIT(8'hCA)) 
    L_carry_i_9
       (.I0(\ampl_sig_reg[7]_0 [0]),
        .I1(L_carry__2_0[0]),
        .I2(\Data_Out_int_reg[30]_i_47_0 ),
        .O(p_1_in_0));
  CARRY4 \ampl_sig1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\ampl_sig1_inferred__0/i__carry_n_0 ,\ampl_sig1_inferred__0/i__carry_n_1 ,\ampl_sig1_inferred__0/i__carry_n_2 ,\ampl_sig1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_ampl_sig1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  CARRY4 \ampl_sig1_inferred__0/i__carry__0 
       (.CI(\ampl_sig1_inferred__0/i__carry_n_0 ),
        .CO({CO,\ampl_sig1_inferred__0/i__carry__0_n_1 ,\ampl_sig1_inferred__0/i__carry__0_n_2 ,\ampl_sig1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}),
        .O(\NLW_ampl_sig1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'hA8)) 
    \ampl_sig[0]_i_12 
       (.I0(\ampl_sig_reg[11]_0 [2]),
        .I1(\ampl_sig_reg[11]_0 [0]),
        .I2(\ampl_sig_reg[11]_0 [1]),
        .O(\ampl_sig_reg[11]_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ampl_sig[0]_i_18 
       (.I0(\ampl_sig_reg[7]_0 [3]),
        .I1(switch[3]),
        .O(\ampl_sig[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ampl_sig[0]_i_19 
       (.I0(\ampl_sig_reg[7]_0 [2]),
        .I1(switch[2]),
        .O(\ampl_sig[0]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ampl_sig[0]_i_20 
       (.I0(\ampl_sig_reg[7]_0 [1]),
        .I1(switch[1]),
        .O(\ampl_sig[0]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ampl_sig[0]_i_21 
       (.I0(\ampl_sig_reg[7]_0 [0]),
        .I1(switch[0]),
        .O(\ampl_sig[0]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ampl_sig[0]_i_24 
       (.I0(switch[7]),
        .I1(\ampl_sig_reg[7]_0 [7]),
        .O(\ampl_sig[0]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ampl_sig[0]_i_25 
       (.I0(switch[6]),
        .I1(\ampl_sig_reg[7]_0 [6]),
        .O(\ampl_sig[0]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ampl_sig[0]_i_26 
       (.I0(switch[5]),
        .I1(\ampl_sig_reg[7]_0 [5]),
        .O(\ampl_sig[0]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ampl_sig[0]_i_27 
       (.I0(switch[4]),
        .I1(\ampl_sig_reg[7]_0 [4]),
        .O(\ampl_sig[0]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ampl_sig[0]_i_28 
       (.I0(switch[3]),
        .I1(\ampl_sig_reg[7]_0 [3]),
        .O(\ampl_sig[0]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ampl_sig[0]_i_29 
       (.I0(switch[2]),
        .I1(\ampl_sig_reg[7]_0 [2]),
        .O(\ampl_sig[0]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ampl_sig[0]_i_30 
       (.I0(switch[1]),
        .I1(\ampl_sig_reg[7]_0 [1]),
        .O(\ampl_sig[0]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ampl_sig[0]_i_31 
       (.I0(switch[0]),
        .I1(\ampl_sig_reg[7]_0 [0]),
        .O(\ampl_sig[0]_i_31_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ampl_sig[12]_i_10 
       (.I0(ampl_sig_reg[12]),
        .O(\ampl_sig[12]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ampl_sig[12]_i_2 
       (.I0(ampl_sig_reg[15]),
        .I1(\ampl_sig_reg[15]_3 ),
        .I2(C[15]),
        .O(\ampl_sig[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ampl_sig[12]_i_3 
       (.I0(ampl_sig_reg[14]),
        .I1(\ampl_sig_reg[15]_3 ),
        .I2(C[14]),
        .O(\ampl_sig[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ampl_sig[12]_i_4 
       (.I0(ampl_sig_reg[13]),
        .I1(\ampl_sig_reg[15]_3 ),
        .I2(C[13]),
        .O(\ampl_sig[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ampl_sig[12]_i_5 
       (.I0(ampl_sig_reg[12]),
        .I1(\ampl_sig_reg[15]_3 ),
        .I2(C[12]),
        .O(\ampl_sig[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ampl_sig[12]_i_7 
       (.I0(ampl_sig_reg[15]),
        .O(\ampl_sig[12]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ampl_sig[12]_i_8 
       (.I0(ampl_sig_reg[14]),
        .O(\ampl_sig[12]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ampl_sig[12]_i_9 
       (.I0(ampl_sig_reg[13]),
        .O(\ampl_sig[12]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ampl_sig[4]_i_11 
       (.I0(\ampl_sig_reg[7]_0 [7]),
        .I1(switch[7]),
        .O(\ampl_sig[4]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ampl_sig[4]_i_12 
       (.I0(\ampl_sig_reg[7]_0 [6]),
        .I1(switch[6]),
        .O(\ampl_sig[4]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ampl_sig[4]_i_13 
       (.I0(\ampl_sig_reg[7]_0 [5]),
        .I1(switch[5]),
        .O(\ampl_sig[4]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ampl_sig[4]_i_14 
       (.I0(\ampl_sig_reg[7]_0 [4]),
        .I1(switch[4]),
        .O(\ampl_sig[4]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ampl_sig[8]_i_10 
       (.I0(ampl_sig_reg[8]),
        .O(\ampl_sig[8]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ampl_sig[8]_i_2 
       (.I0(ampl_sig_reg[11]),
        .I1(\ampl_sig_reg[15]_3 ),
        .I2(C[11]),
        .O(\ampl_sig[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ampl_sig[8]_i_3 
       (.I0(ampl_sig_reg[10]),
        .I1(\ampl_sig_reg[15]_3 ),
        .I2(C[10]),
        .O(\ampl_sig[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ampl_sig[8]_i_4 
       (.I0(ampl_sig_reg[9]),
        .I1(\ampl_sig_reg[15]_3 ),
        .I2(C[9]),
        .O(\ampl_sig[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ampl_sig[8]_i_5 
       (.I0(ampl_sig_reg[8]),
        .I1(\ampl_sig_reg[15]_3 ),
        .I2(C[8]),
        .O(\ampl_sig[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ampl_sig[8]_i_7 
       (.I0(ampl_sig_reg[11]),
        .O(\ampl_sig[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ampl_sig[8]_i_8 
       (.I0(ampl_sig_reg[10]),
        .O(\ampl_sig[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ampl_sig[8]_i_9 
       (.I0(ampl_sig_reg[9]),
        .O(\ampl_sig[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_sig_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ampl_sig),
        .D(O[0]),
        .Q(\ampl_sig_reg[7]_0 [0]),
        .R(rst));
  CARRY4 \ampl_sig_reg[0]_i_15 
       (.CI(1'b0),
        .CO({\ampl_sig_reg[0]_i_15_n_0 ,\ampl_sig_reg[0]_i_15_n_1 ,\ampl_sig_reg[0]_i_15_n_2 ,\ampl_sig_reg[0]_i_15_n_3 }),
        .CYINIT(1'b1),
        .DI(\ampl_sig_reg[7]_0 [3:0]),
        .O(\ampl_sig_reg[7]_1 [3:0]),
        .S({\ampl_sig[0]_i_18_n_0 ,\ampl_sig[0]_i_19_n_0 ,\ampl_sig[0]_i_20_n_0 ,\ampl_sig[0]_i_21_n_0 }));
  CARRY4 \ampl_sig_reg[0]_i_16 
       (.CI(\ampl_sig_reg[0]_i_22_n_0 ),
        .CO({\ampl_sig_reg[0]_i_16_n_0 ,\ampl_sig_reg[0]_i_16_n_1 ,\ampl_sig_reg[0]_i_16_n_2 ,\ampl_sig_reg[0]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ampl_sig_reg[11]_0 ),
        .S(ampl_sig_reg[11:8]));
  CARRY4 \ampl_sig_reg[0]_i_17 
       (.CI(\ampl_sig_reg[0]_i_16_n_0 ),
        .CO({\NLW_ampl_sig_reg[0]_i_17_CO_UNCONNECTED [3],\ampl_sig_reg[0]_i_17_n_1 ,\ampl_sig_reg[0]_i_17_n_2 ,\ampl_sig_reg[0]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\ampl_sig_reg[15]_0 ),
        .S(ampl_sig_reg[15:12]));
  CARRY4 \ampl_sig_reg[0]_i_22 
       (.CI(\ampl_sig_reg[0]_i_23_n_0 ),
        .CO({\ampl_sig_reg[0]_i_22_n_0 ,\ampl_sig_reg[0]_i_22_n_1 ,\ampl_sig_reg[0]_i_22_n_2 ,\ampl_sig_reg[0]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI(\ampl_sig_reg[7]_0 [7:4]),
        .O(\NLW_ampl_sig_reg[0]_i_22_O_UNCONNECTED [3:0]),
        .S({\ampl_sig[0]_i_24_n_0 ,\ampl_sig[0]_i_25_n_0 ,\ampl_sig[0]_i_26_n_0 ,\ampl_sig[0]_i_27_n_0 }));
  CARRY4 \ampl_sig_reg[0]_i_23 
       (.CI(1'b0),
        .CO({\ampl_sig_reg[0]_i_23_n_0 ,\ampl_sig_reg[0]_i_23_n_1 ,\ampl_sig_reg[0]_i_23_n_2 ,\ampl_sig_reg[0]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI(\ampl_sig_reg[7]_0 [3:0]),
        .O(\NLW_ampl_sig_reg[0]_i_23_O_UNCONNECTED [3:0]),
        .S({\ampl_sig[0]_i_28_n_0 ,\ampl_sig[0]_i_29_n_0 ,\ampl_sig[0]_i_30_n_0 ,\ampl_sig[0]_i_31_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_sig_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ampl_sig),
        .D(\ampl_sig_reg[8]_i_1_n_5 ),
        .Q(ampl_sig_reg[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_sig_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ampl_sig),
        .D(\ampl_sig_reg[8]_i_1_n_4 ),
        .Q(ampl_sig_reg[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_sig_reg[12] 
       (.C(s00_axi_aclk),
        .CE(ampl_sig),
        .D(\ampl_sig_reg[12]_i_1_n_7 ),
        .Q(ampl_sig_reg[12]),
        .R(rst));
  CARRY4 \ampl_sig_reg[12]_i_1 
       (.CI(\ampl_sig_reg[8]_i_1_n_0 ),
        .CO({\NLW_ampl_sig_reg[12]_i_1_CO_UNCONNECTED [3],\ampl_sig_reg[12]_i_1_n_1 ,\ampl_sig_reg[12]_i_1_n_2 ,\ampl_sig_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ampl_sig_reg[12]_i_1_n_4 ,\ampl_sig_reg[12]_i_1_n_5 ,\ampl_sig_reg[12]_i_1_n_6 ,\ampl_sig_reg[12]_i_1_n_7 }),
        .S({\ampl_sig[12]_i_2_n_0 ,\ampl_sig[12]_i_3_n_0 ,\ampl_sig[12]_i_4_n_0 ,\ampl_sig[12]_i_5_n_0 }));
  CARRY4 \ampl_sig_reg[12]_i_6 
       (.CI(\ampl_sig_reg[8]_i_6_n_0 ),
        .CO({\NLW_ampl_sig_reg[12]_i_6_CO_UNCONNECTED [3],\ampl_sig_reg[12]_i_6_n_1 ,\ampl_sig_reg[12]_i_6_n_2 ,\ampl_sig_reg[12]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,ampl_sig_reg[14:12]}),
        .O(C[15:12]),
        .S({\ampl_sig[12]_i_7_n_0 ,\ampl_sig[12]_i_8_n_0 ,\ampl_sig[12]_i_9_n_0 ,\ampl_sig[12]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_sig_reg[13] 
       (.C(s00_axi_aclk),
        .CE(ampl_sig),
        .D(\ampl_sig_reg[12]_i_1_n_6 ),
        .Q(ampl_sig_reg[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_sig_reg[14] 
       (.C(s00_axi_aclk),
        .CE(ampl_sig),
        .D(\ampl_sig_reg[12]_i_1_n_5 ),
        .Q(ampl_sig_reg[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_sig_reg[15] 
       (.C(s00_axi_aclk),
        .CE(ampl_sig),
        .D(\ampl_sig_reg[12]_i_1_n_4 ),
        .Q(ampl_sig_reg[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_sig_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ampl_sig),
        .D(O[1]),
        .Q(\ampl_sig_reg[7]_0 [1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_sig_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ampl_sig),
        .D(O[2]),
        .Q(\ampl_sig_reg[7]_0 [2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_sig_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ampl_sig),
        .D(O[3]),
        .Q(\ampl_sig_reg[7]_0 [3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_sig_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ampl_sig),
        .D(\ampl_sig_reg[7]_3 [0]),
        .Q(\ampl_sig_reg[7]_0 [4]),
        .R(rst));
  CARRY4 \ampl_sig_reg[4]_i_10 
       (.CI(\ampl_sig_reg[0]_i_15_n_0 ),
        .CO({\ampl_sig_reg[4]_i_10_n_0 ,\ampl_sig_reg[4]_i_10_n_1 ,\ampl_sig_reg[4]_i_10_n_2 ,\ampl_sig_reg[4]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI(\ampl_sig_reg[7]_0 [7:4]),
        .O(\ampl_sig_reg[7]_1 [7:4]),
        .S({\ampl_sig[4]_i_11_n_0 ,\ampl_sig[4]_i_12_n_0 ,\ampl_sig[4]_i_13_n_0 ,\ampl_sig[4]_i_14_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_sig_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ampl_sig),
        .D(\ampl_sig_reg[7]_3 [1]),
        .Q(\ampl_sig_reg[7]_0 [5]),
        .R(rst));
  FDSE #(
    .INIT(1'b1)) 
    \ampl_sig_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ampl_sig),
        .D(\ampl_sig_reg[7]_3 [2]),
        .Q(\ampl_sig_reg[7]_0 [6]),
        .S(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_sig_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ampl_sig),
        .D(\ampl_sig_reg[7]_3 [3]),
        .Q(\ampl_sig_reg[7]_0 [7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_sig_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ampl_sig),
        .D(\ampl_sig_reg[8]_i_1_n_7 ),
        .Q(ampl_sig_reg[8]),
        .R(rst));
  CARRY4 \ampl_sig_reg[8]_i_1 
       (.CI(\ampl_sig_reg[11]_3 ),
        .CO({\ampl_sig_reg[8]_i_1_n_0 ,\ampl_sig_reg[8]_i_1_n_1 ,\ampl_sig_reg[8]_i_1_n_2 ,\ampl_sig_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ampl_sig_reg[8]_i_1_n_4 ,\ampl_sig_reg[8]_i_1_n_5 ,\ampl_sig_reg[8]_i_1_n_6 ,\ampl_sig_reg[8]_i_1_n_7 }),
        .S({\ampl_sig[8]_i_2_n_0 ,\ampl_sig[8]_i_3_n_0 ,\ampl_sig[8]_i_4_n_0 ,\ampl_sig[8]_i_5_n_0 }));
  CARRY4 \ampl_sig_reg[8]_i_6 
       (.CI(\ampl_sig_reg[4]_i_10_n_0 ),
        .CO({\ampl_sig_reg[8]_i_6_n_0 ,\ampl_sig_reg[8]_i_6_n_1 ,\ampl_sig_reg[8]_i_6_n_2 ,\ampl_sig_reg[8]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(ampl_sig_reg[11:8]),
        .O(C[11:8]),
        .S({\ampl_sig[8]_i_7_n_0 ,\ampl_sig[8]_i_8_n_0 ,\ampl_sig[8]_i_9_n_0 ,\ampl_sig[8]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ampl_sig_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ampl_sig),
        .D(\ampl_sig_reg[8]_i_1_n_6 ),
        .Q(ampl_sig_reg[9]),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFF30B000B0)) 
    \axi_rdata[0]_i_1 
       (.I0(L_carry__2_0[0]),
        .I1(axi_araddr[1]),
        .I2(\axi_rdata_reg[11] [0]),
        .I3(axi_araddr[0]),
        .I4(\axi_rdata_reg[15]_0 [0]),
        .I5(\axi_rdata[0]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hC000CAF0C000CA00)) 
    \axi_rdata[0]_i_2 
       (.I0(\ampl_sig_reg[7]_0 [0]),
        .I1(\axi_rdata_reg[11]_0 [0]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .I4(\axi_rdata_reg[11] [0]),
        .I5(Q[0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAEAAFEAAAEA)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata_reg[10] ),
        .I1(p_2_in[10]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .I4(ampl_sig_reg[10]),
        .I5(\axi_rdata_reg[11] [0]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[10]_i_3 
       (.I0(\axi_rdata_reg[15]_0 [10]),
        .I1(\axi_rdata_reg[11] [0]),
        .I2(Q[10]),
        .O(p_2_in[10]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    \axi_rdata[11]_i_1 
       (.I0(p_2_in[11]),
        .I1(\axi_rdata_reg[11] [7]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(\axi_rdata_reg[11]_0 [7]),
        .I5(\axi_rdata[11]_i_3_n_0 ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[11]_i_2 
       (.I0(\axi_rdata_reg[15]_0 [11]),
        .I1(\axi_rdata_reg[11] [0]),
        .I2(Q[11]),
        .O(p_2_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \axi_rdata[11]_i_3 
       (.I0(ampl_sig_reg[11]),
        .I1(L_carry__2_0[11]),
        .I2(\axi_rdata_reg[11] [0]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAEAAFEAAAEA)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata_reg[12] ),
        .I1(p_2_in[12]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .I4(ampl_sig_reg[12]),
        .I5(\axi_rdata_reg[11] [0]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[12]_i_3 
       (.I0(\axi_rdata_reg[15]_0 [12]),
        .I1(\axi_rdata_reg[11] [0]),
        .I2(Q[12]),
        .O(p_2_in[12]));
  LUT6 #(
    .INIT(64'hAAEAAAEAAFEAAAEA)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata_reg[13] ),
        .I1(p_2_in[13]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .I4(ampl_sig_reg[13]),
        .I5(\axi_rdata_reg[11] [0]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[13]_i_3 
       (.I0(\axi_rdata_reg[15]_0 [13]),
        .I1(\axi_rdata_reg[11] [0]),
        .I2(Q[13]),
        .O(p_2_in[13]));
  LUT6 #(
    .INIT(64'hAAEAAAEAAFEAAAEA)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata_reg[14] ),
        .I1(p_2_in[14]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .I4(ampl_sig_reg[14]),
        .I5(\axi_rdata_reg[11] [0]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[14]_i_3 
       (.I0(\axi_rdata_reg[15]_0 [14]),
        .I1(\axi_rdata_reg[11] [0]),
        .I2(Q[14]),
        .O(p_2_in[14]));
  LUT6 #(
    .INIT(64'hAAEAAAEAAFEAAAEA)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata_reg[15] ),
        .I1(\axi_rdata[15]_i_3_n_0 ),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .I4(ampl_sig_reg[15]),
        .I5(\axi_rdata_reg[11] [0]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[15]_i_3 
       (.I0(\axi_rdata_reg[15]_0 [15]),
        .I1(\axi_rdata_reg[11] [0]),
        .I2(Q[15]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata_reg[11] [1]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(\axi_rdata_reg[11]_0 [1]),
        .I5(p_2_in[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \axi_rdata[1]_i_2 
       (.I0(\ampl_sig_reg[7]_0 [1]),
        .I1(L_carry__2_0[1]),
        .I2(\axi_rdata_reg[11] [0]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[1]_i_3 
       (.I0(\axi_rdata_reg[15]_0 [1]),
        .I1(\axi_rdata_reg[11] [0]),
        .I2(Q[1]),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'hAAEAAAEAAFEAAAEA)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata_reg[2] ),
        .I1(p_2_in[2]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .I4(\ampl_sig_reg[7]_0 [2]),
        .I5(\axi_rdata_reg[11] [0]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[2]_i_3 
       (.I0(\axi_rdata_reg[15]_0 [2]),
        .I1(\axi_rdata_reg[11] [0]),
        .I2(Q[2]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(\axi_rdata_reg[11] [2]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(\axi_rdata_reg[11]_0 [2]),
        .I5(p_2_in[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \axi_rdata[3]_i_2 
       (.I0(\ampl_sig_reg[7]_0 [3]),
        .I1(L_carry__2_0[3]),
        .I2(\axi_rdata_reg[11] [0]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[3]_i_3 
       (.I0(\axi_rdata_reg[15]_0 [3]),
        .I1(\axi_rdata_reg[11] [0]),
        .I2(Q[3]),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'hAAEAAAEAAFEAAAEA)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata_reg[4] ),
        .I1(p_2_in[4]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .I4(\ampl_sig_reg[7]_0 [4]),
        .I5(\axi_rdata_reg[11] [0]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[4]_i_3 
       (.I0(\axi_rdata_reg[15]_0 [4]),
        .I1(\axi_rdata_reg[11] [0]),
        .I2(Q[4]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(\axi_rdata_reg[11] [3]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(\axi_rdata_reg[11]_0 [3]),
        .I5(p_2_in[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \axi_rdata[5]_i_2 
       (.I0(\ampl_sig_reg[7]_0 [5]),
        .I1(L_carry__2_0[5]),
        .I2(\axi_rdata_reg[11] [0]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[5]_i_3 
       (.I0(\axi_rdata_reg[15]_0 [5]),
        .I1(\axi_rdata_reg[11] [0]),
        .I2(Q[5]),
        .O(p_2_in[5]));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(\axi_rdata_reg[11] [4]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(\axi_rdata_reg[11]_0 [4]),
        .I5(p_2_in[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \axi_rdata[6]_i_2 
       (.I0(\ampl_sig_reg[7]_0 [6]),
        .I1(L_carry__2_0[6]),
        .I2(\axi_rdata_reg[11] [0]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[6]_i_3 
       (.I0(\axi_rdata_reg[15]_0 [6]),
        .I1(\axi_rdata_reg[11] [0]),
        .I2(Q[6]),
        .O(p_2_in[6]));
  LUT6 #(
    .INIT(64'hFAFC0AFCFA0C0A0C)) 
    \axi_rdata[7]_i_1 
       (.I0(p_2_in[7]),
        .I1(\axi_rdata_reg[11] [5]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(\axi_rdata_reg[11]_0 [5]),
        .I5(\axi_rdata[7]_i_3_n_0 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[7]_i_2 
       (.I0(\axi_rdata_reg[15]_0 [7]),
        .I1(\axi_rdata_reg[11] [0]),
        .I2(Q[7]),
        .O(p_2_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \axi_rdata[7]_i_3 
       (.I0(\ampl_sig_reg[7]_0 [7]),
        .I1(L_carry__2_0[7]),
        .I2(\axi_rdata_reg[11] [0]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAEAAFEAAAEA)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata_reg[8] ),
        .I1(p_2_in[8]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .I4(ampl_sig_reg[8]),
        .I5(\axi_rdata_reg[11] [0]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[8]_i_3 
       (.I0(\axi_rdata_reg[15]_0 [8]),
        .I1(\axi_rdata_reg[11] [0]),
        .I2(Q[8]),
        .O(p_2_in[8]));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(\axi_rdata_reg[11] [6]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(\axi_rdata_reg[11]_0 [6]),
        .I5(p_2_in[9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \axi_rdata[9]_i_2 
       (.I0(ampl_sig_reg[9]),
        .I1(L_carry__2_0[9]),
        .I2(\axi_rdata_reg[11] [0]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[9]_i_3 
       (.I0(\axi_rdata_reg[15]_0 [9]),
        .I1(\axi_rdata_reg[11] [0]),
        .I2(Q[9]),
        .O(p_2_in[9]));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1__0
       (.I0(ampl_sig_reg[15]),
        .I1(ampl_sig_reg[14]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2__0
       (.I0(ampl_sig_reg[13]),
        .I1(ampl_sig_reg[12]),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_3__0
       (.I0(ampl_sig_reg[11]),
        .I1(ampl_sig_reg[10]),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_4__0
       (.I0(ampl_sig_reg[9]),
        .I1(ampl_sig_reg[8]),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5
       (.I0(ampl_sig_reg[14]),
        .I1(ampl_sig_reg[15]),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_6
       (.I0(ampl_sig_reg[12]),
        .I1(ampl_sig_reg[13]),
        .O(i__carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_7
       (.I0(ampl_sig_reg[10]),
        .I1(ampl_sig_reg[11]),
        .O(i__carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_8
       (.I0(ampl_sig_reg[8]),
        .I1(ampl_sig_reg[9]),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry_i_1__1
       (.I0(switch[6]),
        .I1(\ampl_sig_reg[7]_0 [6]),
        .I2(\ampl_sig_reg[7]_0 [7]),
        .I3(switch[7]),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry_i_2__0
       (.I0(switch[4]),
        .I1(\ampl_sig_reg[7]_0 [4]),
        .I2(\ampl_sig_reg[7]_0 [5]),
        .I3(switch[5]),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry_i_3__0
       (.I0(switch[2]),
        .I1(\ampl_sig_reg[7]_0 [2]),
        .I2(\ampl_sig_reg[7]_0 [3]),
        .I3(switch[3]),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry_i_4__0
       (.I0(switch[0]),
        .I1(\ampl_sig_reg[7]_0 [0]),
        .I2(\ampl_sig_reg[7]_0 [1]),
        .I3(switch[1]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(\ampl_sig_reg[7]_0 [7]),
        .I1(switch[7]),
        .I2(\ampl_sig_reg[7]_0 [6]),
        .I3(switch[6]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(\ampl_sig_reg[7]_0 [5]),
        .I1(switch[5]),
        .I2(\ampl_sig_reg[7]_0 [4]),
        .I3(switch[4]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(\ampl_sig_reg[7]_0 [3]),
        .I1(switch[3]),
        .I2(\ampl_sig_reg[7]_0 [2]),
        .I3(switch[2]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(\ampl_sig_reg[7]_0 [1]),
        .I1(switch[1]),
        .I2(\ampl_sig_reg[7]_0 [0]),
        .I3(switch[0]),
        .O(i__carry_i_8_n_0));
  CARRY4 phase_sig2_carry
       (.CI(1'b0),
        .CO({phase_sig2_carry_n_0,phase_sig2_carry_n_1,phase_sig2_carry_n_2,phase_sig2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({phase_sig2_carry_i_1_n_0,phase_sig2_carry_i_2_n_0,phase_sig2_carry_i_3_n_0,phase_sig2_carry_i_4_n_0}),
        .O(NLW_phase_sig2_carry_O_UNCONNECTED[3:0]),
        .S({phase_sig2_carry_i_5_n_0,phase_sig2_carry_i_6_n_0,phase_sig2_carry_i_7_n_0,phase_sig2_carry_i_8_n_0}));
  CARRY4 phase_sig2_carry__0
       (.CI(phase_sig2_carry_n_0),
        .CO({\phase_sig_reg[14]_0 ,phase_sig2_carry__0_n_1,phase_sig2_carry__0_n_2,phase_sig2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({phase_sig2_carry__0_i_1_n_0,phase_sig2_carry__0_i_2_n_0,phase_sig2_carry__0_i_3_n_0,phase_sig2_carry__0_i_4_n_0}),
        .O(NLW_phase_sig2_carry__0_O_UNCONNECTED[3:0]),
        .S({phase_sig2_carry__0_i_5_n_0,phase_sig2_carry__0_i_6_n_0,phase_sig2_carry__0_i_7_n_0,phase_sig2_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    phase_sig2_carry__0_i_1
       (.I0(Q[14]),
        .I1(Q[15]),
        .O(phase_sig2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phase_sig2_carry__0_i_2
       (.I0(Q[12]),
        .I1(Q[13]),
        .O(phase_sig2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phase_sig2_carry__0_i_3
       (.I0(Q[10]),
        .I1(Q[11]),
        .O(phase_sig2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    phase_sig2_carry__0_i_4
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(phase_sig2_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phase_sig2_carry__0_i_5
       (.I0(Q[15]),
        .I1(Q[14]),
        .O(phase_sig2_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phase_sig2_carry__0_i_6
       (.I0(Q[13]),
        .I1(Q[12]),
        .O(phase_sig2_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phase_sig2_carry__0_i_7
       (.I0(Q[11]),
        .I1(Q[10]),
        .O(phase_sig2_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phase_sig2_carry__0_i_8
       (.I0(Q[9]),
        .I1(Q[8]),
        .O(phase_sig2_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    phase_sig2_carry_i_1
       (.I0(Q[7]),
        .I1(switch[7]),
        .I2(Q[6]),
        .I3(switch[6]),
        .O(phase_sig2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    phase_sig2_carry_i_2
       (.I0(Q[5]),
        .I1(switch[5]),
        .I2(Q[4]),
        .I3(switch[4]),
        .O(phase_sig2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    phase_sig2_carry_i_3
       (.I0(Q[3]),
        .I1(switch[3]),
        .I2(Q[2]),
        .I3(switch[2]),
        .O(phase_sig2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    phase_sig2_carry_i_4
       (.I0(Q[1]),
        .I1(switch[1]),
        .I2(Q[0]),
        .I3(switch[0]),
        .O(phase_sig2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    phase_sig2_carry_i_5
       (.I0(switch[7]),
        .I1(Q[7]),
        .I2(switch[6]),
        .I3(Q[6]),
        .O(phase_sig2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    phase_sig2_carry_i_6
       (.I0(switch[5]),
        .I1(Q[5]),
        .I2(switch[4]),
        .I3(Q[4]),
        .O(phase_sig2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    phase_sig2_carry_i_7
       (.I0(switch[3]),
        .I1(Q[3]),
        .I2(switch[2]),
        .I3(Q[2]),
        .O(phase_sig2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    phase_sig2_carry_i_8
       (.I0(switch[1]),
        .I1(Q[1]),
        .I2(switch[0]),
        .I3(Q[0]),
        .O(phase_sig2_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFACCC0000ACCC)) 
    \phase_sig[0]_i_1 
       (.I0(\phase_sig_reg[3]_i_3_n_7 ),
        .I1(\phase_sig_reg[3]_i_2_n_7 ),
        .I2(\phase_sig_reg[14]_0 ),
        .I3(left_btn),
        .I4(cntr_btn),
        .I5(waveSel),
        .O(\phase_sig[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_sig[11]_i_4 
       (.I0(Q[11]),
        .O(\phase_sig[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_sig[11]_i_5 
       (.I0(Q[10]),
        .O(\phase_sig[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_sig[11]_i_6 
       (.I0(Q[9]),
        .O(\phase_sig[11]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_sig[11]_i_7 
       (.I0(Q[8]),
        .O(\phase_sig[11]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_sig[15]_i_10 
       (.I0(Q[15]),
        .O(\phase_sig[15]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_sig[15]_i_11 
       (.I0(Q[14]),
        .O(\phase_sig[15]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_sig[15]_i_12 
       (.I0(Q[13]),
        .O(\phase_sig[15]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_sig[15]_i_13 
       (.I0(Q[12]),
        .O(\phase_sig[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAA8A888888888)) 
    \phase_sig[15]_i_5 
       (.I0(\phase_sig_reg[11]_0 [2]),
        .I1(\phase_sig_reg[11]_0 [1]),
        .I2(\phase_sig_reg[11]_0 [0]),
        .I3(\phase_sig[15]_i_9_n_0 ),
        .I4(\phase_sig_reg[7]_0 ),
        .I5(\phase_sig_reg[11]_i_2_n_6 ),
        .O(\phase_sig_reg[11]_2 ));
  LUT2 #(
    .INIT(4'h7)) 
    \phase_sig[15]_i_7 
       (.I0(\phase_sig_reg[15]_0 [1]),
        .I1(\phase_sig_reg[15]_0 [2]),
        .O(\phase_sig_reg[15]_1 ));
  LUT6 #(
    .INIT(64'h000000005555777F)) 
    \phase_sig[15]_i_9 
       (.I0(\phase_sig_reg[7]_i_2_n_6 ),
        .I1(\phase_sig_reg[3]_0 [1]),
        .I2(\phase_sig_reg[3]_i_2_n_5 ),
        .I3(\phase_sig_reg[3]_0 [0]),
        .I4(\phase_sig_reg[7]_i_2_n_7 ),
        .I5(\phase_sig_reg[7]_i_2_n_5 ),
        .O(\phase_sig[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFACCC0000ACCC)) 
    \phase_sig[2]_i_1 
       (.I0(\phase_sig_reg[3]_i_3_n_5 ),
        .I1(\phase_sig_reg[3]_i_2_n_5 ),
        .I2(\phase_sig_reg[14]_0 ),
        .I3(left_btn),
        .I4(cntr_btn),
        .I5(waveSel),
        .O(\phase_sig[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase_sig[3]_i_10 
       (.I0(switch[1]),
        .I1(Q[1]),
        .O(\phase_sig[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase_sig[3]_i_11 
       (.I0(switch[0]),
        .I1(Q[0]),
        .O(\phase_sig[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_sig[3]_i_4 
       (.I0(Q[3]),
        .I1(switch[3]),
        .O(\phase_sig[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_sig[3]_i_5 
       (.I0(Q[2]),
        .I1(switch[2]),
        .O(\phase_sig[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_sig[3]_i_6 
       (.I0(Q[1]),
        .I1(switch[1]),
        .O(\phase_sig[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_sig[3]_i_7 
       (.I0(Q[0]),
        .I1(switch[0]),
        .O(\phase_sig[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase_sig[3]_i_8 
       (.I0(switch[3]),
        .I1(Q[3]),
        .O(\phase_sig[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase_sig[3]_i_9 
       (.I0(switch[2]),
        .I1(Q[2]),
        .O(\phase_sig[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000CAAAFFFFCAAA)) 
    \phase_sig[4]_i_1 
       (.I0(\phase_sig_reg[7]_i_2_n_7 ),
        .I1(\phase_sig_reg[7]_i_3_n_7 ),
        .I2(\phase_sig_reg[14]_0 ),
        .I3(left_btn),
        .I4(cntr_btn),
        .I5(waveSel),
        .O(\phase_sig[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F0C2E2E2E2E2E2E)) 
    \phase_sig[5]_i_1 
       (.I0(\phase_sig_reg[7]_i_2_n_6 ),
        .I1(cntr_btn),
        .I2(waveSel),
        .I3(\phase_sig_reg[7]_i_3_n_6 ),
        .I4(\phase_sig_reg[14]_0 ),
        .I5(left_btn),
        .O(\phase_sig[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFACCC0000ACCC)) 
    \phase_sig[6]_i_1 
       (.I0(\phase_sig_reg[7]_i_3_n_5 ),
        .I1(\phase_sig_reg[7]_i_2_n_5 ),
        .I2(\phase_sig_reg[14]_0 ),
        .I3(left_btn),
        .I4(cntr_btn),
        .I5(waveSel),
        .O(\phase_sig[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase_sig[7]_i_10 
       (.I0(switch[5]),
        .I1(Q[5]),
        .O(\phase_sig[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase_sig[7]_i_11 
       (.I0(switch[4]),
        .I1(Q[4]),
        .O(\phase_sig[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_sig[7]_i_4 
       (.I0(Q[7]),
        .I1(switch[7]),
        .O(\phase_sig[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_sig[7]_i_5 
       (.I0(Q[6]),
        .I1(switch[6]),
        .O(\phase_sig[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_sig[7]_i_6 
       (.I0(Q[5]),
        .I1(switch[5]),
        .O(\phase_sig[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase_sig[7]_i_7 
       (.I0(Q[4]),
        .I1(switch[4]),
        .O(\phase_sig[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase_sig[7]_i_8 
       (.I0(switch[7]),
        .I1(Q[7]),
        .O(\phase_sig[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase_sig[7]_i_9 
       (.I0(switch[6]),
        .I1(Q[6]),
        .O(\phase_sig[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF3C0E2E2E2E2E2E2)) 
    \phase_sig[9]_i_1 
       (.I0(\phase_sig_reg[11]_i_2_n_6 ),
        .I1(cntr_btn),
        .I2(waveSel),
        .I3(\phase_sig_reg[11]_i_3_n_6 ),
        .I4(\phase_sig_reg[14]_0 ),
        .I5(left_btn),
        .O(\phase_sig[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \phase_sig_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\phase_sig[0]_i_1_n_0 ),
        .Q(Q[0]),
        .S(rst));
  FDRE #(
    .INIT(1'b0)) 
    \phase_sig_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\phase_sig_reg[15]_2 [4]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \phase_sig_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\phase_sig_reg[15]_2 [5]),
        .Q(Q[11]),
        .R(SR));
  CARRY4 \phase_sig_reg[11]_i_2 
       (.CI(\phase_sig_reg[7]_i_2_n_0 ),
        .CO({\phase_sig_reg[11]_i_2_n_0 ,\phase_sig_reg[11]_i_2_n_1 ,\phase_sig_reg[11]_i_2_n_2 ,\phase_sig_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phase_sig_reg[11]_0 [2:1],\phase_sig_reg[11]_i_2_n_6 ,\phase_sig_reg[11]_0 [0]}),
        .S(Q[11:8]));
  CARRY4 \phase_sig_reg[11]_i_3 
       (.CI(\phase_sig_reg[7]_i_3_n_0 ),
        .CO({\phase_sig_reg[11]_i_3_n_0 ,\phase_sig_reg[11]_i_3_n_1 ,\phase_sig_reg[11]_i_3_n_2 ,\phase_sig_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O({\phase_sig_reg[11]_1 [2:1],\phase_sig_reg[11]_i_3_n_6 ,\phase_sig_reg[11]_1 [0]}),
        .S({\phase_sig[11]_i_4_n_0 ,\phase_sig[11]_i_5_n_0 ,\phase_sig[11]_i_6_n_0 ,\phase_sig[11]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \phase_sig_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\phase_sig_reg[15]_2 [6]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \phase_sig_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\phase_sig_reg[15]_2 [7]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \phase_sig_reg[14] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\phase_sig_reg[15]_2 [8]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \phase_sig_reg[15] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\phase_sig_reg[15]_2 [9]),
        .Q(Q[15]),
        .R(SR));
  CARRY4 \phase_sig_reg[15]_i_6 
       (.CI(\phase_sig_reg[11]_i_2_n_0 ),
        .CO({\NLW_phase_sig_reg[15]_i_6_CO_UNCONNECTED [3],\phase_sig_reg[15]_i_6_n_1 ,\phase_sig_reg[15]_i_6_n_2 ,\phase_sig_reg[15]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\phase_sig_reg[15]_0 ),
        .S(Q[15:12]));
  CARRY4 \phase_sig_reg[15]_i_8 
       (.CI(\phase_sig_reg[11]_i_3_n_0 ),
        .CO({\NLW_phase_sig_reg[15]_i_8_CO_UNCONNECTED [3],\phase_sig_reg[15]_i_8_n_1 ,\phase_sig_reg[15]_i_8_n_2 ,\phase_sig_reg[15]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[14:12]}),
        .O(\phase_sig_reg[14]_1 ),
        .S({\phase_sig[15]_i_10_n_0 ,\phase_sig[15]_i_11_n_0 ,\phase_sig[15]_i_12_n_0 ,\phase_sig[15]_i_13_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \phase_sig_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\phase_sig_reg[15]_2 [0]),
        .Q(Q[1]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \phase_sig_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\phase_sig[2]_i_1_n_0 ),
        .Q(Q[2]),
        .S(rst));
  FDSE #(
    .INIT(1'b1)) 
    \phase_sig_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\phase_sig_reg[15]_2 [1]),
        .Q(Q[3]),
        .S(SR));
  CARRY4 \phase_sig_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\phase_sig_reg[3]_i_2_n_0 ,\phase_sig_reg[3]_i_2_n_1 ,\phase_sig_reg[3]_i_2_n_2 ,\phase_sig_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({\phase_sig_reg[3]_0 [1],\phase_sig_reg[3]_i_2_n_5 ,\phase_sig_reg[3]_0 [0],\phase_sig_reg[3]_i_2_n_7 }),
        .S({\phase_sig[3]_i_4_n_0 ,\phase_sig[3]_i_5_n_0 ,\phase_sig[3]_i_6_n_0 ,\phase_sig[3]_i_7_n_0 }));
  CARRY4 \phase_sig_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\phase_sig_reg[3]_i_3_n_0 ,\phase_sig_reg[3]_i_3_n_1 ,\phase_sig_reg[3]_i_3_n_2 ,\phase_sig_reg[3]_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O({\phase_sig_reg[3]_1 [1],\phase_sig_reg[3]_i_3_n_5 ,\phase_sig_reg[3]_1 [0],\phase_sig_reg[3]_i_3_n_7 }),
        .S({\phase_sig[3]_i_8_n_0 ,\phase_sig[3]_i_9_n_0 ,\phase_sig[3]_i_10_n_0 ,\phase_sig[3]_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \phase_sig_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\phase_sig[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \phase_sig_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\phase_sig[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(rst));
  FDSE #(
    .INIT(1'b1)) 
    \phase_sig_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\phase_sig[6]_i_1_n_0 ),
        .Q(Q[6]),
        .S(rst));
  FDRE #(
    .INIT(1'b0)) 
    \phase_sig_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\phase_sig_reg[15]_2 [2]),
        .Q(Q[7]),
        .R(SR));
  CARRY4 \phase_sig_reg[7]_i_2 
       (.CI(\phase_sig_reg[3]_i_2_n_0 ),
        .CO({\phase_sig_reg[7]_i_2_n_0 ,\phase_sig_reg[7]_i_2_n_1 ,\phase_sig_reg[7]_i_2_n_2 ,\phase_sig_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({\phase_sig_reg[7]_0 ,\phase_sig_reg[7]_i_2_n_5 ,\phase_sig_reg[7]_i_2_n_6 ,\phase_sig_reg[7]_i_2_n_7 }),
        .S({\phase_sig[7]_i_4_n_0 ,\phase_sig[7]_i_5_n_0 ,\phase_sig[7]_i_6_n_0 ,\phase_sig[7]_i_7_n_0 }));
  CARRY4 \phase_sig_reg[7]_i_3 
       (.CI(\phase_sig_reg[3]_i_3_n_0 ),
        .CO({\phase_sig_reg[7]_i_3_n_0 ,\phase_sig_reg[7]_i_3_n_1 ,\phase_sig_reg[7]_i_3_n_2 ,\phase_sig_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({\phase_sig_reg[7]_1 ,\phase_sig_reg[7]_i_3_n_5 ,\phase_sig_reg[7]_i_3_n_6 ,\phase_sig_reg[7]_i_3_n_7 }),
        .S({\phase_sig[7]_i_8_n_0 ,\phase_sig[7]_i_9_n_0 ,\phase_sig[7]_i_10_n_0 ,\phase_sig[7]_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \phase_sig_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\phase_sig_reg[15]_2 [3]),
        .Q(Q[8]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \phase_sig_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\phase_sig[9]_i_1_n_0 ),
        .Q(Q[9]),
        .S(rst));
  FDRE signalSel_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(signalSel_reg_0),
        .Q(waveSel),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "unimacro_BRAM_SDP_MACRO" *) 
module lab4_design_lab4_ip_0_6_unimacro_BRAM_SDP_MACRO
   (DOADO,
    s00_axi_aclk,
    rst,
    Q);
  output [15:0]DOADO;
  input s00_axi_aclk;
  input rst;
  input [9:0]Q;

  wire [15:0]DOADO;
  wire [9:0]Q;
  wire rst;
  wire s00_axi_aclk;
  wire [15:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h743B750375CC7694775D782578EE79B77A807B487C117CDA7DA37E6C7F357FFF),
    .INIT_01(256'h67CB689169576A1D6AE36BA96C706D376DFE6EC56F8C7053711B71E372AB7373),
    .INIT_02(256'h5B975C585D1A5DDB5E9D5F5F602260E561A8626B632F63F364B8657C66416706),
    .INIT_03(256'h4FBD5078513251EE52AA5366542354E0559D565B571957D8589759575A175AD7),
    .INIT_04(256'h445A450C45BF4672472647DA488F494549FB4AB14B684C204CD84D914E4A4F03),
    .INIT_05(256'h398A3A323ADB3B843C2E3CD93D853E313EDE3F8B403940E84197424742F743A8),
    .INIT_06(256'h2F67300430A1313F31DE327E331E33BF3461350435A7364B36F03795383B38E2),
    .INIT_07(256'h260B269B272B27BC284E28E129752A0A2A9F2B352BCC2C642CFD2D962E302ECB),
    .INIT_08(256'h1D8D1E0E1E901F131F97201C20A1212821AF223822C1234B23D6246224EF257D),
    .INIT_09(256'h1602167316E5175917CD184218B9193019A81A211A9C1B171B931C101C8E1D0D),
    .INIT_0A(256'h0F7C0FDC103E10A01104116911CE1235129D1306137013DB144714B415231592),
    .INIT_0B(256'h0A0B0A5A0AAA0AFB0B4D0BA00BF40C490CA00CF80D500DAA0E050E610EBE0F1D),
    .INIT_0C(256'h05BD05FA0637067506B506F60738077B07BF0805084B089308DC0926097109BE),
    .INIT_0D(256'h029D02C602F0031C0348037603A503D50407043A046D04A204D9051005490582),
    .INIT_0E(256'h00B200C700DE00F6010F012A01450162018001A001C001E202050229024E0275),
    .INIT_0F(256'h0000000200050009000F0016001E00270031003D004A005800680078008A009D),
    .INIT_10(256'h008A007800680058004A003D00310027001E0016000F00090005000200000000),
    .INIT_11(256'h024E0229020501E201C001A0018001620145012A010F00F600DE00C700B2009D),
    .INIT_12(256'h0549051004D904A2046D043A040703D503A503760348031C02F002C6029D0275),
    .INIT_13(256'h0971092608DC0893084B080507BF077B073806F606B50675063705FA05BD0582),
    .INIT_14(256'h0EBE0E610E050DAA0D500CF80CA00C490BF40BA00B4D0AFB0AAA0A5A0A0B09BE),
    .INIT_15(256'h152314B4144713DB13701306129D123511CE1169110410A0103E0FDC0F7C0F1D),
    .INIT_16(256'h1C8E1C101B931B171A9C1A2119A8193018B9184217CD175916E5167316021592),
    .INIT_17(256'h24EF246223D6234B22C1223821AF212820A1201C1F971F131E901E0E1D8D1D0D),
    .INIT_18(256'h2E302D962CFD2C642BCC2B352A9F2A0A297528E1284E27BC272B269B260B257D),
    .INIT_19(256'h383B379536F0364B35A73504346133BF331E327E31DE313F30A130042F672ECB),
    .INIT_1A(256'h42F74247419740E840393F8B3EDE3E313D853CD93C2E3B843ADB3A32398A38E2),
    .INIT_1B(256'h4E4A4D914CD84C204B684AB149FB4945488F47DA4726467245BF450C445A43A8),
    .INIT_1C(256'h5A175957589757D85719565B559D54E05423536652AA51EE513250784FBD4F03),
    .INIT_1D(256'h6641657C64B863F3632F626B61A860E560225F5F5E9D5DDB5D1A5C585B975AD7),
    .INIT_1E(256'h72AB71E3711B70536F8C6EC56DFE6D376C706BA96AE36A1D6957689167CB6706),
    .INIT_1F(256'h7F357E6C7DA37CDA7C117B487A8079B778EE7825775D769475CC7503743B7373),
    .INIT_20(256'h8BC28AFA8A31896988A087D8870F8646857D84B583EC8323825A819180C87FFE),
    .INIT_21(256'h9832976C96A695E0951A9454938D92C691FF913890718FAA8EE28E1A8D528C8A),
    .INIT_22(256'hA466A3A5A2E3A222A160A09E9FDB9F189E559D929CCE9C0A9B459A8199BC98F7),
    .INIT_23(256'hB040AF85AECBAE0FAD53AC97ABDAAB1DAA60A9A2A8E4A825A766A6A6A5E6A526),
    .INIT_24(256'hBBA3BAF1BA3EB98BB8D7B823B76EB6B8B602B54CB495B3DDB325B26CB1B3B0FA),
    .INIT_25(256'hC673C5CBC522C479C3CFC324C278C1CCC11FC072BFC4BF15BE66BDB6BD06BC55),
    .INIT_26(256'hD096CFF9CF5CCEBECE1FCD7FCCDFCC3ECB9CCAF9CA56C9B2C90DC868C7C2C71B),
    .INIT_27(256'hD9F2D962D8D2D841D7AFD71CD688D5F3D55ED4C8D431D399D300D267D1CDD132),
    .INIT_28(256'hE270E1EFE16DE0EAE066DFE1DF5CDED5DE4EDDC5DD3CDCB2DC27DB9BDB0EDA80),
    .INIT_29(256'hE9FBE98AE918E8A4E830E7BBE744E6CDE655E5DCE561E4E6E46AE3EDE36FE2F0),
    .INIT_2A(256'hF081F021EFBFEF5DEEF9EE94EE2FEDC8ED60ECF7EC8DEC22EBB6EB49EADAEA6B),
    .INIT_2B(256'hF5F2F5A3F553F502F4B0F45DF409F3B4F35DF305F2ADF253F1F8F19CF13FF0E0),
    .INIT_2C(256'hFA40FA03F9C6F988F948F907F8C5F882F83EF7F8F7B2F76AF721F6D7F68CF63F),
    .INIT_2D(256'hFD60FD37FD0DFCE1FCB5FC87FC58FC28FBF6FBC3FB90FB5BFB24FAEDFAB4FA7B),
    .INIT_2E(256'hFF4BFF36FF1FFF07FEEEFED3FEB8FE9BFE7DFE5DFE3DFE1BFDF8FDD4FDAFFD88),
    .INIT_2F(256'hFFFDFFFBFFF8FFF4FFEEFFE7FFDFFFD6FFCCFFC0FFB3FFA5FF95FF85FF73FF60),
    .INIT_30(256'hFF73FF85FF95FFA5FFB3FFC0FFCCFFD6FFDFFFE7FFEEFFF4FFF8FFFBFFFDFFFE),
    .INIT_31(256'hFDAFFDD4FDF8FE1BFE3DFE5DFE7DFE9BFEB8FED3FEEEFF07FF1FFF36FF4BFF60),
    .INIT_32(256'hFAB4FAEDFB24FB5BFB90FBC3FBF6FC28FC58FC87FCB5FCE1FD0DFD37FD60FD88),
    .INIT_33(256'hF68CF6D7F721F76AF7B2F7F8F83EF882F8C5F907F948F988F9C6FA03FA40FA7B),
    .INIT_34(256'hF13FF19CF1F8F253F2ADF305F35DF3B4F409F45DF4B0F502F553F5A3F5F2F63F),
    .INIT_35(256'hEADAEB49EBB6EC22EC8DECF7ED60EDC8EE2FEE94EEF9EF5DEFBFF021F081F0E0),
    .INIT_36(256'hE36FE3EDE46AE4E6E561E5DCE655E6CDE744E7BBE830E8A4E918E98AE9FBEA6B),
    .INIT_37(256'hDB0EDB9BDC27DCB2DD3CDDC5DE4EDED5DF5CDFE1E066E0EAE16DE1EFE270E2F0),
    .INIT_38(256'hD1CDD267D300D399D431D4C8D55ED5F3D688D71CD7AFD841D8D2D962D9F2DA80),
    .INIT_39(256'hC7C2C868C90DC9B2CA56CAF9CB9CCC3ECCDFCD7FCE1FCEBECF5CCFF9D096D132),
    .INIT_3A(256'hBD06BDB6BE66BF15BFC4C072C11FC1CCC278C324C3CFC479C522C5CBC673C71B),
    .INIT_3B(256'hB1B3B26CB325B3DDB495B54CB602B6B8B76EB823B8D7B98BBA3EBAF1BBA3BC55),
    .INIT_3C(256'hA5E6A6A6A766A825A8E4A9A2AA60AB1DABDAAC97AD53AE0FAECBAF85B040B0FA),
    .INIT_3D(256'h99BC9A819B459C0A9CCE9D929E559F189FDBA09EA160A222A2E3A3A5A466A526),
    .INIT_3E(256'h8D528E1A8EE28FAA9071913891FF92C6938D9454951A95E096A6976C983298F7),
    .INIT_3F(256'h80C88191825A832383EC84B5857D8646870F87D888A089698A318AFA8BC28C8A),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(18)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl 
       (.ADDRARDADDR({Q,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rst),
        .RSTRAMB(rst),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b1,1'b1,1'b1,1'b1}));
endmodule

(* ORIG_REF_NAME = "unimacro_BRAM_SDP_MACRO" *) 
module lab4_design_lab4_ip_0_6_unimacro_BRAM_SDP_MACRO__parameterized0
   (\sdp_bl.ramb18_dp_bl.ram18_bl_0 ,
    s00_axi_aclk,
    rst,
    Q);
  output [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  input s00_axi_aclk;
  input rst;
  input [9:0]Q;

  wire [9:0]Q;
  wire rst;
  wire s00_axi_aclk;
  wire [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  wire [15:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h148C16EC1A1E1E2022ED287F2ECD35CC3D7245B14E7857B961606B5C75987FFF),
    .INIT_01(256'h4D0446073F3B38B2327A2CA42740225C1E071A4D173B14DC13381259124512FF),
    .INIT_02(256'hAA42A70EA3659F489ABB95C290638AA5848F7E2C778770AA69A462815B515422),
    .INIT_03(256'hA96AAB58AD2BAEDAB05EB1ADB2BFB38DB40EB43AB40BB37AB282B11DAF48ACFF),
    .INIT_04(256'h8E468F4D906C91A592F9946A95F7979F99619B3B9D299F28A133A346A559A768),
    .INIT_05(256'h806781A682CD83DC84D685BC86928759881688CC897E8A328AEA8BAB8C798D56),
    .INIT_06(256'h646D660B67C569956B756D616F5271447332751876F178BB7A717C127D9C7F0E),
    .INIT_07(256'h65CE63F4625360ED5FC55EDD5E355DCE5DA85DC15E175EA85F70606D619962F0),
    .INIT_08(256'h8E968C838A3F87D0853E828E7FC97CF67A1C7743747371B36F0A6C7F6A1867DB),
    .INIT_09(256'h8D518F2990D8925793A094AE957C9608964D964C960295709496937792149073),
    .INIT_0A(256'h72A372FE73A1748875B0771178A77A6B7C567E60808182B084E5871989418B57),
    .INIT_0B(256'h8F7A8C9189A986CB840081527ECA7C6E7A48785B76AF75487429735572CD7292),
    .INIT_0C(256'hA137A2BAA3D5A487A4D1A4B4A435A357A220A0979EC19CA99A5697D195249259),
    .INIT_0D(256'h63E168406CC3715F76077AAE7F4783C788228C4C903B93E697449A4E9CFD9F4C),
    .INIT_0E(256'h50664E064C214ABE49DD498249AB4A584B844D2C4F4B51D854CC581F5BC55FB4),
    .INIT_0F(256'h997594F990398B43862480EB7BA7766571366C266745629E5E3F5A335684533D),
    .INIT_10(256'hA2B0A5EDA8B9AB09ACD8AE20AEDCAF0BAEACADC0AC4AAA4DA7CFA4D8A1709DA1),
    .INIT_11(256'h5BEB5F1162A5669B6AE66F78744179327E3C834F885A8D4E921B96B39B079F0A),
    .INIT_12(256'h74CC6F666A5D65BD61935DEA5ACA583A564154E2542053F9546D55795716593F),
    .INIT_13(256'hC744C4F1C1FABE69BA4CB5AFB0A2AB34A5789F7D995793178CCF869380737A80),
    .INIT_14(256'h8D7995709D0BA43BAAEDB115B6A4BB90BFCEC357C625C833C980CA0BC9D8C8E9),
    .INIT_15(256'h1B751EF9233F283C2DE434283AFA424749FF520F5A6362E66B85742B7CC38539),
    .INIT_16(256'h4F9D475E3F8E383E317E2B5E25EB21301D391A0E17B61636159015C516D518BC),
    .INIT_17(256'hD2CCCD5CC74BC0A4B972B1C3A9A5A127985A8F50861B7CCF737F6A3E6120583A),
    .INIT_18(256'hCCC4D1A3D612DA06DD73E04DE28CE426E514E551E4D7E3A4E1B5DF0CDBABD794),
    .INIT_19(256'h6D5C727177D07D73835189628F9C95F79C65A2DCA94FAFB2B5F5BC0DC1ECC782),
    .INIT_1A(256'h48A448C0491449A54A784B924CF74EAC50B4531155C758D75C41600564226895),
    .INIT_1B(256'h5652550D53D1529F517550544F3D4E314D334C444B674AA149F5496748FC48B9),
    .INIT_1C(256'h7625733270666DC16B4268E966B3649F62AB60D45F185D745BE65A6A58FF57A2),
    .INIT_1D(256'hB0FCAD7EA9D8A614A2389E4E9A5A966692778E948AC2870683647FE07C7E793F),
    .INIT_1E(256'hBF0AC123C2D1C411C4E2C546C53EC4CAC3F0C2B2C116BF20BCD7BA41B766B44C),
    .INIT_1F(256'h76EC7C30818A86EF8C5491B096F69C1DA11AA5E4AA70AEB7B2B1B655B99FBC87),
    .INIT_20(256'h4848486548E749D04B204CD94EF9517F546757AE5B4F5F446385680D6CD171C9),
    .INIT_21(256'h68A165F36335606E5DA75AE8583955A4533250EB4ED74CFF4B6B4A22492B488B),
    .INIT_22(256'h7DD67DC57D977D457CCC7C277B537A4D791477A876087436723570076DB16B38),
    .INIT_23(256'h848982DB816B80397F407E7F7DF07D8F7D557D3B7D3C7D517D717D957DB77DCF),
    .INIT_24(256'hB690B34EAFE0AC54A8B5A50DA1679DCE9A4B96E693A790968DB88B1188A58678),
    .INIT_25(256'hB444B867BBFABEF9C162C337C479C52BC552C4F4C417C2C4C104BEE1BC65B99C),
    .INIT_26(256'h43D74B2852BF5A8B62786A75726F7A56821889A590EE97E59E7CA4A7AA5DAF94),
    .INIT_27(256'h20AE1D141A48184F172B16DC176118B71AD81DBD215E25B02AA73035364C3CDD),
    .INIT_28(256'h9F7496808D4F83F87A8F712967DC5EBC55DF4D58453A3D97367F30022A2E250E),
    .INIT_29(256'hDCC5DED9E01BE086E018DECFDCAED9B7D5EFD15FCC10C60DBF64B822B058A818),
    .INIT_2A(256'h74FF7CA3847B8C7294769C72A451AC00B36ABA7DC124C750CCEED1F0D647D9E7),
    .INIT_2B(256'h41BC3FF33ED53E673EAE3FAC416143CD46EB4AB64F28543659D75FFD669B6DA1),
    .INIT_2C(256'h91B48C4D86A780D27ADE74DC6EDD68F2632D5D9D585453634ED74AC1472D4428),
    .INIT_2D(256'hA8D6AB63AD75AF02B006B07BB05EAFAEAE6AAC95AA32A746A3D69FEC9B9196D0),
    .INIT_2E(256'h62CC66C16AFE6F7A742778FA7DE782DF87D58CBB918496209A839EA0A26AA5D4),
    .INIT_2F(256'h5AAB582255EB54115298518750E350B050F151A652D0546E567E58FB5BE15F29),
    .INIT_30(256'h91868EC08BC0888B8527819D7DF37A32766372916EC46B07676563E760975D80),
    .INIT_31(256'h9AD29BD69CB89D749E029E5F9E849E6D9E169D7C9C9D9B769A0798509651940D),
    .INIT_32(256'h8A6D8AE08B6E8C188CDD8DBE8EB78FC790EB9220936294AB95F79740988299B4),
    .INIT_33(256'h882988B18917895F898D89A689AE89AB89A08994898A8988899189A989D48A14),
    .INIT_34(256'h6AD36D80702572BD754077A979F47C1D7E1F7FF981A8832A848085AA86A8877D),
    .INIT_35(256'h524451D351BA51F752875366548F55FE57AC59945BAE5DF3605C62E2657C6825),
    .INIT_36(256'h812E7CEE78B5748D70806C9568D5654A61F95EEB5C2459AA578155AE5431530E),
    .INIT_37(256'hADE6AD5BAC75AB33A996A7A0A555A2B99FD19CA39935958F91B88DBB899E856C),
    .INIT_38(256'h927E952097CA9A729D0F9F9AA209A453A671A85BAA08AB73AC96AD69ADEAAE15),
    .INIT_39(256'h7E117DCC7DB57DD27E267EB27F7A807C81BA833184DF86C088D18B0D8D6C8FEA),
    .INIT_3A(256'h84A9855685BE85E585D1858A8516847E83C98300822C815580837FBF7F117E7F),
    .INIT_3B(256'h54E0591E5D5C618E65A8699F6D6A7100745977707A3E7CC17EF580D9826D83B1),
    .INIT_3C(256'h395E3726359834B0346934BE35A5371639083B6E3E3E416944E548A24C9450AD),
    .INIT_3D(256'hA7D89E9A955F8C3A833F7A7F720D69F8624F5B2154794E6248E444063FCF3C41),
    .INIT_3E(256'hFFBDFFFEFF4AFDA6FB19F7AAF366EE57E88BE213DAFFD361CB4BC2D1BA08B103),
    .INIT_3F(256'h8B6996BCA1E0ACBDB73DC14ACAD1D3BEDBFEE382EA3BF01DF51DF932FC56FE85),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(18)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl 
       (.ADDRARDADDR({Q,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\sdp_bl.ramb18_dp_bl.ram18_bl_0 ),
        .DOBDO(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rst),
        .RSTRAMB(rst),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b1,1'b1,1'b1,1'b1}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
