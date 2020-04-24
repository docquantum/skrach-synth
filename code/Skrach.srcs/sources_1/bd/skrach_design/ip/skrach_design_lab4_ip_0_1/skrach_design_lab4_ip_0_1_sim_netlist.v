// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Apr 23 19:54:42 2020
// Host        : QuantumNet-L4 running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim
//               /home/docquantum/homework/ce446_solovey/final/code/Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_1/skrach_design_lab4_ip_0_1_sim_netlist.v
// Design      : skrach_design_lab4_ip_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "skrach_design_lab4_ip_0_1,lab4_ip_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "lab4_ip_v1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module skrach_design_lab4_ip_0_1
   (ac_mclk,
    ac_adc_sdata,
    ac_dac_sdata,
    ac_bclk,
    ac_lrclk,
    scl,
    sda,
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
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
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
  wire ac_bclk;
  wire ac_dac_sdata;
  wire ac_lrclk;
  wire ac_mclk;
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

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  skrach_design_lab4_ip_0_1_lab4_ip_v1_0 U0
       (.BCLK_int_reg(ac_bclk),
        .LRCLK_reg(ac_lrclk),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .ac_dac_sdata(ac_dac_sdata),
        .ac_mclk(ac_mclk),
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
        .sda(sda));
endmodule

(* ORIG_REF_NAME = "Audio_Codec_Wrapper" *) 
module skrach_design_lab4_ip_0_1_Audio_Codec_Wrapper
   (ac_mclk,
    s00_axi_aresetn_0,
    BCLK_int_reg,
    LRCLK_reg,
    sw,
    s00_axi_aresetn_1,
    D,
    ac_dac_sdata,
    scl,
    sda,
    s00_axi_aresetn,
    s00_axi_aclk,
    minusOp,
    \axi_rdata_reg[0] ,
    axi_araddr,
    \axi_rdata_reg[0]_0 ,
    \axi_rdata_reg[0]_1 ,
    \Data_Out_int_reg[15] );
  output ac_mclk;
  output s00_axi_aresetn_0;
  output BCLK_int_reg;
  output LRCLK_reg;
  output sw;
  output s00_axi_aresetn_1;
  output [0:0]D;
  output ac_dac_sdata;
  inout scl;
  inout sda;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [14:0]minusOp;
  input [0:0]\axi_rdata_reg[0] ;
  input [1:0]axi_araddr;
  input [0:0]\axi_rdata_reg[0]_0 ;
  input [0:0]\axi_rdata_reg[0]_1 ;
  input [0:0]\Data_Out_int_reg[15] ;

  wire BCLK_int_reg;
  wire [0:0]D;
  wire [0:0]\Data_Out_int_reg[15] ;
  wire LRCLK_reg;
  wire ac_dac_sdata;
  wire [2:0]ac_lrclk_count;
  wire \ac_lrclk_count[0]_i_1_n_0 ;
  wire \ac_lrclk_count[1]_i_1_n_0 ;
  wire \ac_lrclk_count[2]_i_1_n_0 ;
  wire ac_lrclk_sig_prev_reg_n_0;
  wire ac_mclk;
  wire audio_inout_n_2;
  wire audio_inout_n_4;
  wire [1:0]axi_araddr;
  wire [0:0]\axi_rdata_reg[0] ;
  wire [0:0]\axi_rdata_reg[0]_0 ;
  wire [0:0]\axi_rdata_reg[0]_1 ;
  wire clk_50;
  wire [14:0]minusOp;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire s00_axi_aresetn_1;
  wire scl;
  wire sda;
  wire sw;
  wire NLW_audiocodec_master_clock_locked_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    \ac_lrclk_count[0]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(LRCLK_reg),
        .I2(ac_lrclk_sig_prev_reg_n_0),
        .I3(ac_lrclk_count[0]),
        .O(\ac_lrclk_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hA208AA00)) 
    \ac_lrclk_count[1]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(LRCLK_reg),
        .I2(ac_lrclk_sig_prev_reg_n_0),
        .I3(ac_lrclk_count[1]),
        .I4(ac_lrclk_count[0]),
        .O(\ac_lrclk_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8828888888888888)) 
    \ac_lrclk_count[2]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(ac_lrclk_count[2]),
        .I2(LRCLK_reg),
        .I3(ac_lrclk_sig_prev_reg_n_0),
        .I4(ac_lrclk_count[1]),
        .I5(ac_lrclk_count[0]),
        .O(\ac_lrclk_count[2]_i_1_n_0 ));
  FDRE \ac_lrclk_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ac_lrclk_count[0]_i_1_n_0 ),
        .Q(ac_lrclk_count[0]),
        .R(1'b0));
  FDRE \ac_lrclk_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ac_lrclk_count[1]_i_1_n_0 ),
        .Q(ac_lrclk_count[1]),
        .R(1'b0));
  FDRE \ac_lrclk_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ac_lrclk_count[2]_i_1_n_0 ),
        .Q(ac_lrclk_count[2]),
        .R(1'b0));
  FDRE ac_lrclk_sig_prev_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(audio_inout_n_2),
        .Q(ac_lrclk_sig_prev_reg_n_0),
        .R(1'b0));
  skrach_design_lab4_ip_0_1_i2s_ctl audio_inout
       (.BCLK_int_reg_0(BCLK_int_reg),
        .BCLK_int_reg_1(s00_axi_aresetn_0),
        .\Data_Out_int_reg[15]_0 (\Data_Out_int_reg[15] ),
        .LRCLK_reg_0(LRCLK_reg),
        .ac_dac_sdata(ac_dac_sdata),
        .ac_lrclk_count(ac_lrclk_count),
        .\ac_lrclk_count_reg[2] (audio_inout_n_4),
        .ac_lrclk_sig_prev_reg(audio_inout_n_2),
        .ac_lrclk_sig_prev_reg_0(ac_lrclk_sig_prev_reg_n_0),
        .minusOp(minusOp),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(s00_axi_aresetn_1),
        .sw(sw));
  skrach_design_lab4_ip_0_1_audio_clk_wiz audiocodec_master_clock
       (.clk_in1(s00_axi_aclk),
        .clk_out1(ac_mclk),
        .clk_out2(clk_50),
        .locked(NLW_audiocodec_master_clock_locked_UNCONNECTED),
        .resetn(s00_axi_aresetn));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(sw),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(\axi_rdata_reg[0]_0 ),
        .I5(\axi_rdata_reg[0]_1 ),
        .O(D));
  skrach_design_lab4_ip_0_1_audio_init initialize_audio
       (.clk_out2(clk_50),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(s00_axi_aresetn_0),
        .scl(scl),
        .sda(sda));
  FDRE ready_sig_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(audio_inout_n_4),
        .Q(sw),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TWICtl" *) 
module skrach_design_lab4_ip_0_1_TWICtl
   (initA_reg_0_sp_1,
    initA_reg_2_sp_1,
    \initA_reg[2]_0 ,
    initA_reg_5_sp_1,
    s00_axi_aresetn_0,
    D,
    s00_axi_aresetn_1,
    \initA_reg[0]_0 ,
    E,
    \state_reg[2] ,
    scl,
    sda,
    clk_out2,
    initA_reg,
    \initA_reg[5]_0 ,
    s00_axi_aresetn,
    stb,
    Q,
    initA_reg_6_sp_1,
    \state_reg[3] ,
    \state_reg[1] ,
    \state_reg[1]_0 ,
    \state_reg[1]_1 ,
    \state_reg[3]_0 ,
    initA_reg_1_sp_1,
    initEn,
    \initA_reg[1]_0 ,
    \initA_reg[1]_1 ,
    \initA[2]_i_2_0 ,
    \initA[2]_i_2_1 ,
    initEn_reg,
    msg,
    initEn_reg_0);
  output initA_reg_0_sp_1;
  output initA_reg_2_sp_1;
  output \initA_reg[2]_0 ;
  output initA_reg_5_sp_1;
  output s00_axi_aresetn_0;
  output [3:0]D;
  output s00_axi_aresetn_1;
  output \initA_reg[0]_0 ;
  output [0:0]E;
  output \state_reg[2] ;
  inout scl;
  inout sda;
  input clk_out2;
  input [6:0]initA_reg;
  input \initA_reg[5]_0 ;
  input s00_axi_aresetn;
  input stb;
  input [7:0]Q;
  input initA_reg_6_sp_1;
  input [3:0]\state_reg[3] ;
  input \state_reg[1] ;
  input \state_reg[1]_0 ;
  input \state_reg[1]_1 ;
  input \state_reg[3]_0 ;
  input initA_reg_1_sp_1;
  input initEn;
  input \initA_reg[1]_0 ;
  input \initA_reg[1]_1 ;
  input [2:0]\initA[2]_i_2_0 ;
  input \initA[2]_i_2_1 ;
  input initEn_reg;
  input msg;
  input initEn_reg_0;

  wire [3:0]D;
  wire DONE_O_i_1_n_0;
  wire DONE_O_i_2_n_0;
  wire DONE_O_i_3_n_0;
  wire DONE_O_i_4_n_0;
  wire DONE_O_i_5_n_0;
  wire [0:0]E;
  wire ERR_O_i_1_n_0;
  wire \FSM_gray_state[0]_i_1_n_0 ;
  wire \FSM_gray_state[0]_i_2_n_0 ;
  wire \FSM_gray_state[1]_i_1_n_0 ;
  wire \FSM_gray_state[1]_i_2_n_0 ;
  wire \FSM_gray_state[1]_i_3_n_0 ;
  wire \FSM_gray_state[2]_i_1_n_0 ;
  wire \FSM_gray_state[2]_i_2_n_0 ;
  wire \FSM_gray_state[3]_i_10_n_0 ;
  wire \FSM_gray_state[3]_i_11_n_0 ;
  wire \FSM_gray_state[3]_i_12_n_0 ;
  wire \FSM_gray_state[3]_i_13_n_0 ;
  wire \FSM_gray_state[3]_i_14_n_0 ;
  wire \FSM_gray_state[3]_i_15_n_0 ;
  wire \FSM_gray_state[3]_i_16_n_0 ;
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
  wire \busFreeCnt[6]_i_3_n_0 ;
  wire [6:0]busFreeCnt_reg;
  wire busState0;
  wire \busState[0]_i_1_n_0 ;
  wire \busState[1]_i_1_n_0 ;
  wire \busState_reg_n_0_[0] ;
  wire \busState_reg_n_0_[1] ;
  wire clk_out2;
  wire dScl;
  wire [7:1]dataByte;
  wire dataByte0;
  wire dataByte1;
  wire \dataByte[0]_i_1_n_0 ;
  wire \dataByte[1]_i_1_n_0 ;
  wire \dataByte[2]_i_1_n_0 ;
  wire \dataByte[3]_i_1_n_0 ;
  wire \dataByte[4]_i_1_n_0 ;
  wire \dataByte[5]_i_1_n_0 ;
  wire \dataByte[6]_i_1_n_0 ;
  wire \dataByte[7]_i_1_n_0 ;
  wire \dataByte[7]_i_2_n_0 ;
  wire \dataByte[7]_i_5_n_0 ;
  wire \dataByte[7]_i_6_n_0 ;
  wire \dataByte_reg_n_0_[0] ;
  wire ddSda;
  wire done;
  wire error;
  wire iSda;
  wire [2:0]\initA[2]_i_2_0 ;
  wire \initA[2]_i_2_1 ;
  wire \initA[2]_i_2_n_0 ;
  wire \initA[2]_i_4_n_0 ;
  wire \initA[2]_i_6_n_0 ;
  wire [6:0]initA_reg;
  wire \initA_reg[0]_0 ;
  wire \initA_reg[1]_0 ;
  wire \initA_reg[1]_1 ;
  wire \initA_reg[2]_0 ;
  wire \initA_reg[5]_0 ;
  wire initA_reg_0_sn_1;
  wire initA_reg_1_sn_1;
  wire initA_reg_2_sn_1;
  wire initA_reg_5_sn_1;
  wire initA_reg_6_sn_1;
  wire initEn;
  wire initEn_i_2_n_0;
  wire initEn_reg;
  wire initEn_reg_0;
  wire int_Rst;
  wire int_Rst_i_1_n_0;
  wire msg;
  wire [0:0]p_0_in;
  wire rScl;
  wire rScl_i_1_n_0;
  wire rSda;
  wire rSda_i_1_n_0;
  wire rSda_i_3_n_0;
  wire rSda_i_4_n_0;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire s00_axi_aresetn_1;
  wire scl;
  wire [6:0]sclCnt0;
  wire sclCnt0_0;
  wire \sclCnt[6]_i_2_n_0 ;
  wire \sclCnt[6]_i_4_n_0 ;
  wire [6:0]sclCnt_reg;
  wire scl_INST_0_i_1_n_0;
  wire sda;
  wire sda_INST_0_i_1_n_0;
  wire [3:0]state;
  wire \state_reg[1] ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire \state_reg[2] ;
  wire [3:0]\state_reg[3] ;
  wire \state_reg[3]_0 ;
  wire stb;
  wire \subState[0]_i_1_n_0 ;
  wire \subState[1]_i_1_n_0 ;
  wire \subState[1]_i_2_n_0 ;
  wire \subState[1]_i_3_n_0 ;
  wire \subState_reg_n_0_[0] ;
  wire \subState_reg_n_0_[1] ;

  assign initA_reg_0_sp_1 = initA_reg_0_sn_1;
  assign initA_reg_1_sn_1 = initA_reg_1_sp_1;
  assign initA_reg_2_sp_1 = initA_reg_2_sn_1;
  assign initA_reg_5_sp_1 = initA_reg_5_sn_1;
  assign initA_reg_6_sn_1 = initA_reg_6_sp_1;
  LUT6 #(
    .INIT(64'hFFFFFFFF0000D0FF)) 
    DONE_O_i_1
       (.I0(addrNData),
        .I1(p_0_in),
        .I2(DONE_O_i_2_n_0),
        .I3(DONE_O_i_3_n_0),
        .I4(DONE_O_i_4_n_0),
        .I5(DONE_O_i_5_n_0),
        .O(DONE_O_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    DONE_O_i_2
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .O(DONE_O_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    DONE_O_i_3
       (.I0(bitCount[0]),
        .I1(bitCount[1]),
        .I2(bitCount[2]),
        .I3(\dataByte[7]_i_6_n_0 ),
        .I4(state[1]),
        .I5(state[0]),
        .O(DONE_O_i_3_n_0));
  LUT3 #(
    .INIT(8'hDF)) 
    DONE_O_i_4
       (.I0(\subState_reg_n_0_[0] ),
        .I1(\subState_reg_n_0_[1] ),
        .I2(\subState[1]_i_2_n_0 ),
        .O(DONE_O_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    DONE_O_i_5
       (.I0(\FSM_gray_state[3]_i_12_n_0 ),
        .I1(p_0_in),
        .I2(dScl),
        .I3(rSda),
        .O(DONE_O_i_5_n_0));
  FDRE DONE_O_reg
       (.C(clk_out2),
        .CE(1'b1),
        .D(DONE_O_i_1_n_0),
        .Q(done),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    ERR_O_i_1
       (.I0(\subState[1]_i_2_n_0 ),
        .I1(\subState_reg_n_0_[1] ),
        .I2(\subState_reg_n_0_[0] ),
        .I3(DONE_O_i_2_n_0),
        .I4(p_0_in),
        .I5(DONE_O_i_5_n_0),
        .O(ERR_O_i_1_n_0));
  FDRE ERR_O_reg
       (.C(clk_out2),
        .CE(1'b1),
        .D(ERR_O_i_1_n_0),
        .Q(error),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF4FF4FFF5FFF5F)) 
    \FSM_gray_state[0]_i_1 
       (.I0(\FSM_gray_state[0]_i_2_n_0 ),
        .I1(\FSM_gray_state[2]_i_2_n_0 ),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[2]),
        .I5(state[0]),
        .O(\FSM_gray_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF5515)) 
    \FSM_gray_state[0]_i_2 
       (.I0(state[0]),
        .I1(stb),
        .I2(msg),
        .I3(int_Rst),
        .I4(state[2]),
        .O(\FSM_gray_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000003A303A)) 
    \FSM_gray_state[1]_i_1 
       (.I0(\FSM_gray_state[3]_i_9_n_0 ),
        .I1(\FSM_gray_state[1]_i_2_n_0 ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[3]),
        .O(\FSM_gray_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0504F0FF05040000)) 
    \FSM_gray_state[1]_i_2 
       (.I0(\dataByte_reg_n_0_[0] ),
        .I1(addrNData),
        .I2(int_Rst),
        .I3(stb),
        .I4(state[0]),
        .I5(\FSM_gray_state[1]_i_3_n_0 ),
        .O(\FSM_gray_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_gray_state[1]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\FSM_gray_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A00ACFF0)) 
    \FSM_gray_state[2]_i_1 
       (.I0(\FSM_gray_state[3]_i_9_n_0 ),
        .I1(\FSM_gray_state[2]_i_2_n_0 ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[3]),
        .O(\FSM_gray_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFFFF0B)) 
    \FSM_gray_state[2]_i_2 
       (.I0(msg),
        .I1(stb),
        .I2(addrNData),
        .I3(\dataByte_reg_n_0_[0] ),
        .I4(int_Rst),
        .O(\FSM_gray_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF33FF23)) 
    \FSM_gray_state[3]_i_1 
       (.I0(\FSM_gray_state[3]_i_3_n_0 ),
        .I1(\FSM_gray_state[3]_i_4_n_0 ),
        .I2(\FSM_gray_state[3]_i_5_n_0 ),
        .I3(\FSM_gray_state[3]_i_6_n_0 ),
        .I4(\FSM_gray_state[3]_i_7_n_0 ),
        .I5(\FSM_gray_state[3]_i_8_n_0 ),
        .O(\FSM_gray_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h1110)) 
    \FSM_gray_state[3]_i_10 
       (.I0(int_Rst),
        .I1(\dataByte_reg_n_0_[0] ),
        .I2(addrNData),
        .I3(stb),
        .O(\FSM_gray_state[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_gray_state[3]_i_11 
       (.I0(bitCount[1]),
        .I1(bitCount[0]),
        .I2(bitCount[2]),
        .O(\FSM_gray_state[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_gray_state[3]_i_12 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\FSM_gray_state[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \FSM_gray_state[3]_i_13 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(\subState_reg_n_0_[0] ),
        .I5(\subState_reg_n_0_[1] ),
        .O(\FSM_gray_state[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_gray_state[3]_i_14 
       (.I0(\subState_reg_n_0_[0] ),
        .I1(\subState_reg_n_0_[1] ),
        .O(\FSM_gray_state[3]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_gray_state[3]_i_15 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\FSM_gray_state[3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_gray_state[3]_i_16 
       (.I0(state[3]),
        .I1(state[2]),
        .O(\FSM_gray_state[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000004011000040)) 
    \FSM_gray_state[3]_i_2 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(\FSM_gray_state[3]_i_9_n_0 ),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\FSM_gray_state[3]_i_10_n_0 ),
        .O(\FSM_gray_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \FSM_gray_state[3]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .O(\FSM_gray_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_gray_state[3]_i_4 
       (.I0(\subState_reg_n_0_[1] ),
        .I1(\subState_reg_n_0_[0] ),
        .I2(\subState[1]_i_2_n_0 ),
        .O(\FSM_gray_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFB7FFB3)) 
    \FSM_gray_state[3]_i_5 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(\FSM_gray_state[3]_i_11_n_0 ),
        .O(\FSM_gray_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \FSM_gray_state[3]_i_6 
       (.I0(s00_axi_aresetn),
        .I1(\subState[1]_i_3_n_0 ),
        .I2(\busState_reg_n_0_[1] ),
        .I3(stb),
        .I4(\busState_reg_n_0_[0] ),
        .I5(DONE_O_i_5_n_0),
        .O(\FSM_gray_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_gray_state[3]_i_7 
       (.I0(\FSM_gray_state[3]_i_12_n_0 ),
        .I1(bitCount[0]),
        .I2(bitCount[1]),
        .I3(bitCount[2]),
        .O(\FSM_gray_state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A0B3F3)) 
    \FSM_gray_state[3]_i_8 
       (.I0(\FSM_gray_state[3]_i_13_n_0 ),
        .I1(\FSM_gray_state[3]_i_9_n_0 ),
        .I2(\subState[1]_i_2_n_0 ),
        .I3(\FSM_gray_state[3]_i_14_n_0 ),
        .I4(\FSM_gray_state[3]_i_15_n_0 ),
        .I5(\FSM_gray_state[3]_i_16_n_0 ),
        .O(\FSM_gray_state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \FSM_gray_state[3]_i_9 
       (.I0(rSda),
        .I1(dScl),
        .I2(p_0_in),
        .O(\FSM_gray_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "stwrite:0000,stread:0010,ststart:0101,stidle:0001,stmnackstart:0111,stmack:0110,stsack:0011,stmnackstop:0100,ststop:1111" *) 
  FDRE \FSM_gray_state_reg[0] 
       (.C(clk_out2),
        .CE(\FSM_gray_state[3]_i_1_n_0 ),
        .D(\FSM_gray_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stwrite:0000,stread:0010,ststart:0101,stidle:0001,stmnackstart:0111,stmack:0110,stsack:0011,stmnackstop:0100,ststop:1111" *) 
  FDRE \FSM_gray_state_reg[1] 
       (.C(clk_out2),
        .CE(\FSM_gray_state[3]_i_1_n_0 ),
        .D(\FSM_gray_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stwrite:0000,stread:0010,ststart:0101,stidle:0001,stmnackstart:0111,stmack:0110,stsack:0011,stmnackstop:0100,ststop:1111" *) 
  FDRE \FSM_gray_state_reg[2] 
       (.C(clk_out2),
        .CE(\FSM_gray_state[3]_i_1_n_0 ),
        .D(\FSM_gray_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stwrite:0000,stread:0010,ststart:0101,stidle:0001,stmnackstart:0111,stmack:0110,stsack:0011,stmnackstop:0100,ststop:1111" *) 
  FDRE \FSM_gray_state_reg[3] 
       (.C(clk_out2),
        .CE(\FSM_gray_state[3]_i_1_n_0 ),
        .D(\FSM_gray_state[3]_i_2_n_0 ),
        .Q(state[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0EEEAAAAEEEEAAAA)) 
    addrNData_i_1
       (.I0(addrNData),
        .I1(\FSM_gray_state[3]_i_3_n_0 ),
        .I2(\subState_reg_n_0_[1] ),
        .I3(\subState_reg_n_0_[0] ),
        .I4(\subState[1]_i_2_n_0 ),
        .I5(DONE_O_i_2_n_0),
        .O(addrNData_i_1_n_0));
  FDRE addrNData_reg
       (.C(clk_out2),
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
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFA6)) 
    \bitCount[1]_i_1 
       (.I0(bitCount[1]),
        .I1(dataByte0),
        .I2(bitCount[0]),
        .I3(dataByte1),
        .O(\bitCount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFFFFAAA6)) 
    \bitCount[2]_i_1 
       (.I0(bitCount[2]),
        .I1(dataByte0),
        .I2(bitCount[1]),
        .I3(bitCount[0]),
        .I4(dataByte1),
        .O(\bitCount[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \bitCount_reg[0] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\bitCount[0]_i_1_n_0 ),
        .Q(bitCount[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bitCount_reg[1] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\bitCount[1]_i_1_n_0 ),
        .Q(bitCount[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bitCount_reg[2] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\bitCount[2]_i_1_n_0 ),
        .Q(bitCount[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
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
        .O(busFreeCnt0[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \busFreeCnt[2]_i_1 
       (.I0(busFreeCnt_reg[2]),
        .I1(busFreeCnt_reg[0]),
        .I2(busFreeCnt_reg[1]),
        .O(busFreeCnt0[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \busFreeCnt[3]_i_1 
       (.I0(busFreeCnt_reg[1]),
        .I1(busFreeCnt_reg[0]),
        .I2(busFreeCnt_reg[2]),
        .I3(busFreeCnt_reg[3]),
        .O(busFreeCnt0[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \busFreeCnt[4]_i_1 
       (.I0(busFreeCnt_reg[3]),
        .I1(busFreeCnt_reg[2]),
        .I2(busFreeCnt_reg[0]),
        .I3(busFreeCnt_reg[1]),
        .I4(busFreeCnt_reg[4]),
        .O(busFreeCnt0[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \busFreeCnt[5]_i_1 
       (.I0(busFreeCnt_reg[4]),
        .I1(busFreeCnt_reg[1]),
        .I2(busFreeCnt_reg[0]),
        .I3(busFreeCnt_reg[2]),
        .I4(busFreeCnt_reg[3]),
        .I5(busFreeCnt_reg[5]),
        .O(busFreeCnt0[5]));
  LUT3 #(
    .INIT(8'hDF)) 
    \busFreeCnt[6]_i_1 
       (.I0(p_0_in),
        .I1(int_Rst),
        .I2(dScl),
        .O(busFreeCnt0_1));
  LUT2 #(
    .INIT(4'h9)) 
    \busFreeCnt[6]_i_2 
       (.I0(busFreeCnt_reg[6]),
        .I1(\busFreeCnt[6]_i_3_n_0 ),
        .O(busFreeCnt0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \busFreeCnt[6]_i_3 
       (.I0(busFreeCnt_reg[5]),
        .I1(busFreeCnt_reg[3]),
        .I2(busFreeCnt_reg[2]),
        .I3(busFreeCnt_reg[0]),
        .I4(busFreeCnt_reg[1]),
        .I5(busFreeCnt_reg[4]),
        .O(\busFreeCnt[6]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[0] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(busFreeCnt0[0]),
        .Q(busFreeCnt_reg[0]),
        .S(busFreeCnt0_1));
  FDRE #(
    .INIT(1'b0)) 
    \busFreeCnt_reg[1] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(busFreeCnt0[1]),
        .Q(busFreeCnt_reg[1]),
        .R(busFreeCnt0_1));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[2] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(busFreeCnt0[2]),
        .Q(busFreeCnt_reg[2]),
        .S(busFreeCnt0_1));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[3] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(busFreeCnt0[3]),
        .Q(busFreeCnt_reg[3]),
        .S(busFreeCnt0_1));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[4] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(busFreeCnt0[4]),
        .Q(busFreeCnt_reg[4]),
        .S(busFreeCnt0_1));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[5] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(busFreeCnt0[5]),
        .Q(busFreeCnt_reg[5]),
        .S(busFreeCnt0_1));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[6] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(busFreeCnt0[6]),
        .Q(busFreeCnt_reg[6]),
        .S(busFreeCnt0_1));
  LUT6 #(
    .INIT(64'h00BFFFFF00BF0000)) 
    \busState[0]_i_1 
       (.I0(p_0_in),
        .I1(dScl),
        .I2(ddSda),
        .I3(int_Rst),
        .I4(busState0),
        .I5(\busState_reg_n_0_[0] ),
        .O(\busState[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    \busState[1]_i_1 
       (.I0(ddSda),
        .I1(dScl),
        .I2(p_0_in),
        .I3(int_Rst),
        .I4(busState0),
        .I5(\busState_reg_n_0_[1] ),
        .O(\busState[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FF40FF40FFFF)) 
    \busState[1]_i_2 
       (.I0(p_0_in),
        .I1(dScl),
        .I2(ddSda),
        .I3(int_Rst),
        .I4(\busFreeCnt[6]_i_3_n_0 ),
        .I5(busFreeCnt_reg[6]),
        .O(busState0));
  FDRE #(
    .INIT(1'b0)) 
    \busState_reg[0] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\busState[0]_i_1_n_0 ),
        .Q(\busState_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \busState_reg[1] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\busState[1]_i_1_n_0 ),
        .Q(\busState_reg_n_0_[1] ),
        .R(1'b0));
  FDRE dScl_reg
       (.C(clk_out2),
        .CE(1'b1),
        .D(scl),
        .Q(dScl),
        .R(1'b0));
  FDRE dSda_reg
       (.C(clk_out2),
        .CE(1'b1),
        .D(sda),
        .Q(p_0_in),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h88B8)) 
    \dataByte[0]_i_1 
       (.I0(p_0_in),
        .I1(\dataByte[7]_i_5_n_0 ),
        .I2(Q[0]),
        .I3(\FSM_gray_state[3]_i_3_n_0 ),
        .O(\dataByte[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE0E)) 
    \dataByte[1]_i_1 
       (.I0(\FSM_gray_state[3]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(\dataByte[7]_i_5_n_0 ),
        .I3(\dataByte_reg_n_0_[0] ),
        .O(\dataByte[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE0E)) 
    \dataByte[2]_i_1 
       (.I0(\FSM_gray_state[3]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(\dataByte[7]_i_5_n_0 ),
        .I3(dataByte[1]),
        .O(\dataByte[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \dataByte[3]_i_1 
       (.I0(dataByte[2]),
        .I1(\dataByte[7]_i_5_n_0 ),
        .I2(Q[3]),
        .I3(\FSM_gray_state[3]_i_3_n_0 ),
        .O(\dataByte[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE0E)) 
    \dataByte[4]_i_1 
       (.I0(\FSM_gray_state[3]_i_3_n_0 ),
        .I1(Q[4]),
        .I2(\dataByte[7]_i_5_n_0 ),
        .I3(dataByte[3]),
        .O(\dataByte[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE0E)) 
    \dataByte[5]_i_1 
       (.I0(\FSM_gray_state[3]_i_3_n_0 ),
        .I1(Q[5]),
        .I2(\dataByte[7]_i_5_n_0 ),
        .I3(dataByte[4]),
        .O(\dataByte[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE0E)) 
    \dataByte[6]_i_1 
       (.I0(\FSM_gray_state[3]_i_3_n_0 ),
        .I1(Q[6]),
        .I2(\dataByte[7]_i_5_n_0 ),
        .I3(dataByte[5]),
        .O(\dataByte[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \dataByte[7]_i_1 
       (.I0(dataByte1),
        .I1(dataByte0),
        .O(\dataByte[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \dataByte[7]_i_2 
       (.I0(dataByte[6]),
        .I1(\dataByte[7]_i_5_n_0 ),
        .I2(Q[7]),
        .I3(\FSM_gray_state[3]_i_3_n_0 ),
        .O(\dataByte[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000400C000000000)) 
    \dataByte[7]_i_3 
       (.I0(\FSM_gray_state[3]_i_14_n_0 ),
        .I1(\subState[1]_i_2_n_0 ),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[1]),
        .I5(state[0]),
        .O(dataByte1));
  LUT6 #(
    .INIT(64'h4000000040008000)) 
    \dataByte[7]_i_4 
       (.I0(\subState_reg_n_0_[1] ),
        .I1(\subState_reg_n_0_[0] ),
        .I2(\subState[1]_i_2_n_0 ),
        .I3(\dataByte[7]_i_6_n_0 ),
        .I4(state[1]),
        .I5(state[0]),
        .O(dataByte0));
  LUT6 #(
    .INIT(64'hFFFDFF5FFFFFFFFF)) 
    \dataByte[7]_i_5 
       (.I0(\subState[1]_i_2_n_0 ),
        .I1(\FSM_gray_state[3]_i_14_n_0 ),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[1]),
        .I5(state[0]),
        .O(\dataByte[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \dataByte[7]_i_6 
       (.I0(state[3]),
        .I1(state[2]),
        .O(\dataByte[7]_i_6_n_0 ));
  FDRE \dataByte_reg[0] 
       (.C(clk_out2),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[0]_i_1_n_0 ),
        .Q(\dataByte_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dataByte_reg[1] 
       (.C(clk_out2),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[1]_i_1_n_0 ),
        .Q(dataByte[1]),
        .R(1'b0));
  FDRE \dataByte_reg[2] 
       (.C(clk_out2),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[2]_i_1_n_0 ),
        .Q(dataByte[2]),
        .R(1'b0));
  FDRE \dataByte_reg[3] 
       (.C(clk_out2),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[3]_i_1_n_0 ),
        .Q(dataByte[3]),
        .R(1'b0));
  FDRE \dataByte_reg[4] 
       (.C(clk_out2),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[4]_i_1_n_0 ),
        .Q(dataByte[4]),
        .R(1'b0));
  FDRE \dataByte_reg[5] 
       (.C(clk_out2),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[5]_i_1_n_0 ),
        .Q(dataByte[5]),
        .R(1'b0));
  FDRE \dataByte_reg[6] 
       (.C(clk_out2),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[6]_i_1_n_0 ),
        .Q(dataByte[6]),
        .R(1'b0));
  FDRE \dataByte_reg[7] 
       (.C(clk_out2),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[7]_i_2_n_0 ),
        .Q(dataByte[7]),
        .R(1'b0));
  FDRE ddSda_reg
       (.C(clk_out2),
        .CE(1'b1),
        .D(p_0_in),
        .Q(ddSda),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h84)) 
    \initA[0]_i_1 
       (.I0(\initA[2]_i_2_n_0 ),
        .I1(s00_axi_aresetn),
        .I2(initA_reg[0]),
        .O(s00_axi_aresetn_1));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hB400)) 
    \initA[1]_i_1 
       (.I0(\initA[2]_i_2_n_0 ),
        .I1(initA_reg[0]),
        .I2(initA_reg[1]),
        .I3(s00_axi_aresetn),
        .O(\initA_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h8CCC4000)) 
    \initA[2]_i_1 
       (.I0(\initA[2]_i_2_n_0 ),
        .I1(s00_axi_aresetn),
        .I2(initA_reg[1]),
        .I3(initA_reg[0]),
        .I4(initA_reg[2]),
        .O(s00_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBABBB)) 
    \initA[2]_i_2 
       (.I0(initA_reg_1_sn_1),
        .I1(\initA[2]_i_4_n_0 ),
        .I2(initEn),
        .I3(\state_reg[3] [2]),
        .I4(\initA_reg[1]_0 ),
        .I5(\initA_reg[1]_1 ),
        .O(\initA[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \initA[2]_i_4 
       (.I0(\state_reg[3] [2]),
        .I1(\initA[2]_i_6_n_0 ),
        .I2(\initA[2]_i_2_0 [2]),
        .I3(\initA[2]_i_2_0 [1]),
        .I4(\initA[2]_i_2_0 [0]),
        .I5(\initA[2]_i_2_1 ),
        .O(\initA[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \initA[2]_i_6 
       (.I0(done),
        .I1(error),
        .O(\initA[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \initA[3]_i_1 
       (.I0(initA_reg[2]),
        .I1(initA_reg[0]),
        .I2(initA_reg[1]),
        .I3(\initA[2]_i_2_n_0 ),
        .I4(initA_reg[3]),
        .O(\initA_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    \initA[4]_i_1 
       (.I0(initA_reg[0]),
        .I1(initA_reg[1]),
        .I2(initA_reg[3]),
        .I3(initA_reg[2]),
        .I4(\initA[2]_i_2_n_0 ),
        .I5(initA_reg[4]),
        .O(initA_reg_0_sn_1));
  LUT6 #(
    .INIT(64'hFFFFF7FF00000800)) 
    \initA[5]_i_1 
       (.I0(initA_reg[2]),
        .I1(initA_reg[3]),
        .I2(\initA_reg[5]_0 ),
        .I3(initA_reg[4]),
        .I4(\initA[2]_i_2_n_0 ),
        .I5(initA_reg[5]),
        .O(initA_reg_2_sn_1));
  LUT6 #(
    .INIT(64'hFFFFFFF700000008)) 
    \initA[6]_i_1 
       (.I0(initA_reg[5]),
        .I1(initA_reg[4]),
        .I2(\initA_reg[5]_0 ),
        .I3(initA_reg_6_sn_1),
        .I4(\initA[2]_i_2_n_0 ),
        .I5(initA_reg[6]),
        .O(initA_reg_5_sn_1));
  LUT5 #(
    .INIT(32'h75774544)) 
    initEn_i_1
       (.I0(\state_reg[3] [2]),
        .I1(initEn_i_2_n_0),
        .I2(initEn_reg),
        .I3(initEn_reg_0),
        .I4(initEn),
        .O(\state_reg[2] ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    initEn_i_2
       (.I0(\state_reg[3] [3]),
        .I1(\state_reg[3] [2]),
        .I2(error),
        .I3(done),
        .I4(s00_axi_aresetn),
        .I5(\state_reg[1]_0 ),
        .O(initEn_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAA2FFFFFFFF)) 
    int_Rst_i_1
       (.I0(int_Rst),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[3]),
        .I5(s00_axi_aresetn),
        .O(int_Rst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_Rst_reg
       (.C(clk_out2),
        .CE(1'b1),
        .D(int_Rst_i_1_n_0),
        .Q(int_Rst),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFF7F2828)) 
    rScl_i_1
       (.I0(\subState[1]_i_3_n_0 ),
        .I1(\subState_reg_n_0_[0] ),
        .I2(\subState_reg_n_0_[1] ),
        .I3(state[3]),
        .I4(rScl),
        .O(rScl_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    rScl_reg
       (.C(clk_out2),
        .CE(1'b1),
        .D(rScl_i_1_n_0),
        .Q(rScl),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rSda_i_1
       (.I0(iSda),
        .I1(rSda_i_3_n_0),
        .I2(rSda),
        .O(rSda_i_1_n_0));
  LUT6 #(
    .INIT(64'h272F242C250C250C)) 
    rSda_i_2
       (.I0(state[3]),
        .I1(\subState_reg_n_0_[0] ),
        .I2(\subState_reg_n_0_[1] ),
        .I3(rSda_i_4_n_0),
        .I4(dataByte[7]),
        .I5(\FSM_gray_state[3]_i_12_n_0 ),
        .O(iSda));
  LUT6 #(
    .INIT(64'h0400AEAAAEAAFEFF)) 
    rSda_i_3
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\subState_reg_n_0_[1] ),
        .I5(\subState_reg_n_0_[0] ),
        .O(rSda_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    rSda_i_4
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(rSda_i_4_n_0));
  FDRE #(
    .INIT(1'b1)) 
    rSda_reg
       (.C(clk_out2),
        .CE(1'b1),
        .D(rSda_i_1_n_0),
        .Q(rSda),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \sclCnt[0]_i_1 
       (.I0(sclCnt_reg[0]),
        .O(sclCnt0[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \sclCnt[1]_i_1 
       (.I0(sclCnt_reg[1]),
        .I1(sclCnt_reg[0]),
        .O(sclCnt0[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \sclCnt[2]_i_1 
       (.I0(sclCnt_reg[2]),
        .I1(sclCnt_reg[0]),
        .I2(sclCnt_reg[1]),
        .O(sclCnt0[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \sclCnt[3]_i_1 
       (.I0(sclCnt_reg[1]),
        .I1(sclCnt_reg[0]),
        .I2(sclCnt_reg[2]),
        .I3(sclCnt_reg[3]),
        .O(sclCnt0[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \sclCnt[4]_i_1 
       (.I0(sclCnt_reg[3]),
        .I1(sclCnt_reg[2]),
        .I2(sclCnt_reg[0]),
        .I3(sclCnt_reg[1]),
        .I4(sclCnt_reg[4]),
        .O(sclCnt0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \sclCnt[5]_i_1 
       (.I0(sclCnt_reg[5]),
        .I1(sclCnt_reg[4]),
        .I2(sclCnt_reg[1]),
        .I3(sclCnt_reg[0]),
        .I4(sclCnt_reg[2]),
        .I5(sclCnt_reg[3]),
        .O(sclCnt0[5]));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \sclCnt[6]_i_1 
       (.I0(\subState[1]_i_2_n_0 ),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .O(sclCnt0_0));
  LUT2 #(
    .INIT(4'hB)) 
    \sclCnt[6]_i_2 
       (.I0(dScl),
        .I1(rScl),
        .O(\sclCnt[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \sclCnt[6]_i_3 
       (.I0(\sclCnt[6]_i_4_n_0 ),
        .I1(sclCnt_reg[6]),
        .O(sclCnt0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sclCnt[6]_i_4 
       (.I0(sclCnt_reg[3]),
        .I1(sclCnt_reg[2]),
        .I2(sclCnt_reg[0]),
        .I3(sclCnt_reg[1]),
        .I4(sclCnt_reg[4]),
        .I5(sclCnt_reg[5]),
        .O(\sclCnt[6]_i_4_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \sclCnt_reg[0] 
       (.C(clk_out2),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[0]),
        .Q(sclCnt_reg[0]),
        .S(sclCnt0_0));
  FDSE #(
    .INIT(1'b0)) 
    \sclCnt_reg[1] 
       (.C(clk_out2),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[1]),
        .Q(sclCnt_reg[1]),
        .S(sclCnt0_0));
  FDSE #(
    .INIT(1'b1)) 
    \sclCnt_reg[2] 
       (.C(clk_out2),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[2]),
        .Q(sclCnt_reg[2]),
        .S(sclCnt0_0));
  FDSE #(
    .INIT(1'b1)) 
    \sclCnt_reg[3] 
       (.C(clk_out2),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[3]),
        .Q(sclCnt_reg[3]),
        .S(sclCnt0_0));
  FDSE #(
    .INIT(1'b1)) 
    \sclCnt_reg[4] 
       (.C(clk_out2),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[4]),
        .Q(sclCnt_reg[4]),
        .S(sclCnt0_0));
  FDRE #(
    .INIT(1'b1)) 
    \sclCnt_reg[5] 
       (.C(clk_out2),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[5]),
        .Q(sclCnt_reg[5]),
        .R(sclCnt0_0));
  FDRE #(
    .INIT(1'b1)) 
    \sclCnt_reg[6] 
       (.C(clk_out2),
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
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    sda_INST_0_i_1
       (.I0(rSda),
        .O(sda_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h55551011)) 
    \state[0]_i_1 
       (.I0(error),
        .I1(\state_reg[3] [2]),
        .I2(\state_reg[3] [1]),
        .I3(\state_reg[3] [0]),
        .I4(\state_reg[3] [3]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0E0000000E000E00)) 
    \state[1]_i_1 
       (.I0(\state_reg[3] [1]),
        .I1(\state_reg[3] [0]),
        .I2(error),
        .I3(\state_reg[1] ),
        .I4(\state_reg[1]_0 ),
        .I5(\state_reg[1]_1 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hF301)) 
    \state[2]_i_1 
       (.I0(\state_reg[1]_0 ),
        .I1(\state_reg[3] [2]),
        .I2(\state_reg[3] [3]),
        .I3(error),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h883F00AA003300AA)) 
    \state[3]_i_1 
       (.I0(done),
        .I1(\state_reg[3] [0]),
        .I2(initEn_reg),
        .I3(\state_reg[3] [3]),
        .I4(\state_reg[3] [2]),
        .I5(\state_reg[3] [1]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \state[3]_i_2 
       (.I0(\state_reg[3] [0]),
        .I1(\state_reg[3] [1]),
        .I2(\state_reg[3] [2]),
        .I3(\state_reg[3] [3]),
        .I4(error),
        .I5(\state_reg[3]_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h6666666666666606)) 
    \subState[0]_i_1 
       (.I0(\subState_reg_n_0_[0] ),
        .I1(\subState[1]_i_2_n_0 ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[3]),
        .O(\subState[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \subState[1]_i_1 
       (.I0(\subState_reg_n_0_[1] ),
        .I1(\subState[1]_i_2_n_0 ),
        .I2(\subState_reg_n_0_[0] ),
        .I3(\subState[1]_i_3_n_0 ),
        .O(\subState[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \subState[1]_i_2 
       (.I0(sclCnt_reg[6]),
        .I1(\sclCnt[6]_i_4_n_0 ),
        .O(\subState[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \subState[1]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .O(\subState[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \subState_reg[0] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\subState[0]_i_1_n_0 ),
        .Q(\subState_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \subState_reg[1] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\subState[1]_i_1_n_0 ),
        .Q(\subState_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "addr_counter" *) 
module skrach_design_lab4_ip_0_1_addr_counter
   (Q,
    \processCount_reg[15]_0 ,
    \processCount_reg[3]_0 ,
    \processCount_reg[7]_0 ,
    \processCount_reg[11]_0 ,
    S,
    SR,
    E,
    s00_axi_aclk);
  output [15:0]Q;
  input [14:0]\processCount_reg[15]_0 ;
  input [3:0]\processCount_reg[3]_0 ;
  input [3:0]\processCount_reg[7]_0 ;
  input [3:0]\processCount_reg[11]_0 ;
  input [3:0]S;
  input [0:0]SR;
  input [0:0]E;
  input s00_axi_aclk;

  wire [0:0]E;
  wire [15:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
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
  wire [14:0]\processCount_reg[15]_0 ;
  wire [3:0]\processCount_reg[3]_0 ;
  wire [3:0]\processCount_reg[7]_0 ;
  wire s00_axi_aclk;
  wire [3:3]\NLW_processCount0_inferred__0/i__carry__2_CO_UNCONNECTED ;

  CARRY4 \processCount0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\processCount0_inferred__0/i__carry_n_0 ,\processCount0_inferred__0/i__carry_n_1 ,\processCount0_inferred__0/i__carry_n_2 ,\processCount0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(\processCount_reg[15]_0 [3:0]),
        .O(processCount1_in[3:0]),
        .S(\processCount_reg[3]_0 ));
  CARRY4 \processCount0_inferred__0/i__carry__0 
       (.CI(\processCount0_inferred__0/i__carry_n_0 ),
        .CO({\processCount0_inferred__0/i__carry__0_n_0 ,\processCount0_inferred__0/i__carry__0_n_1 ,\processCount0_inferred__0/i__carry__0_n_2 ,\processCount0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\processCount_reg[15]_0 [7:4]),
        .O(processCount1_in[7:4]),
        .S(\processCount_reg[7]_0 ));
  CARRY4 \processCount0_inferred__0/i__carry__1 
       (.CI(\processCount0_inferred__0/i__carry__0_n_0 ),
        .CO({\processCount0_inferred__0/i__carry__1_n_0 ,\processCount0_inferred__0/i__carry__1_n_1 ,\processCount0_inferred__0/i__carry__1_n_2 ,\processCount0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(\processCount_reg[15]_0 [11:8]),
        .O(processCount1_in[11:8]),
        .S(\processCount_reg[11]_0 ));
  CARRY4 \processCount0_inferred__0/i__carry__2 
       (.CI(\processCount0_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_processCount0_inferred__0/i__carry__2_CO_UNCONNECTED [3],\processCount0_inferred__0/i__carry__2_n_1 ,\processCount0_inferred__0/i__carry__2_n_2 ,\processCount0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\processCount_reg[15]_0 [14:12]}),
        .O(processCount1_in[15:12]),
        .S(S));
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
module skrach_design_lab4_ip_0_1_audio_clk_wiz
   (clk_out1,
    clk_out2,
    resetn,
    locked,
    clk_in1);
  output clk_out1;
  output clk_out2;
  input resetn;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire clk_out2;
  wire locked;
  wire resetn;

  skrach_design_lab4_ip_0_1_audio_clk_wiz_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .clk_out2(clk_out2),
        .locked(locked),
        .resetn(resetn));
endmodule

(* ORIG_REF_NAME = "audio_clk_wiz_clk_wiz" *) 
module skrach_design_lab4_ip_0_1_audio_clk_wiz_clk_wiz
   (clk_out1,
    clk_out2,
    resetn,
    locked,
    clk_in1);
  output clk_out1;
  output clk_out2;
  input resetn;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_audio_clk_wiz;
  wire clk_out1;
  wire clk_out1_audio_clk_wiz;
  wire clk_out2;
  wire clk_out2_audio_clk_wiz;
  wire clkfbout_audio_clk_wiz;
  wire clkfbout_buf_audio_clk_wiz;
  wire locked;
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
        .LOCKED(locked),
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
module skrach_design_lab4_ip_0_1_audio_init
   (s00_axi_aresetn_0,
    scl,
    sda,
    clk_out2,
    s00_axi_aresetn);
  output s00_axi_aresetn_0;
  inout scl;
  inout sda;
  input clk_out2;
  input s00_axi_aresetn;

  wire clk_out2;
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
  wire \data_i[5]_i_3_n_0 ;
  wire \data_i[6]_i_1_n_0 ;
  wire \data_i[6]_i_2_n_0 ;
  wire \data_i[7]_i_1_n_0 ;
  wire delayEn;
  wire delayEn_i_1_n_0;
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
  wire \initA[2]_i_3_n_0 ;
  wire \initA[2]_i_5_n_0 ;
  wire \initA[2]_i_7_n_0 ;
  wire \initA[2]_i_8_n_0 ;
  wire \initA[6]_i_2_n_0 ;
  wire [6:0]initA_reg;
  wire initEn;
  wire initEn_i_3_n_0;
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
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire scl;
  wire sda;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[3]_i_10_n_0 ;
  wire \state[3]_i_11_n_0 ;
  wire \state[3]_i_12_n_0 ;
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
  wire twi_controller_n_10;
  wire twi_controller_n_11;
  wire twi_controller_n_12;
  wire twi_controller_n_2;
  wire twi_controller_n_3;
  wire twi_controller_n_4;
  wire twi_controller_n_5;
  wire twi_controller_n_6;
  wire twi_controller_n_7;
  wire twi_controller_n_8;
  wire twi_controller_n_9;
  wire [3:2]NLW_delaycnt0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_delaycnt0_carry__6_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    BCLK_int_i_1
       (.I0(s00_axi_aresetn),
        .O(s00_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h3EFEFEFE)) 
    \data_i[0]_i_1 
       (.I0(\data_i[0]_i_2_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\data_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \data_i[0]_i_2 
       (.I0(data2[0]),
        .I1(data1[0]),
        .I2(\initWord_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\data_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000020203000000)) 
    \data_i[1]_i_1 
       (.I0(data2[1]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(data1[1]),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\data_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAEAFAAAAAA)) 
    \data_i[2]_i_1 
       (.I0(\data_i[5]_i_2_n_0 ),
        .I1(data1[2]),
        .I2(\data_i[5]_i_3_n_0 ),
        .I3(data2[2]),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\data_i[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAEAFAAAAAA)) 
    \data_i[3]_i_1 
       (.I0(\data_i[5]_i_2_n_0 ),
        .I1(data1[3]),
        .I2(\data_i[5]_i_3_n_0 ),
        .I3(data2[3]),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\data_i[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8C8380800000000)) 
    \data_i[4]_i_1 
       (.I0(data2[4]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(data1[4]),
        .I4(\initWord_reg_n_0_[5] ),
        .I5(\state[1]_i_2_n_0 ),
        .O(\data_i[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAEAFAAAAAA)) 
    \data_i[5]_i_1 
       (.I0(\data_i[5]_i_2_n_0 ),
        .I1(data1[5]),
        .I2(\data_i[5]_i_3_n_0 ),
        .I3(data2[5]),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\data_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h3FFFFF80)) 
    \data_i[5]_i_2 
       (.I0(\initWord_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[3] ),
        .O(\data_i[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_i[5]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\data_i[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h800000FF80000000)) 
    \data_i[6]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(data0),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\data_i[6]_i_2_n_0 ),
        .O(\data_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \data_i[6]_i_2 
       (.I0(data1[7]),
        .I1(\initWord_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(data0),
        .I5(data2[6]),
        .O(\data_i[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0101100000001000)) 
    \data_i[7]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(data1[7]),
        .I4(\state_reg_n_0_[1] ),
        .I5(data2[7]),
        .O(\data_i[7]_i_1_n_0 ));
  FDRE \data_i_reg[0] 
       (.C(clk_out2),
        .CE(s00_axi_aresetn),
        .D(\data_i[0]_i_1_n_0 ),
        .Q(data_i[0]),
        .R(1'b0));
  FDRE \data_i_reg[1] 
       (.C(clk_out2),
        .CE(s00_axi_aresetn),
        .D(\data_i[1]_i_1_n_0 ),
        .Q(data_i[1]),
        .R(1'b0));
  FDRE \data_i_reg[2] 
       (.C(clk_out2),
        .CE(s00_axi_aresetn),
        .D(\data_i[2]_i_1_n_0 ),
        .Q(data_i[2]),
        .R(1'b0));
  FDRE \data_i_reg[3] 
       (.C(clk_out2),
        .CE(s00_axi_aresetn),
        .D(\data_i[3]_i_1_n_0 ),
        .Q(data_i[3]),
        .R(1'b0));
  FDRE \data_i_reg[4] 
       (.C(clk_out2),
        .CE(s00_axi_aresetn),
        .D(\data_i[4]_i_1_n_0 ),
        .Q(data_i[4]),
        .R(1'b0));
  FDRE \data_i_reg[5] 
       (.C(clk_out2),
        .CE(s00_axi_aresetn),
        .D(\data_i[5]_i_1_n_0 ),
        .Q(data_i[5]),
        .R(1'b0));
  FDRE \data_i_reg[6] 
       (.C(clk_out2),
        .CE(s00_axi_aresetn),
        .D(\data_i[6]_i_1_n_0 ),
        .Q(data_i[6]),
        .R(1'b0));
  FDRE \data_i_reg[7] 
       (.C(clk_out2),
        .CE(s00_axi_aresetn),
        .D(\data_i[7]_i_1_n_0 ),
        .Q(data_i[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    delayEn_i_1
       (.I0(\state[3]_i_3_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(delayEn),
        .O(delayEn_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    delayEn_reg
       (.C(clk_out2),
        .CE(1'b1),
        .D(delayEn_i_1_n_0),
        .Q(delayEn),
        .R(s00_axi_aresetn_0));
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
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
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
       (.C(clk_out2),
        .CE(1'b1),
        .D(\delaycnt[0]_i_1_n_0 ),
        .Q(delaycnt[0]),
        .R(delaycnt0));
  FDSE \delaycnt_reg[10] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__1_n_6),
        .Q(delaycnt[10]),
        .S(delaycnt0));
  FDSE \delaycnt_reg[11] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__1_n_5),
        .Q(delaycnt[11]),
        .S(delaycnt0));
  FDSE \delaycnt_reg[12] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__1_n_4),
        .Q(delaycnt[12]),
        .S(delaycnt0));
  FDRE \delaycnt_reg[13] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__2_n_7),
        .Q(delaycnt[13]),
        .R(delaycnt0));
  FDSE \delaycnt_reg[14] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__2_n_6),
        .Q(delaycnt[14]),
        .S(delaycnt0));
  FDRE \delaycnt_reg[15] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__2_n_5),
        .Q(delaycnt[15]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[16] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__2_n_4),
        .Q(delaycnt[16]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[17] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__3_n_7),
        .Q(delaycnt[17]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[18] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__3_n_6),
        .Q(delaycnt[18]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[19] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__3_n_5),
        .Q(delaycnt[19]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[1] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry_n_7),
        .Q(delaycnt[1]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[20] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__3_n_4),
        .Q(delaycnt[20]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[21] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__4_n_7),
        .Q(delaycnt[21]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[22] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__4_n_6),
        .Q(delaycnt[22]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[23] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__4_n_5),
        .Q(delaycnt[23]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[24] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__4_n_4),
        .Q(delaycnt[24]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[25] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__5_n_7),
        .Q(delaycnt[25]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[26] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__5_n_6),
        .Q(delaycnt[26]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[27] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__5_n_5),
        .Q(delaycnt[27]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[28] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__5_n_4),
        .Q(delaycnt[28]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[29] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__6_n_7),
        .Q(delaycnt[29]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[2] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry_n_6),
        .Q(delaycnt[2]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[30] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__6_n_6),
        .Q(delaycnt[30]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[31] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__6_n_5),
        .Q(delaycnt[31]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[3] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry_n_5),
        .Q(delaycnt[3]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[4] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry_n_4),
        .Q(delaycnt[4]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[5] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__0_n_7),
        .Q(delaycnt[5]),
        .R(delaycnt0));
  FDSE \delaycnt_reg[6] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__0_n_6),
        .Q(delaycnt[6]),
        .S(delaycnt0));
  FDSE \delaycnt_reg[7] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__0_n_5),
        .Q(delaycnt[7]),
        .S(delaycnt0));
  FDSE \delaycnt_reg[8] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__0_n_4),
        .Q(delaycnt[8]),
        .S(delaycnt0));
  FDRE \delaycnt_reg[9] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(delaycnt0_carry__1_n_7),
        .Q(delaycnt[9]),
        .R(delaycnt0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \initA[2]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .O(\initA[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \initA[2]_i_5 
       (.I0(\initA[2]_i_7_n_0 ),
        .I1(\state[3]_i_12_n_0 ),
        .I2(\state[3]_i_11_n_0 ),
        .I3(\state[3]_i_10_n_0 ),
        .I4(\state[3]_i_9_n_0 ),
        .I5(\initA[2]_i_8_n_0 ),
        .O(\initA[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \initA[2]_i_7 
       (.I0(delaycnt[7]),
        .I1(delaycnt[8]),
        .I2(delaycnt[28]),
        .I3(delaycnt[16]),
        .O(\initA[2]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \initA[2]_i_8 
       (.I0(delaycnt[22]),
        .I1(delaycnt[31]),
        .O(\initA[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \initA[6]_i_2 
       (.I0(initA_reg[2]),
        .I1(initA_reg[3]),
        .O(\initA[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[0] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(twi_controller_n_9),
        .Q(initA_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[1] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(twi_controller_n_10),
        .Q(initA_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[2] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(twi_controller_n_4),
        .Q(initA_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[3] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(twi_controller_n_2),
        .Q(initA_reg[3]),
        .R(s00_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[4] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(twi_controller_n_0),
        .Q(initA_reg[4]),
        .R(s00_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[5] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(twi_controller_n_1),
        .Q(initA_reg[5]),
        .R(s00_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[6] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(twi_controller_n_3),
        .Q(initA_reg[6]),
        .R(s00_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    initEn_i_3
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(s00_axi_aresetn),
        .I3(initEn),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(initEn_i_3_n_0));
  FDRE initEn_reg
       (.C(clk_out2),
        .CE(1'b1),
        .D(twi_controller_n_12),
        .Q(initEn),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \initWord[0]_i_1 
       (.I0(initA_reg[0]),
        .I1(initA_reg[1]),
        .I2(initA_reg[5]),
        .O(\initWord[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002900E40000)) 
    \initWord[10]_i_1 
       (.I0(initA_reg[2]),
        .I1(initA_reg[1]),
        .I2(initA_reg[0]),
        .I3(initA_reg[5]),
        .I4(initA_reg[4]),
        .I5(initA_reg[3]),
        .O(\initWord[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h000F0002)) 
    \initWord[11]_i_1 
       (.I0(initA_reg[3]),
        .I1(initA_reg[4]),
        .I2(initA_reg[1]),
        .I3(initA_reg[0]),
        .I4(initA_reg[5]),
        .O(\initWord[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010000)) 
    \initWord[12]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[0]),
        .I2(initA_reg[4]),
        .I3(initA_reg[5]),
        .I4(initA_reg[3]),
        .I5(initA_reg[2]),
        .O(\initWord[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCC04CC29CC44CC00)) 
    \initWord[13]_i_1 
       (.I0(initA_reg[2]),
        .I1(initA_reg[1]),
        .I2(initA_reg[0]),
        .I3(initA_reg[5]),
        .I4(initA_reg[4]),
        .I5(initA_reg[3]),
        .O(\initWord[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0112000000012200)) 
    \initWord[14]_i_1 
       (.I0(initA_reg[4]),
        .I1(initA_reg[5]),
        .I2(initA_reg[0]),
        .I3(initA_reg[1]),
        .I4(initA_reg[3]),
        .I5(initA_reg[2]),
        .O(\initWord[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003004082)) 
    \initWord[15]_i_1 
       (.I0(initA_reg[0]),
        .I1(initA_reg[3]),
        .I2(initA_reg[2]),
        .I3(initA_reg[1]),
        .I4(initA_reg[4]),
        .I5(initA_reg[5]),
        .O(\initWord[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007CC0913B)) 
    \initWord[16]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[4]),
        .I2(initA_reg[2]),
        .I3(initA_reg[3]),
        .I4(initA_reg[0]),
        .I5(initA_reg[5]),
        .O(\initWord[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00AA41FC00AAE92A)) 
    \initWord[17]_i_1 
       (.I0(initA_reg[0]),
        .I1(initA_reg[3]),
        .I2(initA_reg[2]),
        .I3(initA_reg[1]),
        .I4(initA_reg[5]),
        .I5(initA_reg[4]),
        .O(\initWord[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDCC9DC8D889C88D)) 
    \initWord[18]_i_1 
       (.I0(initA_reg[5]),
        .I1(initA_reg[1]),
        .I2(initA_reg[2]),
        .I3(initA_reg[3]),
        .I4(initA_reg[0]),
        .I5(initA_reg[4]),
        .O(\initWord[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9898B9B9B9BB9A88)) 
    \initWord[19]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[5]),
        .I2(initA_reg[4]),
        .I3(initA_reg[0]),
        .I4(initA_reg[2]),
        .I5(initA_reg[3]),
        .O(\initWord[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FC01039F)) 
    \initWord[20]_i_1 
       (.I0(initA_reg[0]),
        .I1(initA_reg[1]),
        .I2(initA_reg[2]),
        .I3(initA_reg[3]),
        .I4(initA_reg[4]),
        .I5(initA_reg[5]),
        .O(\initWord[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000009190FEEA)) 
    \initWord[21]_i_1 
       (.I0(initA_reg[3]),
        .I1(initA_reg[2]),
        .I2(initA_reg[1]),
        .I3(initA_reg[0]),
        .I4(initA_reg[4]),
        .I5(initA_reg[5]),
        .O(\initWord[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4011010040000100)) 
    \initWord[23]_i_1 
       (.I0(initA_reg[5]),
        .I1(initA_reg[4]),
        .I2(initA_reg[2]),
        .I3(initA_reg[3]),
        .I4(initA_reg[1]),
        .I5(initA_reg[0]),
        .O(\initWord[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000001000000FFFF)) 
    \initWord[30]_i_1 
       (.I0(initA_reg[4]),
        .I1(initA_reg[3]),
        .I2(initA_reg[2]),
        .I3(\initWord[30]_i_3_n_0 ),
        .I4(initA_reg[6]),
        .I5(initA_reg[5]),
        .O(\initWord[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \initWord[30]_i_2 
       (.I0(initA_reg[1]),
        .I1(initA_reg[5]),
        .O(\initWord[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \initWord[30]_i_3 
       (.I0(initA_reg[1]),
        .I1(initA_reg[0]),
        .O(\initWord[30]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \initWord[5]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[0]),
        .I2(initA_reg[5]),
        .O(\initWord[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF4EFFE60066FFFF)) 
    \initWord[8]_i_1 
       (.I0(initA_reg[3]),
        .I1(initA_reg[2]),
        .I2(initA_reg[4]),
        .I3(initA_reg[5]),
        .I4(initA_reg[0]),
        .I5(initA_reg[1]),
        .O(\initWord[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000014B2000014DA)) 
    \initWord[9]_i_1 
       (.I0(initA_reg[2]),
        .I1(initA_reg[1]),
        .I2(initA_reg[3]),
        .I3(initA_reg[4]),
        .I4(initA_reg[5]),
        .I5(initA_reg[0]),
        .O(\initWord[9]_i_1_n_0 ));
  FDRE \initWord_reg[0] 
       (.C(clk_out2),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[0]_i_1_n_0 ),
        .Q(\initWord_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \initWord_reg[10] 
       (.C(clk_out2),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[10]_i_1_n_0 ),
        .Q(data2[2]),
        .R(1'b0));
  FDRE \initWord_reg[11] 
       (.C(clk_out2),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[11]_i_1_n_0 ),
        .Q(data2[3]),
        .R(1'b0));
  FDRE \initWord_reg[12] 
       (.C(clk_out2),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[12]_i_1_n_0 ),
        .Q(data2[4]),
        .R(1'b0));
  FDRE \initWord_reg[13] 
       (.C(clk_out2),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[13]_i_1_n_0 ),
        .Q(data2[5]),
        .R(1'b0));
  FDRE \initWord_reg[14] 
       (.C(clk_out2),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[14]_i_1_n_0 ),
        .Q(data2[6]),
        .R(1'b0));
  FDRE \initWord_reg[15] 
       (.C(clk_out2),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[15]_i_1_n_0 ),
        .Q(data2[7]),
        .R(1'b0));
  FDRE \initWord_reg[16] 
       (.C(clk_out2),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[16]_i_1_n_0 ),
        .Q(data1[0]),
        .R(1'b0));
  FDRE \initWord_reg[17] 
       (.C(clk_out2),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[17]_i_1_n_0 ),
        .Q(data1[1]),
        .R(1'b0));
  FDRE \initWord_reg[18] 
       (.C(clk_out2),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[18]_i_1_n_0 ),
        .Q(data1[2]),
        .R(1'b0));
  FDRE \initWord_reg[19] 
       (.C(clk_out2),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[19]_i_1_n_0 ),
        .Q(data1[3]),
        .R(1'b0));
  FDRE \initWord_reg[20] 
       (.C(clk_out2),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[20]_i_1_n_0 ),
        .Q(data1[4]),
        .R(1'b0));
  FDRE \initWord_reg[21] 
       (.C(clk_out2),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[21]_i_1_n_0 ),
        .Q(data1[5]),
        .R(1'b0));
  FDRE \initWord_reg[23] 
       (.C(clk_out2),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[23]_i_1_n_0 ),
        .Q(data1[7]),
        .R(1'b0));
  FDRE \initWord_reg[30] 
       (.C(clk_out2),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[30]_i_2_n_0 ),
        .Q(data0),
        .R(1'b0));
  FDRE \initWord_reg[5] 
       (.C(clk_out2),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[5]_i_1_n_0 ),
        .Q(\initWord_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \initWord_reg[8] 
       (.C(clk_out2),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[8]_i_1_n_0 ),
        .Q(data2[0]),
        .R(1'b0));
  FDRE \initWord_reg[9] 
       (.C(clk_out2),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[9]_i_1_n_0 ),
        .Q(data2[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    msg_i_1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .O(msg0));
  FDRE msg_reg
       (.C(clk_out2),
        .CE(s00_axi_aresetn),
        .D(msg0),
        .Q(msg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state[1]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000100010001000)) 
    \state[1]_i_3 
       (.I0(\state[1]_i_4_n_0 ),
        .I1(initA_reg[0]),
        .I2(initA_reg[1]),
        .I3(initA_reg[5]),
        .I4(\state[3]_i_4_n_0 ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[1]_i_4 
       (.I0(initA_reg[6]),
        .I1(initA_reg[4]),
        .I2(initA_reg[3]),
        .I3(initA_reg[2]),
        .O(\state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h5F5D)) 
    \state[2]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\initWord_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\initWord_reg_n_0_[0] ),
        .O(\state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_10 
       (.I0(delaycnt[20]),
        .I1(delaycnt[18]),
        .I2(delaycnt[5]),
        .I3(delaycnt[3]),
        .O(\state[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_11 
       (.I0(delaycnt[17]),
        .I1(delaycnt[15]),
        .I2(delaycnt[13]),
        .I3(delaycnt[12]),
        .O(\state[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_12 
       (.I0(delaycnt[25]),
        .I1(delaycnt[24]),
        .I2(delaycnt[23]),
        .I3(delaycnt[21]),
        .O(\state[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[3]_i_3 
       (.I0(\state[3]_i_5_n_0 ),
        .I1(\state[3]_i_6_n_0 ),
        .I2(delaycnt[7]),
        .I3(delaycnt[8]),
        .I4(delaycnt[28]),
        .I5(delaycnt[16]),
        .O(\state[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \state[3]_i_4 
       (.I0(\state[3]_i_7_n_0 ),
        .I1(data1[0]),
        .I2(data1[1]),
        .I3(data1[2]),
        .O(\state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[3]_i_5 
       (.I0(\state[3]_i_8_n_0 ),
        .I1(delaycnt[0]),
        .I2(delaycnt[6]),
        .I3(delaycnt[27]),
        .I4(delaycnt[29]),
        .O(\state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[3]_i_6 
       (.I0(delaycnt[31]),
        .I1(delaycnt[22]),
        .I2(\state[3]_i_9_n_0 ),
        .I3(\state[3]_i_10_n_0 ),
        .I4(\state[3]_i_11_n_0 ),
        .I5(\state[3]_i_12_n_0 ),
        .O(\state[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \state[3]_i_7 
       (.I0(data1[7]),
        .I1(data1[5]),
        .I2(data1[4]),
        .I3(data1[3]),
        .O(\state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[3]_i_8 
       (.I0(delaycnt[26]),
        .I1(delaycnt[19]),
        .I2(delaycnt[14]),
        .I3(delaycnt[30]),
        .I4(delaycnt[11]),
        .I5(delaycnt[9]),
        .O(\state[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_9 
       (.I0(delaycnt[10]),
        .I1(delaycnt[2]),
        .I2(delaycnt[4]),
        .I3(delaycnt[1]),
        .O(\state[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_out2),
        .CE(twi_controller_n_11),
        .D(twi_controller_n_8),
        .Q(\state_reg_n_0_[0] ),
        .R(s00_axi_aresetn_0));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(clk_out2),
        .CE(twi_controller_n_11),
        .D(twi_controller_n_7),
        .Q(\state_reg_n_0_[1] ),
        .S(s00_axi_aresetn_0));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[2] 
       (.C(clk_out2),
        .CE(twi_controller_n_11),
        .D(twi_controller_n_6),
        .Q(\state_reg_n_0_[2] ),
        .S(s00_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_out2),
        .CE(twi_controller_n_11),
        .D(twi_controller_n_5),
        .Q(\state_reg_n_0_[3] ),
        .R(s00_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h800F)) 
    stb_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .O(stb_i_1_n_0));
  FDRE stb_reg
       (.C(clk_out2),
        .CE(s00_axi_aresetn),
        .D(stb_i_1_n_0),
        .Q(stb),
        .R(1'b0));
  skrach_design_lab4_ip_0_1_TWICtl twi_controller
       (.D({twi_controller_n_5,twi_controller_n_6,twi_controller_n_7,twi_controller_n_8}),
        .E(twi_controller_n_11),
        .Q(data_i),
        .clk_out2(clk_out2),
        .\initA[2]_i_2_0 (data1[2:0]),
        .\initA[2]_i_2_1 (\state[3]_i_7_n_0 ),
        .initA_reg(initA_reg),
        .\initA_reg[0]_0 (twi_controller_n_10),
        .\initA_reg[1]_0 (\initA[2]_i_5_n_0 ),
        .\initA_reg[1]_1 (\state[3]_i_5_n_0 ),
        .\initA_reg[2]_0 (twi_controller_n_2),
        .\initA_reg[5]_0 (\initWord[30]_i_3_n_0 ),
        .initA_reg_0_sp_1(twi_controller_n_0),
        .initA_reg_1_sp_1(\initA[2]_i_3_n_0 ),
        .initA_reg_2_sp_1(twi_controller_n_1),
        .initA_reg_5_sp_1(twi_controller_n_3),
        .initA_reg_6_sp_1(\initA[6]_i_2_n_0 ),
        .initEn(initEn),
        .initEn_reg(\state[3]_i_3_n_0 ),
        .initEn_reg_0(initEn_i_3_n_0),
        .msg(msg),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(twi_controller_n_4),
        .s00_axi_aresetn_1(twi_controller_n_9),
        .scl(scl),
        .sda(sda),
        .\state_reg[1] (\state[1]_i_2_n_0 ),
        .\state_reg[1]_0 (\state[2]_i_2_n_0 ),
        .\state_reg[1]_1 (\state[1]_i_3_n_0 ),
        .\state_reg[2] (twi_controller_n_12),
        .\state_reg[3] ({\state_reg_n_0_[3] ,\state_reg_n_0_[2] ,\state_reg_n_0_[1] ,\state_reg_n_0_[0] }),
        .\state_reg[3]_0 (\state[3]_i_4_n_0 ),
        .stb(stb));
endmodule

(* ORIG_REF_NAME = "i2s_ctl" *) 
module skrach_design_lab4_ip_0_1_i2s_ctl
   (BCLK_int_reg_0,
    LRCLK_reg_0,
    ac_lrclk_sig_prev_reg,
    s00_axi_aresetn_0,
    \ac_lrclk_count_reg[2] ,
    ac_dac_sdata,
    BCLK_int_reg_1,
    s00_axi_aclk,
    ac_lrclk_sig_prev_reg_0,
    s00_axi_aresetn,
    ac_lrclk_count,
    sw,
    minusOp,
    \Data_Out_int_reg[15]_0 );
  output BCLK_int_reg_0;
  output LRCLK_reg_0;
  output ac_lrclk_sig_prev_reg;
  output s00_axi_aresetn_0;
  output \ac_lrclk_count_reg[2] ;
  output ac_dac_sdata;
  input BCLK_int_reg_1;
  input s00_axi_aclk;
  input ac_lrclk_sig_prev_reg_0;
  input s00_axi_aresetn;
  input [2:0]ac_lrclk_count;
  input sw;
  input [14:0]minusOp;
  input [0:0]\Data_Out_int_reg[15]_0 ;

  wire BCLK_Fall_int;
  wire BCLK_int_i_2_n_0;
  wire BCLK_int_reg_0;
  wire BCLK_int_reg_1;
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
  wire \Data_Out_int[31]_i_4_n_0 ;
  wire [0:0]\Data_Out_int_reg[15]_0 ;
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
  wire ac_dac_sdata;
  wire [2:0]ac_lrclk_count;
  wire ac_lrclk_count0;
  wire \ac_lrclk_count_reg[2] ;
  wire ac_lrclk_sig_prev_reg;
  wire ac_lrclk_sig_prev_reg_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire [14:0]minusOp;
  wire [4:0]p_0_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire sw;
  wire [3:2]\NLW_Cnt_Bclk0_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_Cnt_Bclk0_inferred__0/i__carry_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
        .R(BCLK_int_reg_1));
  CARRY4 \Cnt_Bclk0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\NLW_Cnt_Bclk0_inferred__0/i__carry_CO_UNCONNECTED [3:2],Cnt_Bclk0,\Cnt_Bclk0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Cnt_Bclk0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1_n_0,i__carry_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    \Cnt_Bclk[0]_i_1 
       (.I0(Cnt_Bclk_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Cnt_Bclk[1]_i_1 
       (.I0(Cnt_Bclk_reg[0]),
        .I1(Cnt_Bclk_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \Cnt_Bclk[2]_i_1 
       (.I0(Cnt_Bclk_reg[2]),
        .I1(Cnt_Bclk_reg[1]),
        .I2(Cnt_Bclk_reg[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \Cnt_Bclk[3]_i_1 
       (.I0(Cnt_Bclk_reg[3]),
        .I1(Cnt_Bclk_reg[2]),
        .I2(Cnt_Bclk_reg[0]),
        .I3(Cnt_Bclk_reg[1]),
        .O(p_0_in[3]));
  LUT2 #(
    .INIT(4'hB)) 
    \Cnt_Bclk[4]_i_1 
       (.I0(Cnt_Bclk0),
        .I1(s00_axi_aresetn),
        .O(\Cnt_Bclk[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \Cnt_Bclk[4]_i_2 
       (.I0(Cnt_Bclk_reg[4]),
        .I1(Cnt_Bclk_reg[1]),
        .I2(Cnt_Bclk_reg[0]),
        .I3(Cnt_Bclk_reg[2]),
        .I4(Cnt_Bclk_reg[3]),
        .O(p_0_in[4]));
  FDRE \Cnt_Bclk_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(Cnt_Bclk_reg[0]),
        .R(\Cnt_Bclk[4]_i_1_n_0 ));
  FDRE \Cnt_Bclk_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(Cnt_Bclk_reg[1]),
        .R(\Cnt_Bclk[4]_i_1_n_0 ));
  FDRE \Cnt_Bclk_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(Cnt_Bclk_reg[2]),
        .R(\Cnt_Bclk[4]_i_1_n_0 ));
  FDRE \Cnt_Bclk_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(Cnt_Bclk_reg[3]),
        .R(\Cnt_Bclk[4]_i_1_n_0 ));
  FDRE \Cnt_Bclk_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(Cnt_Bclk_reg[4]),
        .R(\Cnt_Bclk[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Cnt_Lrclk[0]_i_1 
       (.I0(Cnt_Lrclk[0]),
        .O(\Cnt_Lrclk[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Cnt_Lrclk[1]_i_1 
       (.I0(Cnt_Lrclk[0]),
        .I1(Cnt_Lrclk[1]),
        .O(\Cnt_Lrclk[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \Cnt_Lrclk[2]_i_1 
       (.I0(Cnt_Lrclk[2]),
        .I1(Cnt_Lrclk[1]),
        .I2(Cnt_Lrclk[0]),
        .O(\Cnt_Lrclk[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \Cnt_Lrclk[3]_i_1 
       (.I0(Cnt_Lrclk[3]),
        .I1(Cnt_Lrclk[0]),
        .I2(Cnt_Lrclk[1]),
        .I3(Cnt_Lrclk[2]),
        .O(\Cnt_Lrclk[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Cnt_Lrclk[4]_i_1 
       (.I0(Cnt_Bclk0),
        .I1(BCLK_int_reg_0),
        .O(BCLK_Fall_int));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \Cnt_Lrclk[4]_i_2 
       (.I0(Cnt_Lrclk[4]),
        .I1(Cnt_Lrclk[2]),
        .I2(Cnt_Lrclk[1]),
        .I3(Cnt_Lrclk[0]),
        .I4(Cnt_Lrclk[3]),
        .O(\Cnt_Lrclk[4]_i_2_n_0 ));
  FDRE \Cnt_Lrclk_reg[0] 
       (.C(s00_axi_aclk),
        .CE(BCLK_Fall_int),
        .D(\Cnt_Lrclk[0]_i_1_n_0 ),
        .Q(Cnt_Lrclk[0]),
        .R(BCLK_int_reg_1));
  FDRE \Cnt_Lrclk_reg[1] 
       (.C(s00_axi_aclk),
        .CE(BCLK_Fall_int),
        .D(\Cnt_Lrclk[1]_i_1_n_0 ),
        .Q(Cnt_Lrclk[1]),
        .R(BCLK_int_reg_1));
  FDRE \Cnt_Lrclk_reg[2] 
       (.C(s00_axi_aclk),
        .CE(BCLK_Fall_int),
        .D(\Cnt_Lrclk[2]_i_1_n_0 ),
        .Q(Cnt_Lrclk[2]),
        .R(BCLK_int_reg_1));
  FDRE \Cnt_Lrclk_reg[3] 
       (.C(s00_axi_aclk),
        .CE(BCLK_Fall_int),
        .D(\Cnt_Lrclk[3]_i_1_n_0 ),
        .Q(Cnt_Lrclk[3]),
        .R(BCLK_int_reg_1));
  FDRE \Cnt_Lrclk_reg[4] 
       (.C(s00_axi_aclk),
        .CE(BCLK_Fall_int),
        .D(\Cnt_Lrclk[4]_i_2_n_0 ),
        .Q(Cnt_Lrclk[4]),
        .R(BCLK_int_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_Out_int[16]_i_1 
       (.I0(\Data_Out_int_reg_n_0_[15] ),
        .I1(s00_axi_aresetn_0),
        .I2(minusOp[0]),
        .O(\Data_Out_int[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_Out_int[17]_i_1 
       (.I0(\Data_Out_int_reg_n_0_[16] ),
        .I1(s00_axi_aresetn_0),
        .I2(minusOp[1]),
        .O(\Data_Out_int[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_Out_int[18]_i_1 
       (.I0(\Data_Out_int_reg_n_0_[17] ),
        .I1(s00_axi_aresetn_0),
        .I2(minusOp[2]),
        .O(\Data_Out_int[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_Out_int[19]_i_1 
       (.I0(\Data_Out_int_reg_n_0_[18] ),
        .I1(s00_axi_aresetn_0),
        .I2(minusOp[3]),
        .O(\Data_Out_int[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_Out_int[20]_i_1 
       (.I0(\Data_Out_int_reg_n_0_[19] ),
        .I1(s00_axi_aresetn_0),
        .I2(minusOp[4]),
        .O(\Data_Out_int[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_Out_int[21]_i_1 
       (.I0(\Data_Out_int_reg_n_0_[20] ),
        .I1(s00_axi_aresetn_0),
        .I2(minusOp[5]),
        .O(\Data_Out_int[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_Out_int[22]_i_1 
       (.I0(\Data_Out_int_reg_n_0_[21] ),
        .I1(s00_axi_aresetn_0),
        .I2(minusOp[6]),
        .O(\Data_Out_int[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_Out_int[23]_i_1 
       (.I0(\Data_Out_int_reg_n_0_[22] ),
        .I1(s00_axi_aresetn_0),
        .I2(minusOp[7]),
        .O(\Data_Out_int[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_Out_int[24]_i_1 
       (.I0(\Data_Out_int_reg_n_0_[23] ),
        .I1(s00_axi_aresetn_0),
        .I2(minusOp[8]),
        .O(\Data_Out_int[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_Out_int[25]_i_1 
       (.I0(\Data_Out_int_reg_n_0_[24] ),
        .I1(s00_axi_aresetn_0),
        .I2(minusOp[9]),
        .O(\Data_Out_int[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_Out_int[26]_i_1 
       (.I0(\Data_Out_int_reg_n_0_[25] ),
        .I1(s00_axi_aresetn_0),
        .I2(minusOp[10]),
        .O(\Data_Out_int[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_Out_int[27]_i_1 
       (.I0(\Data_Out_int_reg_n_0_[26] ),
        .I1(s00_axi_aresetn_0),
        .I2(minusOp[11]),
        .O(\Data_Out_int[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_Out_int[28]_i_1 
       (.I0(\Data_Out_int_reg_n_0_[27] ),
        .I1(s00_axi_aresetn_0),
        .I2(minusOp[12]),
        .O(\Data_Out_int[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_Out_int[29]_i_1 
       (.I0(\Data_Out_int_reg_n_0_[28] ),
        .I1(s00_axi_aresetn_0),
        .I2(minusOp[13]),
        .O(\Data_Out_int[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Data_Out_int[30]_i_1 
       (.I0(\Data_Out_int_reg_n_0_[29] ),
        .I1(s00_axi_aresetn_0),
        .I2(minusOp[14]),
        .O(\Data_Out_int[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \Data_Out_int[31]_i_1 
       (.I0(BCLK_int_reg_0),
        .I1(Cnt_Bclk0),
        .I2(s00_axi_aresetn_0),
        .O(\Data_Out_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Out_int[31]_i_2 
       (.I0(\Data_Out_int_reg_n_0_[30] ),
        .I1(s00_axi_aresetn_0),
        .O(\Data_Out_int[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA2AA)) 
    \Data_Out_int[31]_i_3 
       (.I0(s00_axi_aresetn),
        .I1(\Data_Out_int[31]_i_4_n_0 ),
        .I2(BCLK_int_reg_0),
        .I3(Cnt_Bclk0),
        .I4(Cnt_Lrclk[4]),
        .I5(Cnt_Lrclk[3]),
        .O(s00_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \Data_Out_int[31]_i_4 
       (.I0(Cnt_Lrclk[2]),
        .I1(Cnt_Lrclk[1]),
        .I2(Cnt_Lrclk[0]),
        .O(\Data_Out_int[31]_i_4_n_0 ));
  FDRE \Data_Out_int_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int_reg[15]_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    LRCLK_i_1
       (.I0(LRCLK_i_2_n_0),
        .I1(BCLK_int_reg_0),
        .I2(Cnt_Bclk0),
        .I3(Cnt_Lrclk[4]),
        .I4(LRCLK_reg_0),
        .O(LRCLK_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    LRCLK_i_2
       (.I0(Cnt_Lrclk[3]),
        .I1(Cnt_Lrclk[0]),
        .I2(Cnt_Lrclk[1]),
        .I3(Cnt_Lrclk[2]),
        .O(LRCLK_i_2_n_0));
  FDRE LRCLK_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(LRCLK_i_1_n_0),
        .Q(LRCLK_reg_0),
        .R(BCLK_int_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    ac_lrclk_sig_prev_i_1
       (.I0(ac_lrclk_sig_prev_reg_0),
        .I1(s00_axi_aresetn),
        .I2(LRCLK_reg_0),
        .O(ac_lrclk_sig_prev_reg));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_1
       (.I0(Cnt_Bclk_reg[3]),
        .I1(Cnt_Bclk_reg[4]),
        .O(i__carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    i__carry_i_2
       (.I0(Cnt_Bclk_reg[2]),
        .I1(Cnt_Bclk_reg[1]),
        .I2(Cnt_Bclk_reg[0]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFF00FF80000000)) 
    ready_sig_i_1
       (.I0(ac_lrclk_count[2]),
        .I1(ac_lrclk_count[1]),
        .I2(ac_lrclk_count[0]),
        .I3(s00_axi_aresetn),
        .I4(ac_lrclk_count0),
        .I5(sw),
        .O(\ac_lrclk_count_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ready_sig_i_2
       (.I0(LRCLK_reg_0),
        .I1(ac_lrclk_sig_prev_reg_0),
        .O(ac_lrclk_count0));
endmodule

(* ORIG_REF_NAME = "lab4_controlunit" *) 
module skrach_design_lab4_ip_0_1_lab4_controlunit
   (E,
    SR,
    D,
    S,
    \count_ctrl_reg[0]_0 ,
    \count_ctrl_reg[0]_1 ,
    \count_ctrl_reg[0]_2 ,
    s00_axi_aresetn,
    Q,
    axi_araddr,
    \axi_rdata_reg[5] ,
    \processCount_reg[15] ,
    \processCount_reg[15]_0 ,
    sw,
    RST,
    s00_axi_aclk);
  output [0:0]E;
  output [0:0]SR;
  output [1:0]D;
  output [3:0]S;
  output [3:0]\count_ctrl_reg[0]_0 ;
  output [3:0]\count_ctrl_reg[0]_1 ;
  output [3:0]\count_ctrl_reg[0]_2 ;
  input s00_axi_aresetn;
  input [1:0]Q;
  input [1:0]axi_araddr;
  input [1:0]\axi_rdata_reg[5] ;
  input [15:0]\processCount_reg[15] ;
  input [15:0]\processCount_reg[15]_0 ;
  input sw;
  input RST;
  input s00_axi_aclk;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire RST;
  wire [3:0]S;
  wire [0:0]SR;
  wire [1:0]axi_araddr;
  wire [1:0]\axi_rdata_reg[5] ;
  wire \count_ctrl[0]_i_1_n_0 ;
  wire \count_ctrl[1]_i_1_n_0 ;
  wire [3:0]\count_ctrl_reg[0]_0 ;
  wire [3:0]\count_ctrl_reg[0]_1 ;
  wire [3:0]\count_ctrl_reg[0]_2 ;
  wire [1:0]cw;
  wire [15:0]\processCount_reg[15] ;
  wire [15:0]\processCount_reg[15]_0 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire sw;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFAF8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(sw),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF02)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(sw),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "reset:001,read_val:010,wait_ready:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(RST));
  (* FSM_ENCODED_STATES = "reset:001,read_val:010,wait_ready:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(RST));
  (* FSM_ENCODED_STATES = "reset:001,read_val:010,wait_ready:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(RST));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[4]_i_1 
       (.I0(Q[0]),
        .I1(cw[0]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(\axi_rdata_reg[5] [0]),
        .I5(\processCount_reg[15] [4]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[5]_i_1 
       (.I0(Q[1]),
        .I1(cw[1]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(\axi_rdata_reg[5] [1]),
        .I5(\processCount_reg[15] [5]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFF57AA00)) 
    \count_ctrl[0]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(cw[0]),
        .O(\count_ctrl[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF7AAA0)) 
    \count_ctrl[1]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
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
  LUT4 #(
    .INIT(16'hBF40)) 
    i__carry__0_i_1
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(\processCount_reg[15]_0 [7]),
        .I3(\processCount_reg[15] [7]),
        .O(\count_ctrl_reg[0]_1 [3]));
  LUT4 #(
    .INIT(16'hBF40)) 
    i__carry__0_i_2
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(\processCount_reg[15]_0 [6]),
        .I3(\processCount_reg[15] [6]),
        .O(\count_ctrl_reg[0]_1 [2]));
  LUT4 #(
    .INIT(16'hBF40)) 
    i__carry__0_i_3
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(\processCount_reg[15]_0 [5]),
        .I3(\processCount_reg[15] [5]),
        .O(\count_ctrl_reg[0]_1 [1]));
  LUT4 #(
    .INIT(16'hBF40)) 
    i__carry__0_i_4
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(\processCount_reg[15]_0 [4]),
        .I3(\processCount_reg[15] [4]),
        .O(\count_ctrl_reg[0]_1 [0]));
  LUT4 #(
    .INIT(16'hBF40)) 
    i__carry__1_i_1
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(\processCount_reg[15]_0 [11]),
        .I3(\processCount_reg[15] [11]),
        .O(\count_ctrl_reg[0]_2 [3]));
  LUT4 #(
    .INIT(16'hBF40)) 
    i__carry__1_i_2
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(\processCount_reg[15]_0 [10]),
        .I3(\processCount_reg[15] [10]),
        .O(\count_ctrl_reg[0]_2 [2]));
  LUT4 #(
    .INIT(16'hBF40)) 
    i__carry__1_i_3
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(\processCount_reg[15]_0 [9]),
        .I3(\processCount_reg[15] [9]),
        .O(\count_ctrl_reg[0]_2 [1]));
  LUT4 #(
    .INIT(16'hBF40)) 
    i__carry__1_i_4
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(\processCount_reg[15]_0 [8]),
        .I3(\processCount_reg[15] [8]),
        .O(\count_ctrl_reg[0]_2 [0]));
  LUT4 #(
    .INIT(16'h9AAA)) 
    i__carry__2_i_1
       (.I0(\processCount_reg[15] [15]),
        .I1(cw[0]),
        .I2(cw[1]),
        .I3(\processCount_reg[15]_0 [15]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'hBF40)) 
    i__carry__2_i_2
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(\processCount_reg[15]_0 [14]),
        .I3(\processCount_reg[15] [14]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hBF40)) 
    i__carry__2_i_3
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(\processCount_reg[15]_0 [13]),
        .I3(\processCount_reg[15] [13]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hBF40)) 
    i__carry__2_i_4
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(\processCount_reg[15]_0 [12]),
        .I3(\processCount_reg[15] [12]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'hBF40)) 
    i__carry_i_1__0
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(\processCount_reg[15]_0 [3]),
        .I3(\processCount_reg[15] [3]),
        .O(\count_ctrl_reg[0]_0 [3]));
  LUT4 #(
    .INIT(16'hBF40)) 
    i__carry_i_2__0
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(\processCount_reg[15]_0 [2]),
        .I3(\processCount_reg[15] [2]),
        .O(\count_ctrl_reg[0]_0 [2]));
  LUT4 #(
    .INIT(16'hBF40)) 
    i__carry_i_3
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(\processCount_reg[15]_0 [1]),
        .I3(\processCount_reg[15] [1]),
        .O(\count_ctrl_reg[0]_0 [1]));
  LUT4 #(
    .INIT(16'hBF40)) 
    i__carry_i_4
       (.I0(cw[0]),
        .I1(cw[1]),
        .I2(\processCount_reg[15]_0 [0]),
        .I3(\processCount_reg[15] [0]),
        .O(\count_ctrl_reg[0]_0 [0]));
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
module skrach_design_lab4_ip_0_1_lab4_datapath
   (ac_mclk,
    RST,
    Q,
    BCLK_int_reg,
    LRCLK_reg,
    sw,
    D,
    ac_dac_sdata,
    scl,
    sda,
    s00_axi_aresetn,
    s00_axi_aclk,
    \processCount_reg[15] ,
    \processCount_reg[3] ,
    \processCount_reg[7] ,
    \processCount_reg[11] ,
    S,
    \Data_Out_int_reg[15] ,
    \axi_rdata_reg[0] ,
    axi_araddr,
    SR,
    E);
  output ac_mclk;
  output RST;
  output [15:0]Q;
  output BCLK_int_reg;
  output LRCLK_reg;
  output sw;
  output [0:0]D;
  output ac_dac_sdata;
  inout scl;
  inout sda;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [14:0]\processCount_reg[15] ;
  input [3:0]\processCount_reg[3] ;
  input [3:0]\processCount_reg[7] ;
  input [3:0]\processCount_reg[11] ;
  input [3:0]S;
  input [0:0]\Data_Out_int_reg[15] ;
  input [0:0]\axi_rdata_reg[0] ;
  input [1:0]axi_araddr;
  input [0:0]SR;
  input [0:0]E;

  wire BCLK_int_reg;
  wire [0:0]D;
  wire [14:0]DO;
  wire [0:0]\Data_Out_int_reg[15] ;
  wire [0:0]E;
  wire LRCLK_reg;
  wire [15:0]Q;
  wire RST;
  wire [3:0]S;
  wire [0:0]SR;
  wire ac_dac_sdata;
  wire ac_mclk;
  wire audio_inst_n_5;
  wire [1:0]axi_araddr;
  wire [0:0]\axi_rdata_reg[0] ;
  wire bram_inst_sine_n_15;
  wire bram_inst_sine_n_16;
  wire [15:1]minusOp;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire [3:0]\processCount_reg[11] ;
  wire [14:0]\processCount_reg[15] ;
  wire [3:0]\processCount_reg[3] ;
  wire [3:0]\processCount_reg[7] ;
  wire [15:0]readChord;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire scl;
  wire sda;
  wire [14:0]signalOut;
  wire sw;
  wire [3:2]NLW_minusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__2_O_UNCONNECTED;

  skrach_design_lab4_ip_0_1_Audio_Codec_Wrapper audio_inst
       (.BCLK_int_reg(BCLK_int_reg),
        .D(D),
        .\Data_Out_int_reg[15] (bram_inst_sine_n_16),
        .LRCLK_reg(LRCLK_reg),
        .ac_dac_sdata(ac_dac_sdata),
        .ac_mclk(ac_mclk),
        .axi_araddr(axi_araddr),
        .\axi_rdata_reg[0] (\axi_rdata_reg[0] ),
        .\axi_rdata_reg[0]_0 (\Data_Out_int_reg[15] ),
        .\axi_rdata_reg[0]_1 (\processCount_reg[15] [0]),
        .minusOp(minusOp),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(RST),
        .s00_axi_aresetn_1(audio_inst_n_5),
        .scl(scl),
        .sda(sda),
        .sw(sw));
  skrach_design_lab4_ip_0_1_unimacro_BRAM_SDP_MACRO__parameterized0 bram_inst_chord
       (.DOADO({readChord[15],readChord[0]}),
        .Q(Q[15:6]),
        .minusOp_carry__2(\Data_Out_int_reg[15] ),
        .minusOp_carry__2_0(DO),
        .s00_axi_aclk(s00_axi_aclk),
        .\sdp_bl.ramb18_dp_bl.ram18_bl_0 (RST),
        .signalOut(signalOut));
  skrach_design_lab4_ip_0_1_unimacro_BRAM_SDP_MACRO bram_inst_sine
       (.DOADO({readChord[15],readChord[0]}),
        .\Data_Out_int_reg[15] (\Data_Out_int_reg[15] ),
        .\Data_Out_int_reg[15]_0 (audio_inst_n_5),
        .Q(Q[15:6]),
        .S(bram_inst_sine_n_15),
        .s00_axi_aclk(s00_axi_aclk),
        .\sdp_bl.ramb18_dp_bl.ram18_bl_0 (DO),
        .\sdp_bl.ramb18_dp_bl.ram18_bl_1 (bram_inst_sine_n_16),
        .\sdp_bl.ramb18_dp_bl.ram18_bl_2 (RST));
  skrach_design_lab4_ip_0_1_addr_counter counter_inst
       (.E(E),
        .Q(Q),
        .S(S),
        .SR(SR),
        .\processCount_reg[11]_0 (\processCount_reg[11] ),
        .\processCount_reg[15]_0 (\processCount_reg[15] ),
        .\processCount_reg[3]_0 (\processCount_reg[3] ),
        .\processCount_reg[7]_0 (\processCount_reg[7] ),
        .s00_axi_aclk(s00_axi_aclk));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(signalOut[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(minusOp[4:1]),
        .S(signalOut[4:1]));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(minusOp[8:5]),
        .S(signalOut[8:5]));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(minusOp[12:9]),
        .S(signalOut[12:9]));
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({NLW_minusOp_carry__2_CO_UNCONNECTED[3:2],minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_minusOp_carry__2_O_UNCONNECTED[3],minusOp[15:13]}),
        .S({1'b0,bram_inst_sine_n_15,signalOut[14:13]}));
endmodule

(* ORIG_REF_NAME = "lab4_ip_v1_0" *) 
module skrach_design_lab4_ip_0_1_lab4_ip_v1_0
   (ac_mclk,
    S_AXI_AWREADY,
    ac_dac_sdata,
    LRCLK_reg,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    BCLK_int_reg,
    s00_axi_rvalid,
    s00_axi_bvalid,
    scl,
    sda,
    s00_axi_aresetn,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output ac_mclk;
  output S_AXI_AWREADY;
  output ac_dac_sdata;
  output LRCLK_reg;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output BCLK_int_reg;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  inout scl;
  inout sda;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire BCLK_int_reg;
  wire LRCLK_reg;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire ac_dac_sdata;
  wire ac_mclk;
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

  skrach_design_lab4_ip_0_1_lab4_ip_v1_0_S00_AXI lab4_ip_v1_0_S00_AXI_inst
       (.BCLK_int_reg(BCLK_int_reg),
        .LRCLK_reg(LRCLK_reg),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .ac_dac_sdata(ac_dac_sdata),
        .ac_mclk(ac_mclk),
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
        .sda(sda));
endmodule

(* ORIG_REF_NAME = "lab4_ip_v1_0_S00_AXI" *) 
module skrach_design_lab4_ip_0_1_lab4_ip_v1_0_S00_AXI
   (ac_mclk,
    S_AXI_AWREADY,
    ac_dac_sdata,
    LRCLK_reg,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    BCLK_int_reg,
    s00_axi_rvalid,
    s00_axi_bvalid,
    scl,
    sda,
    s00_axi_aresetn,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output ac_mclk;
  output S_AXI_AWREADY;
  output ac_dac_sdata;
  output LRCLK_reg;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output BCLK_int_reg;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  inout scl;
  inout sda;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire BCLK_int_reg;
  wire LRCLK_reg;
  wire RST;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire ac_dac_sdata;
  wire ac_mclk;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [15:6]count;
  wire cu_inst_n_0;
  wire cu_inst_n_1;
  wire cu_inst_n_10;
  wire cu_inst_n_11;
  wire cu_inst_n_12;
  wire cu_inst_n_13;
  wire cu_inst_n_14;
  wire cu_inst_n_15;
  wire cu_inst_n_16;
  wire cu_inst_n_17;
  wire cu_inst_n_18;
  wire cu_inst_n_19;
  wire cu_inst_n_4;
  wire cu_inst_n_5;
  wire cu_inst_n_6;
  wire cu_inst_n_7;
  wire cu_inst_n_8;
  wire cu_inst_n_9;
  wire [5:0]processCount;
  wire [31:0]reg_data_out;
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
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;
  wire sw;

  LUT6 #(
    .INIT(64'hBFFFBF00BF00BF00)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
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
        .S(RST));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(RST));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(RST));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(RST));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(RST));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(RST));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(RST));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(RST));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg0[10]),
        .I1(slv_reg1[10]),
        .I2(slv_reg2[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[10]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg0[11]),
        .I1(slv_reg1[11]),
        .I2(slv_reg2[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg0[12]),
        .I1(slv_reg1[12]),
        .I2(slv_reg2[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[12]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg0[13]),
        .I1(slv_reg1[13]),
        .I2(slv_reg2[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg0[14]),
        .I1(slv_reg1[14]),
        .I2(slv_reg2[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[14]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg0[15]),
        .I1(slv_reg1[15]),
        .I2(slv_reg2[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[15]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg0[16]),
        .I1(slv_reg1[16]),
        .I2(slv_reg2[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[16]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg0[17]),
        .I1(slv_reg1[17]),
        .I2(slv_reg2[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[17]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg0[18]),
        .I1(slv_reg1[18]),
        .I2(slv_reg2[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg0[19]),
        .I1(slv_reg1[19]),
        .I2(slv_reg2[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg0[1]),
        .I1(slv_reg1[1]),
        .I2(slv_reg2[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[1]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg0[20]),
        .I1(slv_reg1[20]),
        .I2(slv_reg2[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg0[21]),
        .I1(slv_reg1[21]),
        .I2(slv_reg2[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg0[22]),
        .I1(slv_reg1[22]),
        .I2(slv_reg2[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg0[23]),
        .I1(slv_reg1[23]),
        .I2(slv_reg2[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg0[24]),
        .I1(slv_reg1[24]),
        .I2(slv_reg2[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg0[25]),
        .I1(slv_reg1[25]),
        .I2(slv_reg2[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg0[26]),
        .I1(slv_reg1[26]),
        .I2(slv_reg2[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg0[27]),
        .I1(slv_reg1[27]),
        .I2(slv_reg2[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg0[28]),
        .I1(slv_reg1[28]),
        .I2(slv_reg2[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg0[29]),
        .I1(slv_reg1[29]),
        .I2(slv_reg2[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg0[2]),
        .I1(slv_reg1[2]),
        .I2(slv_reg2[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg0[30]),
        .I1(slv_reg1[30]),
        .I2(slv_reg2[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg0[31]),
        .I1(slv_reg1[31]),
        .I2(slv_reg2[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg0[3]),
        .I1(slv_reg1[3]),
        .I2(slv_reg2[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[3]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg0[6]),
        .I1(slv_reg1[6]),
        .I2(slv_reg2[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[6]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg0[7]),
        .I1(slv_reg1[7]),
        .I2(slv_reg2[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[7]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg0[8]),
        .I1(slv_reg1[8]),
        .I2(slv_reg2[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg0[9]),
        .I1(slv_reg1[9]),
        .I2(slv_reg2[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(RST));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(RST));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(RST));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(RST));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(RST));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(RST));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(RST));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(RST));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(RST));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(RST));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(RST));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(RST));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(RST));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(RST));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(RST));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(RST));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(RST));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(RST));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(RST));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(RST));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(RST));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(RST));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(RST));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(RST));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(RST));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(RST));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(RST));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(RST));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(RST));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(RST));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(RST));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(RST));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(RST));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(RST));
  skrach_design_lab4_ip_0_1_lab4_controlunit cu_inst
       (.D(reg_data_out[5:4]),
        .E(cu_inst_n_0),
        .Q(slv_reg2[5:4]),
        .RST(RST),
        .S({cu_inst_n_4,cu_inst_n_5,cu_inst_n_6,cu_inst_n_7}),
        .SR(cu_inst_n_1),
        .axi_araddr(axi_araddr),
        .\axi_rdata_reg[5] (slv_reg0[5:4]),
        .\count_ctrl_reg[0]_0 ({cu_inst_n_8,cu_inst_n_9,cu_inst_n_10,cu_inst_n_11}),
        .\count_ctrl_reg[0]_1 ({cu_inst_n_12,cu_inst_n_13,cu_inst_n_14,cu_inst_n_15}),
        .\count_ctrl_reg[0]_2 ({cu_inst_n_16,cu_inst_n_17,cu_inst_n_18,cu_inst_n_19}),
        .\processCount_reg[15] (slv_reg1[15:0]),
        .\processCount_reg[15]_0 ({count,processCount}),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .sw(sw));
  skrach_design_lab4_ip_0_1_lab4_datapath dp_inst
       (.BCLK_int_reg(BCLK_int_reg),
        .D(reg_data_out[0]),
        .\Data_Out_int_reg[15] (slv_reg0[0]),
        .E(cu_inst_n_0),
        .LRCLK_reg(LRCLK_reg),
        .Q({count,processCount}),
        .RST(RST),
        .S({cu_inst_n_4,cu_inst_n_5,cu_inst_n_6,cu_inst_n_7}),
        .SR(cu_inst_n_1),
        .ac_dac_sdata(ac_dac_sdata),
        .ac_mclk(ac_mclk),
        .axi_araddr(axi_araddr),
        .\axi_rdata_reg[0] (slv_reg2[0]),
        .\processCount_reg[11] ({cu_inst_n_16,cu_inst_n_17,cu_inst_n_18,cu_inst_n_19}),
        .\processCount_reg[15] (slv_reg1[14:0]),
        .\processCount_reg[3] ({cu_inst_n_8,cu_inst_n_9,cu_inst_n_10,cu_inst_n_11}),
        .\processCount_reg[7] ({cu_inst_n_12,cu_inst_n_13,cu_inst_n_14,cu_inst_n_15}),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .scl(scl),
        .sda(sda),
        .sw(sw));
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
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(RST));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(RST));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(RST));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(RST));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(RST));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(RST));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(RST));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(RST));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(RST));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(RST));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(RST));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(RST));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(RST));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(RST));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(RST));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(RST));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(RST));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(RST));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(RST));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(RST));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(RST));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(RST));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(RST));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(RST));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(RST));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(RST));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(RST));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(RST));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(RST));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(RST));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(RST));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(RST));
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
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg1[31]_i_1_n_0 ));
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
        .Q(slv_reg1[0]),
        .R(RST));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(RST));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(RST));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(RST));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(RST));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(RST));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(RST));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(RST));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(RST));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(RST));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(RST));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(RST));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(RST));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(RST));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(RST));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(RST));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(RST));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(RST));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(RST));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(RST));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(RST));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(RST));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(RST));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(RST));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(RST));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(RST));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(RST));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(RST));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(RST));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(RST));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(RST));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(RST));
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
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[31]_i_1_n_0 ));
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
        .Q(slv_reg2[0]),
        .R(RST));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(RST));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(RST));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(RST));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(RST));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(RST));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(RST));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(RST));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(RST));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(RST));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(RST));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(RST));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(RST));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(RST));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(RST));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(RST));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(RST));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(RST));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(RST));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(RST));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(RST));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(RST));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(RST));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(RST));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(RST));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(RST));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(RST));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(RST));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(RST));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(RST));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(RST));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(RST));
endmodule

(* ORIG_REF_NAME = "unimacro_BRAM_SDP_MACRO" *) 
module skrach_design_lab4_ip_0_1_unimacro_BRAM_SDP_MACRO
   (\sdp_bl.ramb18_dp_bl.ram18_bl_0 ,
    S,
    \sdp_bl.ramb18_dp_bl.ram18_bl_1 ,
    s00_axi_aclk,
    \sdp_bl.ramb18_dp_bl.ram18_bl_2 ,
    Q,
    \Data_Out_int_reg[15] ,
    DOADO,
    \Data_Out_int_reg[15]_0 );
  output [14:0]\sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  output [0:0]S;
  output [0:0]\sdp_bl.ramb18_dp_bl.ram18_bl_1 ;
  input s00_axi_aclk;
  input \sdp_bl.ramb18_dp_bl.ram18_bl_2 ;
  input [9:0]Q;
  input [0:0]\Data_Out_int_reg[15] ;
  input [1:0]DOADO;
  input \Data_Out_int_reg[15]_0 ;

  wire [15:15]DO;
  wire [1:0]DOADO;
  wire [0:0]\Data_Out_int_reg[15] ;
  wire \Data_Out_int_reg[15]_0 ;
  wire [9:0]Q;
  wire [0:0]S;
  wire s00_axi_aclk;
  wire [14:0]\sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  wire [0:0]\sdp_bl.ramb18_dp_bl.ram18_bl_1 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_2 ;
  wire [15:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h001D)) 
    \Data_Out_int[15]_i_1 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [0]),
        .I1(\Data_Out_int_reg[15] ),
        .I2(DOADO[0]),
        .I3(\Data_Out_int_reg[15]_0 ),
        .O(\sdp_bl.ramb18_dp_bl.ram18_bl_1 ));
  LUT3 #(
    .INIT(8'h1D)) 
    minusOp_carry__2_i_1
       (.I0(DO),
        .I1(\Data_Out_int_reg[15] ),
        .I2(DOADO[1]),
        .O(S));
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
        .DOADO({DO,\sdp_bl.ramb18_dp_bl.ram18_bl_0 }),
        .DOBDO(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(\sdp_bl.ramb18_dp_bl.ram18_bl_2 ),
        .RSTRAMB(\sdp_bl.ramb18_dp_bl.ram18_bl_2 ),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b1,1'b1,1'b1,1'b1}));
endmodule

(* ORIG_REF_NAME = "unimacro_BRAM_SDP_MACRO" *) 
module skrach_design_lab4_ip_0_1_unimacro_BRAM_SDP_MACRO__parameterized0
   (DOADO,
    signalOut,
    s00_axi_aclk,
    \sdp_bl.ramb18_dp_bl.ram18_bl_0 ,
    Q,
    minusOp_carry__2,
    minusOp_carry__2_0);
  output [1:0]DOADO;
  output [14:0]signalOut;
  input s00_axi_aclk;
  input \sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  input [9:0]Q;
  input [0:0]minusOp_carry__2;
  input [14:0]minusOp_carry__2_0;

  wire [1:0]DOADO;
  wire [9:0]Q;
  wire [0:0]minusOp_carry__2;
  wire [14:0]minusOp_carry__2_0;
  wire [14:1]readChord;
  wire s00_axi_aclk;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  wire [14:0]signalOut;
  wire [15:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry__0_i_1
       (.I0(readChord[8]),
        .I1(minusOp_carry__2),
        .I2(minusOp_carry__2_0[8]),
        .O(signalOut[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry__0_i_2
       (.I0(readChord[7]),
        .I1(minusOp_carry__2),
        .I2(minusOp_carry__2_0[7]),
        .O(signalOut[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry__0_i_3
       (.I0(readChord[6]),
        .I1(minusOp_carry__2),
        .I2(minusOp_carry__2_0[6]),
        .O(signalOut[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry__0_i_4
       (.I0(readChord[5]),
        .I1(minusOp_carry__2),
        .I2(minusOp_carry__2_0[5]),
        .O(signalOut[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry__1_i_1
       (.I0(readChord[12]),
        .I1(minusOp_carry__2),
        .I2(minusOp_carry__2_0[12]),
        .O(signalOut[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry__1_i_2
       (.I0(readChord[11]),
        .I1(minusOp_carry__2),
        .I2(minusOp_carry__2_0[11]),
        .O(signalOut[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry__1_i_3
       (.I0(readChord[10]),
        .I1(minusOp_carry__2),
        .I2(minusOp_carry__2_0[10]),
        .O(signalOut[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry__1_i_4
       (.I0(readChord[9]),
        .I1(minusOp_carry__2),
        .I2(minusOp_carry__2_0[9]),
        .O(signalOut[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry__2_i_2
       (.I0(readChord[14]),
        .I1(minusOp_carry__2),
        .I2(minusOp_carry__2_0[14]),
        .O(signalOut[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry__2_i_3
       (.I0(readChord[13]),
        .I1(minusOp_carry__2),
        .I2(minusOp_carry__2_0[13]),
        .O(signalOut[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry_i_1
       (.I0(DOADO[0]),
        .I1(minusOp_carry__2),
        .I2(minusOp_carry__2_0[0]),
        .O(signalOut[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry_i_2
       (.I0(readChord[4]),
        .I1(minusOp_carry__2),
        .I2(minusOp_carry__2_0[4]),
        .O(signalOut[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry_i_3
       (.I0(readChord[3]),
        .I1(minusOp_carry__2),
        .I2(minusOp_carry__2_0[3]),
        .O(signalOut[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry_i_4
       (.I0(readChord[2]),
        .I1(minusOp_carry__2),
        .I2(minusOp_carry__2_0[2]),
        .O(signalOut[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    minusOp_carry_i_5
       (.I0(readChord[1]),
        .I1(minusOp_carry__2),
        .I2(minusOp_carry__2_0[1]),
        .O(signalOut[1]));
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
        .DOADO({DOADO[1],readChord,DOADO[0]}),
        .DOBDO(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(\sdp_bl.ramb18_dp_bl.ram18_bl_0 ),
        .RSTRAMB(\sdp_bl.ramb18_dp_bl.ram18_bl_0 ),
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
