// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Apr 14 22:24:09 2020
// Host        : QuantumNet-L4 running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim
//               /home/docquantum/homework/ce446_solovey/final/code/Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_microblaze_0_axi_intc_0/skrach_design_microblaze_0_axi_intc_0_sim_netlist.v
// Design      : skrach_design_microblaze_0_axi_intc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "skrach_design_microblaze_0_axi_intc_0,axi_intc,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_intc,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module skrach_design_microblaze_0_axi_intc_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    intr,
    processor_clk,
    processor_rst,
    irq,
    processor_ack,
    interrupt_address);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_resetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [8:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [8:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 interrupt_input INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME interrupt_input, SENSITIVITY NULL:EDGE_RISING:EDGE_RISING, PortWidth 7" *) input [6:0]intr;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 proc_clock CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME proc_clock, ASSOCIATED_BUSIF interrupt, ASSOCIATED_RESET processor_rst, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input processor_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 proc_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME proc_reset, POLARITY ACTIVE_HIGH, TYPE PROCESSOR, INSERT_VIP 0" *) input processor_rst;
  (* x_interface_info = "xilinx.com:interface:mbinterrupt:1.0 interrupt INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, LOW_LATENCY 1" *) output irq;
  (* x_interface_info = "xilinx.com:interface:mbinterrupt:1.0 interrupt ACK" *) input [1:0]processor_ack;
  (* x_interface_info = "xilinx.com:interface:mbinterrupt:1.0 interrupt ADDRESS" *) output [31:0]interrupt_address;

  wire [31:0]interrupt_address;
  wire [6:0]intr;
  wire irq;
  wire [1:0]processor_ack;
  wire processor_clk;
  wire processor_rst;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [1:0]NLW_U0_processor_ack_out_UNCONNECTED;

  (* C_ADDR_WIDTH = "32" *) 
  (* C_ASYNC_INTR = "-4" *) 
  (* C_CASCADE_MASTER = "0" *) 
  (* C_DISABLE_SYNCHRONIZERS = "1" *) 
  (* C_ENABLE_ASYNC = "0" *) 
  (* C_EN_CASCADE_MODE = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CIE = "1" *) 
  (* C_HAS_FAST = "1" *) 
  (* C_HAS_ILR = "0" *) 
  (* C_HAS_IPR = "1" *) 
  (* C_HAS_IVR = "1" *) 
  (* C_HAS_SIE = "1" *) 
  (* C_INSTANCE = "skrach_design_microblaze_0_axi_intc_0" *) 
  (* C_IRQ_ACTIVE = "1'b1" *) 
  (* C_IRQ_IS_LEVEL = "1" *) 
  (* C_IVAR_RESET_VALUE = "64'b0000000000000000000000000000000000000000000000000000000000010000" *) 
  (* C_KIND_OF_EDGE = "-1" *) 
  (* C_KIND_OF_INTR = "-1" *) 
  (* C_KIND_OF_LVL = "-1" *) 
  (* C_MB_CLK_NOT_CONNECTED = "1" *) 
  (* C_NUM_INTR_INPUTS = "7" *) 
  (* C_NUM_SW_INTR = "0" *) 
  (* C_NUM_SYNC_FF = "2" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* hdl = "VHDL" *) 
  (* imp_netlist = "TRUE" *) 
  (* ip_group = "LOGICORE" *) 
  (* iptype = "PERIPHERAL" *) 
  (* run_ngcbuild = "TRUE" *) 
  (* style = "HDL" *) 
  skrach_design_microblaze_0_axi_intc_0_axi_intc U0
       (.interrupt_address(interrupt_address),
        .interrupt_address_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .intr(intr),
        .irq(irq),
        .irq_in(1'b0),
        .processor_ack(processor_ack),
        .processor_ack_out(NLW_U0_processor_ack_out_UNCONNECTED[1:0]),
        .processor_clk(processor_clk),
        .processor_rst(processor_rst),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module skrach_design_microblaze_0_axi_intc_0_address_decoder
   (s_axi_aresetn_0,
    s_axi_aresetn_1,
    s_axi_aresetn_2,
    s_axi_aresetn_3,
    s_axi_aresetn_4,
    s_axi_aresetn_5,
    s_axi_aresetn_6,
    ip2bus_wrack_prev2,
    Or128_vec2stdlogic,
    bus2ip_wrce,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_2 ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_3 ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_4 ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_5 ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_6 ,
    isr_en,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_0 ,
    Or128_vec2stdlogic19_out,
    ip2bus_rdack_prev2,
    D,
    s_axi_wdata_0_sp_1,
    s_axi_wdata_1_sp_1,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1,
    Bus_RNW_reg_reg_2,
    Bus_RNW_reg_reg_3,
    Bus_RNW_reg_reg_4,
    Bus_RNW_reg_reg_5,
    Bus_RNW_reg_reg_6,
    Q,
    s_axi_aclk,
    s_axi_aresetn,
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ,
    s_axi_wdata,
    p_0_in11_in,
    p_0_in9_in,
    p_0_in7_in,
    p_0_in5_in,
    p_0_in3_in,
    p_0_in1_in,
    ip2bus_wrack_int_d1,
    \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ,
    p_0_in2_in,
    \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ,
    p_0_in8_in,
    \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ,
    p_0_in14_in,
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ,
    p_0_in,
    s_axi_arready,
    s_axi_arready_0,
    ip2bus_rdack,
    s_axi_wready,
    ip2bus_wrack,
    ip2bus_rdack_int_d1,
    \s_axi_rdata_i_reg[31] ,
    \s_axi_rdata_i_reg[0] ,
    \s_axi_rdata_i_reg[1] ,
    \s_axi_rdata_i_reg[2] ,
    \s_axi_rdata_i_reg[2]_0 ,
    \s_axi_rdata_i_reg[3] ,
    \s_axi_rdata_i_reg[3]_0 ,
    \s_axi_rdata_i_reg[3]_1 ,
    \s_axi_rdata_i_reg[4] ,
    \s_axi_rdata_i_reg[4]_0 ,
    \s_axi_rdata_i_reg[5] ,
    \s_axi_rdata_i_reg[5]_0 ,
    \s_axi_rdata_i_reg[6] ,
    \s_axi_rdata_i_reg[6]_0 ,
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 ,
    \s_axi_rdata_i_reg[31]_0 ,
    \mer_int_reg[0] ,
    p_0_in31_in,
    p_0_in29_in,
    p_0_in27_in,
    p_0_in25_in,
    p_0_in23_in,
    p_0_in21_in,
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ,
    Bus_RNW_reg_reg_7);
  output s_axi_aresetn_0;
  output s_axi_aresetn_1;
  output s_axi_aresetn_2;
  output s_axi_aresetn_3;
  output s_axi_aresetn_4;
  output s_axi_aresetn_5;
  output s_axi_aresetn_6;
  output ip2bus_wrack_prev2;
  output Or128_vec2stdlogic;
  output [2:0]bus2ip_wrce;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_2 ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_3 ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_4 ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_5 ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_6 ;
  output isr_en;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_0 ;
  output Or128_vec2stdlogic19_out;
  output ip2bus_rdack_prev2;
  output [31:0]D;
  output s_axi_wdata_0_sp_1;
  output s_axi_wdata_1_sp_1;
  output Bus_RNW_reg_reg_0;
  output Bus_RNW_reg_reg_1;
  output Bus_RNW_reg_reg_2;
  output Bus_RNW_reg_reg_3;
  output Bus_RNW_reg_reg_4;
  output Bus_RNW_reg_reg_5;
  output Bus_RNW_reg_reg_6;
  input Q;
  input s_axi_aclk;
  input s_axi_aresetn;
  input \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ;
  input [6:0]s_axi_wdata;
  input p_0_in11_in;
  input p_0_in9_in;
  input p_0_in7_in;
  input p_0_in5_in;
  input p_0_in3_in;
  input p_0_in1_in;
  input ip2bus_wrack_int_d1;
  input \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ;
  input p_0_in2_in;
  input \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ;
  input p_0_in8_in;
  input \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ;
  input p_0_in14_in;
  input \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ;
  input p_0_in;
  input [3:0]s_axi_arready;
  input s_axi_arready_0;
  input ip2bus_rdack;
  input s_axi_wready;
  input ip2bus_wrack;
  input ip2bus_rdack_int_d1;
  input [31:0]\s_axi_rdata_i_reg[31] ;
  input \s_axi_rdata_i_reg[0] ;
  input \s_axi_rdata_i_reg[1] ;
  input \s_axi_rdata_i_reg[2] ;
  input \s_axi_rdata_i_reg[2]_0 ;
  input \s_axi_rdata_i_reg[3] ;
  input \s_axi_rdata_i_reg[3]_0 ;
  input \s_axi_rdata_i_reg[3]_1 ;
  input \s_axi_rdata_i_reg[4] ;
  input \s_axi_rdata_i_reg[4]_0 ;
  input \s_axi_rdata_i_reg[5] ;
  input \s_axi_rdata_i_reg[5]_0 ;
  input \s_axi_rdata_i_reg[6] ;
  input \s_axi_rdata_i_reg[6]_0 ;
  input [6:0]\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 ;
  input \s_axi_rdata_i_reg[31]_0 ;
  input \mer_int_reg[0] ;
  input p_0_in31_in;
  input p_0_in29_in;
  input p_0_in27_in;
  input p_0_in25_in;
  input p_0_in23_in;
  input p_0_in21_in;
  input \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ;
  input Bus_RNW_reg_reg_7;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_i_1_n_0;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire Bus_RNW_reg_reg_2;
  wire Bus_RNW_reg_reg_3;
  wire Bus_RNW_reg_reg_4;
  wire Bus_RNW_reg_reg_5;
  wire Bus_RNW_reg_reg_6;
  wire Bus_RNW_reg_reg_7;
  wire \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ;
  wire [31:0]D;
  wire \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ;
  wire [6:0]\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg_n_0_[18] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_3 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_4 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_5 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_6 ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0 ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_0 ;
  wire Or128_vec2stdlogic;
  wire Or128_vec2stdlogic19_out;
  wire Q;
  wire \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ;
  wire \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ;
  wire \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ;
  wire \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ;
  wire \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ;
  wire [2:0]bus2ip_wrce;
  wire cs_ce_clr;
  wire ip2bus_rdack;
  wire ip2bus_rdack_i_2_n_0;
  wire ip2bus_rdack_int_d1;
  wire ip2bus_rdack_int_d1_i_2_n_0;
  wire ip2bus_rdack_prev2;
  wire ip2bus_wrack;
  wire ip2bus_wrack_i_2_n_0;
  wire ip2bus_wrack_int_d1;
  wire ip2bus_wrack_int_d1_i_2_n_0;
  wire ip2bus_wrack_int_d1_i_3_n_0;
  wire ip2bus_wrack_int_d1_i_4_n_0;
  wire ip2bus_wrack_prev2;
  wire isr_en;
  wire \mer_int_reg[0] ;
  wire p_0_in;
  wire p_0_in11_in;
  wire p_0_in14_in;
  wire p_0_in1_in;
  wire p_0_in21_in;
  wire p_0_in23_in;
  wire p_0_in25_in;
  wire p_0_in27_in;
  wire p_0_in29_in;
  wire p_0_in2_in;
  wire p_0_in31_in;
  wire p_0_in3_in;
  wire p_0_in5_in;
  wire p_0_in7_in;
  wire p_0_in8_in;
  wire p_0_in9_in;
  wire p_0_out;
  wire p_10_in;
  wire p_10_out;
  wire p_11_in;
  wire p_11_out;
  wire p_12_in;
  wire p_12_out;
  wire p_13_in;
  wire p_13_out;
  wire p_14_in;
  wire p_14_out;
  wire p_15_in;
  wire p_15_out;
  wire p_16_in;
  wire p_17_in;
  wire p_17_out;
  wire p_18_in;
  wire p_19_in;
  wire p_1_out;
  wire p_2_in;
  wire p_2_out;
  wire p_3_in;
  wire p_3_out;
  wire p_4_in;
  wire p_4_out;
  wire p_5_in;
  wire p_5_out;
  wire p_6_in;
  wire p_6_out;
  wire p_7_in;
  wire p_7_out;
  wire p_8_in;
  wire p_8_out;
  wire p_9_in;
  wire p_9_out;
  wire pselect_hit_i_1;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire s_axi_aresetn_1;
  wire s_axi_aresetn_2;
  wire s_axi_aresetn_3;
  wire s_axi_aresetn_4;
  wire s_axi_aresetn_5;
  wire s_axi_aresetn_6;
  wire [3:0]s_axi_arready;
  wire s_axi_arready_0;
  wire \s_axi_rdata_i[31]_i_2_n_0 ;
  wire \s_axi_rdata_i[31]_i_4_n_0 ;
  wire \s_axi_rdata_i_reg[0] ;
  wire \s_axi_rdata_i_reg[1] ;
  wire \s_axi_rdata_i_reg[2] ;
  wire \s_axi_rdata_i_reg[2]_0 ;
  wire [31:0]\s_axi_rdata_i_reg[31] ;
  wire \s_axi_rdata_i_reg[31]_0 ;
  wire \s_axi_rdata_i_reg[3] ;
  wire \s_axi_rdata_i_reg[3]_0 ;
  wire \s_axi_rdata_i_reg[3]_1 ;
  wire \s_axi_rdata_i_reg[4] ;
  wire \s_axi_rdata_i_reg[4]_0 ;
  wire \s_axi_rdata_i_reg[5] ;
  wire \s_axi_rdata_i_reg[5]_0 ;
  wire \s_axi_rdata_i_reg[6] ;
  wire \s_axi_rdata_i_reg[6]_0 ;
  wire [6:0]s_axi_wdata;
  wire s_axi_wdata_0_sn_1;
  wire s_axi_wdata_1_sn_1;
  wire s_axi_wready;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  assign s_axi_wdata_1_sp_1 = s_axi_wdata_1_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(Bus_RNW_reg_reg_7),
        .I1(Q),
        .I2(Bus_RNW_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[0].cie[0]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(p_14_in),
        .I2(s_axi_wdata[0]),
        .I3(s_axi_aresetn),
        .I4(\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ),
        .O(Bus_RNW_reg_reg_6));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[1].cie[1]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(p_14_in),
        .I2(s_axi_wdata[1]),
        .I3(s_axi_aresetn),
        .I4(p_0_in31_in),
        .O(Bus_RNW_reg_reg_0));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[2].cie[2]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(p_14_in),
        .I2(s_axi_wdata[2]),
        .I3(s_axi_aresetn),
        .I4(p_0_in29_in),
        .O(Bus_RNW_reg_reg_1));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[3].cie[3]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(p_14_in),
        .I2(s_axi_wdata[3]),
        .I3(s_axi_aresetn),
        .I4(p_0_in27_in),
        .O(Bus_RNW_reg_reg_2));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[4].cie[4]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(p_14_in),
        .I2(s_axi_wdata[4]),
        .I3(s_axi_aresetn),
        .I4(p_0_in25_in),
        .O(Bus_RNW_reg_reg_3));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[5].cie[5]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(p_14_in),
        .I2(s_axi_wdata[5]),
        .I3(s_axi_aresetn),
        .I4(p_0_in23_in),
        .O(Bus_RNW_reg_reg_4));
  LUT5 #(
    .INIT(32'h00004000)) 
    \CIE_GEN.CIE_BIT_GEN[6].cie[6]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(p_14_in),
        .I2(s_axi_wdata[6]),
        .I3(s_axi_aresetn),
        .I4(p_0_in21_in),
        .O(Bus_RNW_reg_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0 ),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I4(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .O(p_15_out));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_15_out),
        .Q(p_19_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0 ),
        .O(p_5_out));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_5_out),
        .Q(p_9_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0 ),
        .O(p_4_out));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2 
       (.I0(Q),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [4]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [6]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [5]),
        .I4(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .O(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_4_out),
        .Q(p_8_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .O(p_3_out));
  FDRE \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_3_out),
        .Q(p_7_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ),
        .O(p_2_out));
  FDRE \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_2_out),
        .Q(p_6_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1_n_0 ),
        .Q(p_5_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ),
        .O(p_17_out));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .I1(Q),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [4]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [6]),
        .I4(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [5]),
        .O(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_17_out),
        .Q(p_4_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [6]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [5]),
        .O(pselect_hit_i_1));
  FDRE \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(pselect_hit_i_1),
        .Q(p_3_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [6]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .O(p_0_out));
  FDRE \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_0_out),
        .Q(p_2_in),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hFD)) 
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 
       (.I0(s_axi_aresetn),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_0 ),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [6]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .O(p_1_out));
  FDRE \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_1_out),
        .Q(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg_n_0_[18] ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0 ),
        .O(p_14_out));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_14_out),
        .Q(p_18_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I4(\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0 ),
        .O(p_13_out));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_13_out),
        .Q(p_17_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0 ),
        .O(p_12_out));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_12_out),
        .Q(p_16_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0 ),
        .O(p_11_out));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_11_out),
        .Q(p_15_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ),
        .O(p_10_out));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_10_out),
        .Q(p_14_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0 ),
        .O(p_9_out));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [5]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [6]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [4]),
        .I3(Q),
        .O(\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_9_out),
        .Q(p_13_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ),
        .O(p_8_out));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_8_out),
        .Q(p_12_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .O(p_7_out));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_7_out),
        .Q(p_11_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0 ),
        .O(p_6_out));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_6_out),
        .Q(p_10_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_2 
       (.I0(p_16_in),
        .I1(Bus_RNW_reg),
        .I2(\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ),
        .O(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \REG_GEN[0].IMR_FAST_MODE_GEN.imr[0]_i_1 
       (.I0(p_11_in),
        .I1(Bus_RNW_reg),
        .O(bus2ip_wrce[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \REG_GEN[0].ier[0]_i_2 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .O(bus2ip_wrce[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \REG_GEN[0].isr[0]_i_2 
       (.I0(Bus_RNW_reg),
        .I1(p_19_in),
        .I2(p_0_in),
        .O(isr_en));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_2 
       (.I0(p_16_in),
        .I1(Bus_RNW_reg),
        .I2(p_0_in14_in),
        .O(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_2 
       (.I0(p_16_in),
        .I1(Bus_RNW_reg),
        .I2(\REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ),
        .O(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_2 
       (.I0(p_16_in),
        .I1(Bus_RNW_reg),
        .I2(p_0_in8_in),
        .O(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_2 
       (.I0(p_16_in),
        .I1(Bus_RNW_reg),
        .I2(\REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ),
        .O(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_2 
       (.I0(p_16_in),
        .I1(Bus_RNW_reg),
        .I2(p_0_in2_in),
        .O(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_2 
       (.I0(p_16_in),
        .I1(Bus_RNW_reg),
        .I2(\REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ),
        .O(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \SIE_GEN.SIE_BIT_GEN[0].sie[0]_i_1 
       (.I0(s_axi_aresetn),
        .I1(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I2(Bus_RNW_reg),
        .I3(p_15_in),
        .I4(s_axi_wdata[0]),
        .O(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \SIE_GEN.SIE_BIT_GEN[1].sie[1]_i_1 
       (.I0(s_axi_aresetn),
        .I1(p_0_in11_in),
        .I2(Bus_RNW_reg),
        .I3(p_15_in),
        .I4(s_axi_wdata[1]),
        .O(s_axi_aresetn_1));
  LUT5 #(
    .INIT(32'h02000000)) 
    \SIE_GEN.SIE_BIT_GEN[2].sie[2]_i_1 
       (.I0(s_axi_aresetn),
        .I1(p_0_in9_in),
        .I2(Bus_RNW_reg),
        .I3(p_15_in),
        .I4(s_axi_wdata[2]),
        .O(s_axi_aresetn_2));
  LUT5 #(
    .INIT(32'h02000000)) 
    \SIE_GEN.SIE_BIT_GEN[3].sie[3]_i_1 
       (.I0(s_axi_aresetn),
        .I1(p_0_in7_in),
        .I2(Bus_RNW_reg),
        .I3(p_15_in),
        .I4(s_axi_wdata[3]),
        .O(s_axi_aresetn_3));
  LUT5 #(
    .INIT(32'h02000000)) 
    \SIE_GEN.SIE_BIT_GEN[4].sie[4]_i_1 
       (.I0(s_axi_aresetn),
        .I1(p_0_in5_in),
        .I2(Bus_RNW_reg),
        .I3(p_15_in),
        .I4(s_axi_wdata[4]),
        .O(s_axi_aresetn_4));
  LUT5 #(
    .INIT(32'h02000000)) 
    \SIE_GEN.SIE_BIT_GEN[5].sie[5]_i_1 
       (.I0(s_axi_aresetn),
        .I1(p_0_in3_in),
        .I2(Bus_RNW_reg),
        .I3(p_15_in),
        .I4(s_axi_wdata[5]),
        .O(s_axi_aresetn_5));
  LUT5 #(
    .INIT(32'h02000000)) 
    \SIE_GEN.SIE_BIT_GEN[6].sie[6]_i_1 
       (.I0(s_axi_aresetn),
        .I1(p_0_in1_in),
        .I2(Bus_RNW_reg),
        .I3(p_15_in),
        .I4(s_axi_wdata[6]),
        .O(s_axi_aresetn_6));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0444)) 
    ip2bus_rdack_i_1
       (.I0(ip2bus_rdack_int_d1),
        .I1(Bus_RNW_reg),
        .I2(ip2bus_wrack_int_d1_i_3_n_0),
        .I3(ip2bus_rdack_i_2_n_0),
        .O(ip2bus_rdack_prev2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    ip2bus_rdack_i_2
       (.I0(p_3_in),
        .I1(p_15_in),
        .I2(p_16_in),
        .I3(p_14_in),
        .I4(ip2bus_rdack_int_d1_i_2_n_0),
        .O(ip2bus_rdack_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    ip2bus_rdack_int_d1_i_1
       (.I0(Bus_RNW_reg),
        .I1(ip2bus_wrack_int_d1_i_3_n_0),
        .I2(ip2bus_wrack_i_2_n_0),
        .I3(p_16_in),
        .I4(p_14_in),
        .I5(ip2bus_rdack_int_d1_i_2_n_0),
        .O(Or128_vec2stdlogic19_out));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    ip2bus_rdack_int_d1_i_2
       (.I0(p_13_in),
        .I1(p_18_in),
        .I2(p_17_in),
        .I3(p_12_in),
        .I4(p_19_in),
        .O(ip2bus_rdack_int_d1_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000000F0F0F07)) 
    ip2bus_wrack_i_1
       (.I0(ip2bus_wrack_int_d1_i_3_n_0),
        .I1(ip2bus_wrack_int_d1_i_2_n_0),
        .I2(Bus_RNW_reg),
        .I3(ip2bus_wrack_i_2_n_0),
        .I4(p_12_in),
        .I5(ip2bus_wrack_int_d1),
        .O(ip2bus_wrack_prev2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    ip2bus_wrack_i_2
       (.I0(p_3_in),
        .I1(p_15_in),
        .O(ip2bus_wrack_i_2_n_0));
  LUT6 #(
    .INIT(64'h00FE00FF00FF00FF)) 
    ip2bus_wrack_int_d1_i_1
       (.I0(p_12_in),
        .I1(p_15_in),
        .I2(p_3_in),
        .I3(Bus_RNW_reg),
        .I4(ip2bus_wrack_int_d1_i_2_n_0),
        .I5(ip2bus_wrack_int_d1_i_3_n_0),
        .O(Or128_vec2stdlogic));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    ip2bus_wrack_int_d1_i_2
       (.I0(p_19_in),
        .I1(p_16_in),
        .I2(p_13_in),
        .I3(p_18_in),
        .I4(p_17_in),
        .I5(p_14_in),
        .O(ip2bus_wrack_int_d1_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    ip2bus_wrack_int_d1_i_3
       (.I0(ip2bus_wrack_int_d1_i_4_n_0),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg_n_0_[18] ),
        .I2(p_9_in),
        .I3(p_2_in),
        .I4(p_8_in),
        .O(ip2bus_wrack_int_d1_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    ip2bus_wrack_int_d1_i_4
       (.I0(p_10_in),
        .I1(p_4_in),
        .I2(p_6_in),
        .I3(p_5_in),
        .I4(p_11_in),
        .I5(p_7_in),
        .O(ip2bus_wrack_int_d1_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \mer_int[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(p_12_in),
        .I2(Bus_RNW_reg),
        .I3(\mer_int_reg[0] ),
        .O(s_axi_wdata_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \mer_int[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(Bus_RNW_reg),
        .I2(p_12_in),
        .I3(p_0_in),
        .O(s_axi_wdata_1_sn_1));
  LUT2 #(
    .INIT(4'h2)) 
    \ram_i[0].ram_reg_0_15_0_0_i_1 
       (.I0(p_3_in),
        .I1(Bus_RNW_reg),
        .O(bus2ip_wrce[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    s_axi_arready_INST_0
       (.I0(s_axi_arready[3]),
        .I1(s_axi_arready[2]),
        .I2(s_axi_arready[1]),
        .I3(s_axi_arready[0]),
        .I4(s_axi_arready_0),
        .I5(ip2bus_rdack),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \s_axi_rdata_i[0]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [0]),
        .I2(\s_axi_rdata_i_reg[0] ),
        .I3(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[10]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [10]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[11]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [11]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[12]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [12]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[13]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [13]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[14]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [14]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[15]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [15]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[16]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [16]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[17]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [17]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[18]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [18]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[19]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [19]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[19]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \s_axi_rdata_i[1]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [1]),
        .I2(\s_axi_rdata_i_reg[1] ),
        .I3(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[20]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [20]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[21]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [21]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[22]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [22]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[23]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [23]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[24]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [24]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[25]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [25]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[26]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [26]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[26]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[27]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [27]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[28]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [28]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[29]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [29]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[29]));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \s_axi_rdata_i[2]_i_1 
       (.I0(\s_axi_rdata_i_reg[2] ),
        .I1(\s_axi_rdata_i_reg[2]_0 ),
        .I2(\s_axi_rdata_i[31]_i_4_n_0 ),
        .I3(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I4(\s_axi_rdata_i_reg[31] [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[30]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [30]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[30]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[31]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [31]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \s_axi_rdata_i[31]_i_2 
       (.I0(p_3_in),
        .I1(Bus_RNW_reg),
        .I2(ip2bus_rdack_int_d1_i_2_n_0),
        .I3(p_10_in),
        .I4(p_11_in),
        .O(\s_axi_rdata_i[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h44444440)) 
    \s_axi_rdata_i[31]_i_4 
       (.I0(\s_axi_rdata_i_reg[31]_0 ),
        .I1(Bus_RNW_reg),
        .I2(ip2bus_rdack_int_d1_i_2_n_0),
        .I3(p_10_in),
        .I4(p_11_in),
        .O(\s_axi_rdata_i[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44FF4FFF44444444)) 
    \s_axi_rdata_i[3]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [3]),
        .I2(\s_axi_rdata_i_reg[3] ),
        .I3(\s_axi_rdata_i_reg[3]_0 ),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h44FF4FFF44444444)) 
    \s_axi_rdata_i[4]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [4]),
        .I2(\s_axi_rdata_i_reg[4] ),
        .I3(\s_axi_rdata_i_reg[4]_0 ),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h44FF4FFF44444444)) 
    \s_axi_rdata_i[5]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [5]),
        .I2(\s_axi_rdata_i_reg[5] ),
        .I3(\s_axi_rdata_i_reg[5]_0 ),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h44FF4FFF44444444)) 
    \s_axi_rdata_i[6]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [6]),
        .I2(\s_axi_rdata_i_reg[6] ),
        .I3(\s_axi_rdata_i_reg[6]_0 ),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[7]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [7]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[8]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [8]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h4444F4FF44444444)) 
    \s_axi_rdata_i[9]_i_1 
       (.I0(\s_axi_rdata_i[31]_i_2_n_0 ),
        .I1(\s_axi_rdata_i_reg[31] [9]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i[31]_i_4_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020000)) 
    s_axi_wready_INST_0
       (.I0(s_axi_arready[3]),
        .I1(s_axi_arready[2]),
        .I2(s_axi_arready[1]),
        .I3(s_axi_arready[0]),
        .I4(s_axi_wready),
        .I5(ip2bus_wrack),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_0 ));
endmodule

(* C_ADDR_WIDTH = "32" *) (* C_ASYNC_INTR = "-4" *) (* C_CASCADE_MASTER = "0" *) 
(* C_DISABLE_SYNCHRONIZERS = "1" *) (* C_ENABLE_ASYNC = "0" *) (* C_EN_CASCADE_MODE = "0" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_CIE = "1" *) (* C_HAS_FAST = "1" *) 
(* C_HAS_ILR = "0" *) (* C_HAS_IPR = "1" *) (* C_HAS_IVR = "1" *) 
(* C_HAS_SIE = "1" *) (* C_INSTANCE = "skrach_design_microblaze_0_axi_intc_0" *) (* C_IRQ_ACTIVE = "1'b1" *) 
(* C_IRQ_IS_LEVEL = "1" *) (* C_IVAR_RESET_VALUE = "64'b0000000000000000000000000000000000000000000000000000000000010000" *) (* C_KIND_OF_EDGE = "-1" *) 
(* C_KIND_OF_INTR = "-1" *) (* C_KIND_OF_LVL = "-1" *) (* C_MB_CLK_NOT_CONNECTED = "1" *) 
(* C_NUM_INTR_INPUTS = "7" *) (* C_NUM_SW_INTR = "0" *) (* C_NUM_SYNC_FF = "2" *) 
(* C_S_AXI_ADDR_WIDTH = "9" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* ORIG_REF_NAME = "axi_intc" *) 
(* hdl = "VHDL" *) (* imp_netlist = "TRUE" *) (* ip_group = "LOGICORE" *) 
(* iptype = "PERIPHERAL" *) (* run_ngcbuild = "TRUE" *) (* style = "HDL" *) 
module skrach_design_microblaze_0_axi_intc_0_axi_intc
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    intr,
    processor_clk,
    processor_rst,
    irq,
    processor_ack,
    interrupt_address,
    irq_in,
    interrupt_address_in,
    processor_ack_out);
  (* sigis = "Clk" *) input s_axi_aclk;
  (* sigis = "Rstn" *) input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  (* BUFFER_TYPE = "none" *) input [6:0]intr;
  input processor_clk;
  input processor_rst;
  output irq;
  input [1:0]processor_ack;
  output [31:0]interrupt_address;
  input irq_in;
  input [31:0]interrupt_address_in;
  output [1:0]processor_ack_out;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_10;
  wire AXI_LITE_IPIF_I_n_16;
  wire AXI_LITE_IPIF_I_n_17;
  wire AXI_LITE_IPIF_I_n_18;
  wire AXI_LITE_IPIF_I_n_19;
  wire AXI_LITE_IPIF_I_n_20;
  wire AXI_LITE_IPIF_I_n_21;
  wire AXI_LITE_IPIF_I_n_22;
  wire AXI_LITE_IPIF_I_n_32;
  wire AXI_LITE_IPIF_I_n_33;
  wire AXI_LITE_IPIF_I_n_34;
  wire AXI_LITE_IPIF_I_n_35;
  wire AXI_LITE_IPIF_I_n_36;
  wire AXI_LITE_IPIF_I_n_37;
  wire AXI_LITE_IPIF_I_n_38;
  wire AXI_LITE_IPIF_I_n_39;
  wire AXI_LITE_IPIF_I_n_4;
  wire AXI_LITE_IPIF_I_n_40;
  wire AXI_LITE_IPIF_I_n_41;
  wire AXI_LITE_IPIF_I_n_42;
  wire AXI_LITE_IPIF_I_n_5;
  wire AXI_LITE_IPIF_I_n_6;
  wire AXI_LITE_IPIF_I_n_7;
  wire AXI_LITE_IPIF_I_n_8;
  wire AXI_LITE_IPIF_I_n_9;
  wire [31:0]Douta;
  wire INTC_CORE_I_n_0;
  wire INTC_CORE_I_n_1;
  wire INTC_CORE_I_n_10;
  wire INTC_CORE_I_n_17;
  wire INTC_CORE_I_n_24;
  wire INTC_CORE_I_n_26;
  wire INTC_CORE_I_n_27;
  wire INTC_CORE_I_n_3;
  wire INTC_CORE_I_n_38;
  wire INTC_CORE_I_n_44;
  wire INTC_CORE_I_n_45;
  wire INTC_CORE_I_n_46;
  wire INTC_CORE_I_n_47;
  wire INTC_CORE_I_n_48;
  wire INTC_CORE_I_n_5;
  wire INTC_CORE_I_n_7;
  wire INTC_CORE_I_n_8;
  wire Or128_vec2stdlogic;
  wire Or128_vec2stdlogic19_out;
  wire [5:2]bus2ip_addr;
  wire [16:2]bus2ip_wrce;
  wire [31:0]interrupt_address;
  wire [6:0]intr;
  wire ip2bus_rdack;
  wire ip2bus_rdack_int_d1;
  wire ip2bus_rdack_prev2;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int_d1;
  wire ip2bus_wrack_prev2;
  wire [6:2]ipr;
  wire irq;
  wire isr_en;
  wire p_0_in;
  wire p_0_in11_in;
  wire p_0_in14_in;
  wire p_0_in19_in;
  wire p_0_in1_in;
  wire p_0_in20_in;
  wire p_0_in21_in;
  wire p_0_in22_in;
  wire p_0_in23_in;
  wire p_0_in24_in;
  wire p_0_in25_in;
  wire p_0_in26_in;
  wire p_0_in27_in;
  wire p_0_in29_in;
  wire p_0_in2_in;
  wire p_0_in31_in;
  wire p_0_in3_in;
  wire p_0_in5_in;
  wire p_0_in7_in;
  wire p_0_in8_in;
  wire p_0_in9_in;
  wire p_1_in;
  wire p_1_in21_in;
  wire p_1_in23_in;
  wire p_1_in25_in;
  wire p_1_in27_in;
  wire [1:0]processor_ack;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign processor_ack_out[1] = \<const0> ;
  assign processor_ack_out[0] = \<const0> ;
  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  skrach_design_microblaze_0_axi_intc_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.Bus_RNW_reg_reg(AXI_LITE_IPIF_I_n_36),
        .Bus_RNW_reg_reg_0(AXI_LITE_IPIF_I_n_37),
        .Bus_RNW_reg_reg_1(AXI_LITE_IPIF_I_n_38),
        .Bus_RNW_reg_reg_2(AXI_LITE_IPIF_I_n_39),
        .Bus_RNW_reg_reg_3(AXI_LITE_IPIF_I_n_40),
        .Bus_RNW_reg_reg_4(AXI_LITE_IPIF_I_n_41),
        .Bus_RNW_reg_reg_5(AXI_LITE_IPIF_I_n_42),
        .\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] (INTC_CORE_I_n_17),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (AXI_LITE_IPIF_I_n_16),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 (AXI_LITE_IPIF_I_n_17),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 (AXI_LITE_IPIF_I_n_18),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_2 (AXI_LITE_IPIF_I_n_19),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_3 (AXI_LITE_IPIF_I_n_20),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_4 (AXI_LITE_IPIF_I_n_21),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_5 (AXI_LITE_IPIF_I_n_22),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] (s_axi_arready),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_0 (s_axi_wready),
        .Or128_vec2stdlogic(Or128_vec2stdlogic),
        .Or128_vec2stdlogic19_out(Or128_vec2stdlogic19_out),
        .Q(Douta),
        .\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] (INTC_CORE_I_n_0),
        .\REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] (INTC_CORE_I_n_3),
        .\REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] (INTC_CORE_I_n_5),
        .\REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] (INTC_CORE_I_n_7),
        .\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] (INTC_CORE_I_n_10),
        .SR(INTC_CORE_I_n_1),
        .\bus2ip_addr_i_reg[4] (AXI_LITE_IPIF_I_n_32),
        .\bus2ip_addr_i_reg[4]_0 (AXI_LITE_IPIF_I_n_33),
        .\bus2ip_addr_i_reg[5] (bus2ip_addr),
        .bus2ip_wrce({bus2ip_wrce[16],bus2ip_wrce[10],bus2ip_wrce[2]}),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_rdack_int_d1(ip2bus_rdack_int_d1),
        .ip2bus_rdack_prev2(ip2bus_rdack_prev2),
        .ip2bus_wrack(ip2bus_wrack),
        .ip2bus_wrack_int_d1(ip2bus_wrack_int_d1),
        .ip2bus_wrack_prev2(ip2bus_wrack_prev2),
        .isr_en(isr_en),
        .\mer_int_reg[0] (INTC_CORE_I_n_24),
        .p_0_in(p_0_in),
        .p_0_in11_in(p_0_in11_in),
        .p_0_in14_in(p_0_in14_in),
        .p_0_in19_in(p_0_in19_in),
        .p_0_in1_in(p_0_in1_in),
        .p_0_in20_in(p_0_in20_in),
        .p_0_in21_in(p_0_in21_in),
        .p_0_in22_in(p_0_in22_in),
        .p_0_in23_in(p_0_in23_in),
        .p_0_in24_in(p_0_in24_in),
        .p_0_in25_in(p_0_in25_in),
        .p_0_in26_in(p_0_in26_in),
        .p_0_in27_in(p_0_in27_in),
        .p_0_in29_in(p_0_in29_in),
        .p_0_in2_in(p_0_in2_in),
        .p_0_in31_in(p_0_in31_in),
        .p_0_in3_in(p_0_in3_in),
        .p_0_in5_in(p_0_in5_in),
        .p_0_in7_in(p_0_in7_in),
        .p_0_in8_in(p_0_in8_in),
        .p_0_in9_in(p_0_in9_in),
        .p_1_in(p_1_in),
        .p_1_in21_in(p_1_in21_in),
        .p_1_in23_in(p_1_in23_in),
        .p_1_in25_in(p_1_in25_in),
        .p_1_in27_in(p_1_in27_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[8:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(AXI_LITE_IPIF_I_n_4),
        .s_axi_aresetn_1(AXI_LITE_IPIF_I_n_5),
        .s_axi_aresetn_2(AXI_LITE_IPIF_I_n_6),
        .s_axi_aresetn_3(AXI_LITE_IPIF_I_n_7),
        .s_axi_aresetn_4(AXI_LITE_IPIF_I_n_8),
        .s_axi_aresetn_5(AXI_LITE_IPIF_I_n_9),
        .s_axi_aresetn_6(AXI_LITE_IPIF_I_n_10),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[8:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid_i_reg(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i[2]_i_2 (INTC_CORE_I_n_26),
        .\s_axi_rdata_i_reg[0] (INTC_CORE_I_n_38),
        .\s_axi_rdata_i_reg[1] (INTC_CORE_I_n_44),
        .\s_axi_rdata_i_reg[3] (INTC_CORE_I_n_45),
        .\s_axi_rdata_i_reg[3]_0 (INTC_CORE_I_n_27),
        .\s_axi_rdata_i_reg[3]_1 (INTC_CORE_I_n_8),
        .\s_axi_rdata_i_reg[4] (INTC_CORE_I_n_46),
        .\s_axi_rdata_i_reg[5] (INTC_CORE_I_n_47),
        .\s_axi_rdata_i_reg[6] (INTC_CORE_I_n_48),
        .\s_axi_rdata_i_reg[6]_0 (ipr),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_rvalid_i_reg(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata[6:0]),
        .s_axi_wdata_0_sp_1(AXI_LITE_IPIF_I_n_34),
        .s_axi_wdata_1_sp_1(AXI_LITE_IPIF_I_n_35),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
  GND GND
       (.G(\<const0> ));
  skrach_design_microblaze_0_axi_intc_0_intc_core INTC_CORE_I
       (.\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 (INTC_CORE_I_n_17),
        .\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_1 (AXI_LITE_IPIF_I_n_42),
        .\CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0 (AXI_LITE_IPIF_I_n_36),
        .\CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0 (AXI_LITE_IPIF_I_n_37),
        .\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 (AXI_LITE_IPIF_I_n_38),
        .\CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0 (AXI_LITE_IPIF_I_n_39),
        .\CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0 (AXI_LITE_IPIF_I_n_40),
        .\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 (AXI_LITE_IPIF_I_n_41),
        .Douta(Douta),
        .\IVR_GEN.ivr_reg[0]_0 (INTC_CORE_I_n_8),
        .\IVR_GEN.ivr_reg[0]_1 (INTC_CORE_I_n_45),
        .\IVR_GEN.ivr_reg[0]_2 (INTC_CORE_I_n_46),
        .\IVR_GEN.ivr_reg[0]_3 (INTC_CORE_I_n_47),
        .\IVR_GEN.ivr_reg[0]_4 (INTC_CORE_I_n_48),
        .\IVR_GEN.ivr_reg[1]_0 (INTC_CORE_I_n_27),
        .\IVR_GEN.ivr_reg[2]_0 (INTC_CORE_I_n_26),
        .Q(ipr),
        .\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]_0 (AXI_LITE_IPIF_I_n_22),
        .\REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0 (INTC_CORE_I_n_0),
        .\REG_GEN[0].ier_reg[0]_0 (INTC_CORE_I_n_38),
        .\REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1]_0 (AXI_LITE_IPIF_I_n_21),
        .\REG_GEN[1].ier_reg[1]_0 (INTC_CORE_I_n_44),
        .\REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]_0 (AXI_LITE_IPIF_I_n_20),
        .\REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]_0 (INTC_CORE_I_n_3),
        .\REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]_0 (AXI_LITE_IPIF_I_n_19),
        .\REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4]_0 (AXI_LITE_IPIF_I_n_18),
        .\REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]_0 (INTC_CORE_I_n_5),
        .\REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]_0 (AXI_LITE_IPIF_I_n_17),
        .\REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6]_0 (AXI_LITE_IPIF_I_n_16),
        .\REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]_0 (INTC_CORE_I_n_7),
        .\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 (INTC_CORE_I_n_10),
        .\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1 (AXI_LITE_IPIF_I_n_4),
        .\SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]_0 (AXI_LITE_IPIF_I_n_5),
        .\SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]_0 (AXI_LITE_IPIF_I_n_6),
        .\SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]_0 (AXI_LITE_IPIF_I_n_7),
        .\SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]_0 (AXI_LITE_IPIF_I_n_8),
        .\SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]_0 (AXI_LITE_IPIF_I_n_9),
        .\SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]_0 (AXI_LITE_IPIF_I_n_10),
        .SR(INTC_CORE_I_n_1),
        .bus2ip_wrce({bus2ip_wrce[16],bus2ip_wrce[10],bus2ip_wrce[2]}),
        .interrupt_address(interrupt_address),
        .intr(intr),
        .irq(irq),
        .isr_en(isr_en),
        .\mer_int_reg[0]_0 (INTC_CORE_I_n_24),
        .\mer_int_reg[0]_1 (AXI_LITE_IPIF_I_n_34),
        .\mer_int_reg[1]_0 (AXI_LITE_IPIF_I_n_35),
        .p_0_in(p_0_in),
        .p_0_in11_in(p_0_in11_in),
        .p_0_in14_in(p_0_in14_in),
        .p_0_in19_in(p_0_in19_in),
        .p_0_in1_in(p_0_in1_in),
        .p_0_in20_in(p_0_in20_in),
        .p_0_in21_in(p_0_in21_in),
        .p_0_in22_in(p_0_in22_in),
        .p_0_in23_in(p_0_in23_in),
        .p_0_in24_in(p_0_in24_in),
        .p_0_in25_in(p_0_in25_in),
        .p_0_in26_in(p_0_in26_in),
        .p_0_in27_in(p_0_in27_in),
        .p_0_in29_in(p_0_in29_in),
        .p_0_in2_in(p_0_in2_in),
        .p_0_in31_in(p_0_in31_in),
        .p_0_in3_in(p_0_in3_in),
        .p_0_in5_in(p_0_in5_in),
        .p_0_in7_in(p_0_in7_in),
        .p_0_in8_in(p_0_in8_in),
        .p_0_in9_in(p_0_in9_in),
        .p_1_in(p_1_in),
        .p_1_in21_in(p_1_in21_in),
        .p_1_in23_in(p_1_in23_in),
        .p_1_in25_in(p_1_in25_in),
        .p_1_in27_in(p_1_in27_in),
        .processor_ack(processor_ack),
        .\ram_i[0].Doutb_reg[0] (bus2ip_addr),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .\s_axi_rdata_i_reg[3] (AXI_LITE_IPIF_I_n_33),
        .\s_axi_rdata_i_reg[3]_0 (AXI_LITE_IPIF_I_n_32),
        .s_axi_wdata(s_axi_wdata));
  FDRE ip2bus_rdack_int_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Or128_vec2stdlogic19_out),
        .Q(ip2bus_rdack_int_d1),
        .R(INTC_CORE_I_n_1));
  FDRE ip2bus_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_prev2),
        .Q(ip2bus_rdack),
        .R(INTC_CORE_I_n_1));
  FDRE ip2bus_wrack_int_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Or128_vec2stdlogic),
        .Q(ip2bus_wrack_int_d1),
        .R(INTC_CORE_I_n_1));
  FDRE ip2bus_wrack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_prev2),
        .Q(ip2bus_wrack),
        .R(INTC_CORE_I_n_1));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module skrach_design_microblaze_0_axi_intc_0_axi_lite_ipif
   (s_axi_rresp,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    s_axi_bresp,
    s_axi_aresetn_0,
    s_axi_aresetn_1,
    s_axi_aresetn_2,
    s_axi_aresetn_3,
    s_axi_aresetn_4,
    s_axi_aresetn_5,
    s_axi_aresetn_6,
    ip2bus_wrack_prev2,
    Or128_vec2stdlogic,
    bus2ip_wrce,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_2 ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_3 ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_4 ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_5 ,
    isr_en,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_0 ,
    Or128_vec2stdlogic19_out,
    ip2bus_rdack_prev2,
    \bus2ip_addr_i_reg[5] ,
    \bus2ip_addr_i_reg[4] ,
    \bus2ip_addr_i_reg[4]_0 ,
    s_axi_wdata_0_sp_1,
    s_axi_wdata_1_sp_1,
    Bus_RNW_reg_reg,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1,
    Bus_RNW_reg_reg_2,
    Bus_RNW_reg_reg_3,
    Bus_RNW_reg_reg_4,
    Bus_RNW_reg_reg_5,
    s_axi_rdata,
    SR,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_aresetn,
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ,
    s_axi_wdata,
    p_0_in11_in,
    p_0_in9_in,
    p_0_in7_in,
    p_0_in5_in,
    p_0_in3_in,
    p_0_in1_in,
    ip2bus_wrack_int_d1,
    \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ,
    p_0_in2_in,
    \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ,
    p_0_in8_in,
    \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ,
    p_0_in14_in,
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ,
    p_0_in,
    ip2bus_rdack,
    s_axi_wvalid,
    s_axi_awvalid,
    ip2bus_wrack,
    ip2bus_rdack_int_d1,
    Q,
    \s_axi_rdata_i_reg[3] ,
    \s_axi_rdata_i_reg[4] ,
    \s_axi_rdata_i_reg[5] ,
    \s_axi_rdata_i_reg[6] ,
    \s_axi_rdata_i_reg[0] ,
    \s_axi_rdata_i_reg[1] ,
    p_1_in27_in,
    \s_axi_rdata_i_reg[6]_0 ,
    p_1_in25_in,
    p_1_in23_in,
    p_1_in21_in,
    \s_axi_rdata_i_reg[3]_0 ,
    \s_axi_rdata_i_reg[3]_1 ,
    \mer_int_reg[0] ,
    \s_axi_rdata_i[2]_i_2 ,
    p_0_in26_in,
    p_0_in24_in,
    p_0_in22_in,
    p_0_in20_in,
    s_axi_bready,
    s_axi_rready,
    p_1_in,
    p_0_in19_in,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_wstrb,
    p_0_in31_in,
    p_0_in29_in,
    p_0_in27_in,
    p_0_in25_in,
    p_0_in23_in,
    p_0_in21_in,
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] );
  output [0:0]s_axi_rresp;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output [0:0]s_axi_bresp;
  output s_axi_aresetn_0;
  output s_axi_aresetn_1;
  output s_axi_aresetn_2;
  output s_axi_aresetn_3;
  output s_axi_aresetn_4;
  output s_axi_aresetn_5;
  output s_axi_aresetn_6;
  output ip2bus_wrack_prev2;
  output Or128_vec2stdlogic;
  output [2:0]bus2ip_wrce;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_2 ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_3 ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_4 ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_5 ;
  output isr_en;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_0 ;
  output Or128_vec2stdlogic19_out;
  output ip2bus_rdack_prev2;
  output [3:0]\bus2ip_addr_i_reg[5] ;
  output \bus2ip_addr_i_reg[4] ;
  output \bus2ip_addr_i_reg[4]_0 ;
  output s_axi_wdata_0_sp_1;
  output s_axi_wdata_1_sp_1;
  output Bus_RNW_reg_reg;
  output Bus_RNW_reg_reg_0;
  output Bus_RNW_reg_reg_1;
  output Bus_RNW_reg_reg_2;
  output Bus_RNW_reg_reg_3;
  output Bus_RNW_reg_reg_4;
  output Bus_RNW_reg_reg_5;
  output [31:0]s_axi_rdata;
  input [0:0]SR;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ;
  input [6:0]s_axi_wdata;
  input p_0_in11_in;
  input p_0_in9_in;
  input p_0_in7_in;
  input p_0_in5_in;
  input p_0_in3_in;
  input p_0_in1_in;
  input ip2bus_wrack_int_d1;
  input \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ;
  input p_0_in2_in;
  input \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ;
  input p_0_in8_in;
  input \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ;
  input p_0_in14_in;
  input \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ;
  input p_0_in;
  input ip2bus_rdack;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input ip2bus_wrack;
  input ip2bus_rdack_int_d1;
  input [31:0]Q;
  input \s_axi_rdata_i_reg[3] ;
  input \s_axi_rdata_i_reg[4] ;
  input \s_axi_rdata_i_reg[5] ;
  input \s_axi_rdata_i_reg[6] ;
  input \s_axi_rdata_i_reg[0] ;
  input \s_axi_rdata_i_reg[1] ;
  input p_1_in27_in;
  input [4:0]\s_axi_rdata_i_reg[6]_0 ;
  input p_1_in25_in;
  input p_1_in23_in;
  input p_1_in21_in;
  input \s_axi_rdata_i_reg[3]_0 ;
  input \s_axi_rdata_i_reg[3]_1 ;
  input \mer_int_reg[0] ;
  input \s_axi_rdata_i[2]_i_2 ;
  input p_0_in26_in;
  input p_0_in24_in;
  input p_0_in22_in;
  input p_0_in20_in;
  input s_axi_bready;
  input s_axi_rready;
  input p_1_in;
  input p_0_in19_in;
  input [6:0]s_axi_araddr;
  input [6:0]s_axi_awaddr;
  input [3:0]s_axi_wstrb;
  input p_0_in31_in;
  input p_0_in29_in;
  input p_0_in27_in;
  input p_0_in25_in;
  input p_0_in23_in;
  input p_0_in21_in;
  input \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ;

  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire Bus_RNW_reg_reg_2;
  wire Bus_RNW_reg_reg_3;
  wire Bus_RNW_reg_reg_4;
  wire Bus_RNW_reg_reg_5;
  wire \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_3 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_4 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_5 ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_0 ;
  wire Or128_vec2stdlogic;
  wire Or128_vec2stdlogic19_out;
  wire [31:0]Q;
  wire \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ;
  wire \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ;
  wire \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ;
  wire \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ;
  wire \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ;
  wire [0:0]SR;
  wire \bus2ip_addr_i_reg[4] ;
  wire \bus2ip_addr_i_reg[4]_0 ;
  wire [3:0]\bus2ip_addr_i_reg[5] ;
  wire [2:0]bus2ip_wrce;
  wire ip2bus_rdack;
  wire ip2bus_rdack_int_d1;
  wire ip2bus_rdack_prev2;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int_d1;
  wire ip2bus_wrack_prev2;
  wire isr_en;
  wire \mer_int_reg[0] ;
  wire p_0_in;
  wire p_0_in11_in;
  wire p_0_in14_in;
  wire p_0_in19_in;
  wire p_0_in1_in;
  wire p_0_in20_in;
  wire p_0_in21_in;
  wire p_0_in22_in;
  wire p_0_in23_in;
  wire p_0_in24_in;
  wire p_0_in25_in;
  wire p_0_in26_in;
  wire p_0_in27_in;
  wire p_0_in29_in;
  wire p_0_in2_in;
  wire p_0_in31_in;
  wire p_0_in3_in;
  wire p_0_in5_in;
  wire p_0_in7_in;
  wire p_0_in8_in;
  wire p_0_in9_in;
  wire p_1_in;
  wire p_1_in21_in;
  wire p_1_in23_in;
  wire p_1_in25_in;
  wire p_1_in27_in;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire s_axi_aresetn_1;
  wire s_axi_aresetn_2;
  wire s_axi_aresetn_3;
  wire s_axi_aresetn_4;
  wire s_axi_aresetn_5;
  wire s_axi_aresetn_6;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid_i_reg;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata_i[2]_i_2 ;
  wire \s_axi_rdata_i_reg[0] ;
  wire \s_axi_rdata_i_reg[1] ;
  wire \s_axi_rdata_i_reg[3] ;
  wire \s_axi_rdata_i_reg[3]_0 ;
  wire \s_axi_rdata_i_reg[3]_1 ;
  wire \s_axi_rdata_i_reg[4] ;
  wire \s_axi_rdata_i_reg[5] ;
  wire \s_axi_rdata_i_reg[6] ;
  wire [4:0]\s_axi_rdata_i_reg[6]_0 ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid_i_reg;
  wire [6:0]s_axi_wdata;
  wire s_axi_wdata_0_sn_1;
  wire s_axi_wdata_1_sn_1;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  assign s_axi_wdata_1_sp_1 = s_axi_wdata_1_sn_1;
  skrach_design_microblaze_0_axi_intc_0_slave_attachment I_SLAVE_ATTACHMENT
       (.Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_0(Bus_RNW_reg_reg_0),
        .Bus_RNW_reg_reg_1(Bus_RNW_reg_reg_1),
        .Bus_RNW_reg_reg_2(Bus_RNW_reg_reg_2),
        .Bus_RNW_reg_reg_3(Bus_RNW_reg_reg_3),
        .Bus_RNW_reg_reg_4(Bus_RNW_reg_reg_4),
        .Bus_RNW_reg_reg_5(Bus_RNW_reg_reg_5),
        .\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] (\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_2 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_2 ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_3 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_3 ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_4 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_4 ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_5 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_5 ),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_0 (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_1 (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_0 ),
        .Or128_vec2stdlogic(Or128_vec2stdlogic),
        .Or128_vec2stdlogic19_out(Or128_vec2stdlogic19_out),
        .Q(Q),
        .\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] (\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ),
        .\REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] (\REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ),
        .\REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] (\REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ),
        .\REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] (\REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ),
        .\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] (\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .SR(SR),
        .\bus2ip_addr_i_reg[4]_0 (\bus2ip_addr_i_reg[4] ),
        .\bus2ip_addr_i_reg[4]_1 (\bus2ip_addr_i_reg[4]_0 ),
        .\bus2ip_addr_i_reg[5]_0 (\bus2ip_addr_i_reg[5] ),
        .bus2ip_wrce(bus2ip_wrce),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_rdack_int_d1(ip2bus_rdack_int_d1),
        .ip2bus_rdack_prev2(ip2bus_rdack_prev2),
        .ip2bus_wrack(ip2bus_wrack),
        .ip2bus_wrack_int_d1(ip2bus_wrack_int_d1),
        .ip2bus_wrack_prev2(ip2bus_wrack_prev2),
        .isr_en(isr_en),
        .\mer_int_reg[0] (\mer_int_reg[0] ),
        .p_0_in(p_0_in),
        .p_0_in11_in(p_0_in11_in),
        .p_0_in14_in(p_0_in14_in),
        .p_0_in19_in(p_0_in19_in),
        .p_0_in1_in(p_0_in1_in),
        .p_0_in20_in(p_0_in20_in),
        .p_0_in21_in(p_0_in21_in),
        .p_0_in22_in(p_0_in22_in),
        .p_0_in23_in(p_0_in23_in),
        .p_0_in24_in(p_0_in24_in),
        .p_0_in25_in(p_0_in25_in),
        .p_0_in26_in(p_0_in26_in),
        .p_0_in27_in(p_0_in27_in),
        .p_0_in29_in(p_0_in29_in),
        .p_0_in2_in(p_0_in2_in),
        .p_0_in31_in(p_0_in31_in),
        .p_0_in3_in(p_0_in3_in),
        .p_0_in5_in(p_0_in5_in),
        .p_0_in7_in(p_0_in7_in),
        .p_0_in8_in(p_0_in8_in),
        .p_0_in9_in(p_0_in9_in),
        .p_1_in(p_1_in),
        .p_1_in21_in(p_1_in21_in),
        .p_1_in23_in(p_1_in23_in),
        .p_1_in25_in(p_1_in25_in),
        .p_1_in27_in(p_1_in27_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(s_axi_aresetn_0),
        .s_axi_aresetn_1(s_axi_aresetn_1),
        .s_axi_aresetn_2(s_axi_aresetn_2),
        .s_axi_aresetn_3(s_axi_aresetn_3),
        .s_axi_aresetn_4(s_axi_aresetn_4),
        .s_axi_aresetn_5(s_axi_aresetn_5),
        .s_axi_aresetn_6(s_axi_aresetn_6),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i[2]_i_2_0 (\s_axi_rdata_i[2]_i_2 ),
        .\s_axi_rdata_i_reg[0]_0 (\s_axi_rdata_i_reg[0] ),
        .\s_axi_rdata_i_reg[1]_0 (\s_axi_rdata_i_reg[1] ),
        .\s_axi_rdata_i_reg[3]_0 (\s_axi_rdata_i_reg[3] ),
        .\s_axi_rdata_i_reg[3]_1 (\s_axi_rdata_i_reg[3]_0 ),
        .\s_axi_rdata_i_reg[3]_2 (\s_axi_rdata_i_reg[3]_1 ),
        .\s_axi_rdata_i_reg[4]_0 (\s_axi_rdata_i_reg[4] ),
        .\s_axi_rdata_i_reg[5]_0 (\s_axi_rdata_i_reg[5] ),
        .\s_axi_rdata_i_reg[6]_0 (\s_axi_rdata_i_reg[6] ),
        .\s_axi_rdata_i_reg[6]_1 (\s_axi_rdata_i_reg[6]_0 ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wdata_0_sp_1(s_axi_wdata_0_sn_1),
        .s_axi_wdata_1_sp_1(s_axi_wdata_1_sn_1),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "intc_core" *) 
module skrach_design_microblaze_0_axi_intc_0_intc_core
   (\REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0 ,
    SR,
    p_0_in14_in,
    \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]_0 ,
    p_0_in8_in,
    \REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]_0 ,
    p_0_in2_in,
    \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]_0 ,
    \IVR_GEN.ivr_reg[0]_0 ,
    irq,
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ,
    p_0_in11_in,
    p_0_in9_in,
    p_0_in7_in,
    p_0_in5_in,
    p_0_in3_in,
    p_0_in1_in,
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ,
    p_0_in31_in,
    p_0_in29_in,
    p_0_in27_in,
    p_0_in25_in,
    p_0_in23_in,
    p_0_in21_in,
    \mer_int_reg[0]_0 ,
    p_0_in,
    \IVR_GEN.ivr_reg[2]_0 ,
    \IVR_GEN.ivr_reg[1]_0 ,
    p_1_in27_in,
    p_1_in25_in,
    p_1_in23_in,
    p_1_in21_in,
    p_1_in,
    p_0_in19_in,
    p_0_in20_in,
    p_0_in22_in,
    p_0_in26_in,
    p_0_in24_in,
    \REG_GEN[0].ier_reg[0]_0 ,
    Q,
    \REG_GEN[1].ier_reg[1]_0 ,
    \IVR_GEN.ivr_reg[0]_1 ,
    \IVR_GEN.ivr_reg[0]_2 ,
    \IVR_GEN.ivr_reg[0]_3 ,
    \IVR_GEN.ivr_reg[0]_4 ,
    Douta,
    interrupt_address,
    bus2ip_wrce,
    s_axi_wdata,
    s_axi_aclk,
    intr,
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1 ,
    \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]_0 ,
    \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]_0 ,
    \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]_0 ,
    \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]_0 ,
    \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]_0 ,
    \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]_0 ,
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_1 ,
    \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0 ,
    \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0 ,
    \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ,
    \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0 ,
    \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0 ,
    \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ,
    \mer_int_reg[0]_1 ,
    \mer_int_reg[1]_0 ,
    s_axi_aresetn,
    \ram_i[0].Doutb_reg[0] ,
    \s_axi_rdata_i_reg[3] ,
    \s_axi_rdata_i_reg[3]_0 ,
    processor_ack,
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]_0 ,
    \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1]_0 ,
    \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]_0 ,
    \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]_0 ,
    \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4]_0 ,
    \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]_0 ,
    \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6]_0 ,
    isr_en);
  output \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0 ;
  output [0:0]SR;
  output p_0_in14_in;
  output \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]_0 ;
  output p_0_in8_in;
  output \REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]_0 ;
  output p_0_in2_in;
  output \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]_0 ;
  output \IVR_GEN.ivr_reg[0]_0 ;
  output irq;
  output \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ;
  output p_0_in11_in;
  output p_0_in9_in;
  output p_0_in7_in;
  output p_0_in5_in;
  output p_0_in3_in;
  output p_0_in1_in;
  output \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ;
  output p_0_in31_in;
  output p_0_in29_in;
  output p_0_in27_in;
  output p_0_in25_in;
  output p_0_in23_in;
  output p_0_in21_in;
  output \mer_int_reg[0]_0 ;
  output p_0_in;
  output \IVR_GEN.ivr_reg[2]_0 ;
  output \IVR_GEN.ivr_reg[1]_0 ;
  output p_1_in27_in;
  output p_1_in25_in;
  output p_1_in23_in;
  output p_1_in21_in;
  output p_1_in;
  output p_0_in19_in;
  output p_0_in20_in;
  output p_0_in22_in;
  output p_0_in26_in;
  output p_0_in24_in;
  output \REG_GEN[0].ier_reg[0]_0 ;
  output [4:0]Q;
  output \REG_GEN[1].ier_reg[1]_0 ;
  output \IVR_GEN.ivr_reg[0]_1 ;
  output \IVR_GEN.ivr_reg[0]_2 ;
  output \IVR_GEN.ivr_reg[0]_3 ;
  output \IVR_GEN.ivr_reg[0]_4 ;
  output [31:0]Douta;
  output [31:0]interrupt_address;
  input [2:0]bus2ip_wrce;
  input [31:0]s_axi_wdata;
  input s_axi_aclk;
  input [6:0]intr;
  input \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1 ;
  input \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]_0 ;
  input \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_1 ;
  input \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ;
  input \mer_int_reg[0]_1 ;
  input \mer_int_reg[1]_0 ;
  input s_axi_aresetn;
  input [3:0]\ram_i[0].Doutb_reg[0] ;
  input \s_axi_rdata_i_reg[3] ;
  input \s_axi_rdata_i_reg[3]_0 ;
  input [1:0]processor_ack;
  input \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]_0 ;
  input \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1]_0 ;
  input \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]_0 ;
  input \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]_0 ;
  input \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4]_0 ;
  input \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]_0 ;
  input \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6]_0 ;
  input isr_en;

  wire \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1_n_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_1 ;
  wire \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ;
  wire [31:0]Douta;
  wire \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_1_n_0 ;
  wire \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_3_n_0 ;
  wire \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_4_n_0 ;
  wire \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_2_n_0 ;
  wire \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg_n_0 ;
  wire \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1_reg_n_0 ;
  wire \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg_n_0 ;
  wire \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1_reg_n_0 ;
  wire \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg_n_0 ;
  wire \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg_n_0 ;
  wire \IPR_GEN.ipr[0]_i_1_n_0 ;
  wire \IPR_GEN.ipr[1]_i_1_n_0 ;
  wire \IPR_GEN.ipr[2]_i_1_n_0 ;
  wire \IPR_GEN.ipr[3]_i_1_n_0 ;
  wire \IPR_GEN.ipr[4]_i_1_n_0 ;
  wire \IPR_GEN.ipr[5]_i_1_n_0 ;
  wire \IPR_GEN.ipr[6]_i_1_n_0 ;
  wire \IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.in_idle_reg_n_0 ;
  wire \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk[0]_i_1_n_0 ;
  wire \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk[1]_i_1_n_0 ;
  wire \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk[2]_i_1_n_0 ;
  wire \IVR_GEN.ivr[0]_i_1_n_0 ;
  wire \IVR_GEN.ivr[0]_i_2_n_0 ;
  wire \IVR_GEN.ivr[1]_i_1_n_0 ;
  wire \IVR_GEN.ivr[1]_i_2_n_0 ;
  wire \IVR_GEN.ivr[2]_i_1_n_0 ;
  wire \IVR_GEN.ivr[2]_i_2_n_0 ;
  wire \IVR_GEN.ivr_reg[0]_0 ;
  wire \IVR_GEN.ivr_reg[0]_1 ;
  wire \IVR_GEN.ivr_reg[0]_2 ;
  wire \IVR_GEN.ivr_reg[0]_3 ;
  wire \IVR_GEN.ivr_reg[0]_4 ;
  wire \IVR_GEN.ivr_reg[1]_0 ;
  wire \IVR_GEN.ivr_reg[2]_0 ;
  wire Irq_i;
  wire [4:0]Q;
  wire \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_1_n_0 ;
  wire \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_3_n_0 ;
  wire \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]_0 ;
  wire \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0] ;
  wire \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0 ;
  wire \REG_GEN[0].ier[0]_i_1_n_0 ;
  wire \REG_GEN[0].ier_reg[0]_0 ;
  wire \REG_GEN[0].ier_reg_n_0_[0] ;
  wire \REG_GEN[0].isr[0]_i_1_n_0 ;
  wire \REG_GEN[0].isr_reg_n_0_[0] ;
  wire \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_1_n_0 ;
  wire \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_3_n_0 ;
  wire \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1]_0 ;
  wire \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1] ;
  wire \REG_GEN[1].ier[1]_i_1_n_0 ;
  wire \REG_GEN[1].ier_reg[1]_0 ;
  wire \REG_GEN[1].isr[1]_i_1_n_0 ;
  wire \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_1_n_0 ;
  wire \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_3_n_0 ;
  wire \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]_0 ;
  wire \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]_0 ;
  wire \REG_GEN[2].ier[2]_i_1_n_0 ;
  wire \REG_GEN[2].isr[2]_i_1_n_0 ;
  wire \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_1_n_0 ;
  wire \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_3_n_0 ;
  wire \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]_0 ;
  wire \REG_GEN[3].ier[3]_i_1_n_0 ;
  wire \REG_GEN[3].isr[3]_i_1_n_0 ;
  wire \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_1_n_0 ;
  wire \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_3_n_0 ;
  wire \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4]_0 ;
  wire \REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]_0 ;
  wire \REG_GEN[4].ier[4]_i_1_n_0 ;
  wire \REG_GEN[4].isr[4]_i_1_n_0 ;
  wire \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_1_n_0 ;
  wire \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_3_n_0 ;
  wire \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]_0 ;
  wire \REG_GEN[5].ier[5]_i_1_n_0 ;
  wire \REG_GEN[5].isr[5]_i_1_n_0 ;
  wire \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_1_n_0 ;
  wire \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_3_n_0 ;
  wire \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6]_0 ;
  wire \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]_0 ;
  wire \REG_GEN[6].ier[6]_i_1_n_0 ;
  wire \REG_GEN[6].isr[6]_i_1_n_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1 ;
  wire \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]_0 ;
  wire [0:0]SR;
  wire ack_b01;
  wire ack_or;
  wire ack_or_i;
  wire ack_or_i_2_n_0;
  wire [2:0]bus2ip_wrce;
  wire [1:0]current_state;
  wire first_ack;
  wire first_ack_active;
  wire [6:0]hw_intr;
  wire idle_and_irq;
  wire idle_and_irq_d1;
  wire in_idle;
  wire [31:0]interrupt_address;
  wire [6:0]intr;
  wire intr_d1;
  (* async_reg = "true" *) wire [0:1]intr_ff;
  (* async_reg = "true" *) wire [0:1]intr_ff__0;
  (* async_reg = "true" *) wire [0:1]intr_ff__1;
  (* async_reg = "true" *) wire [0:1]intr_ff__2;
  (* async_reg = "true" *) wire [0:1]intr_ff__3;
  wire [1:0]ipr;
  wire irq;
  wire irq_gen;
  wire irq_gen_i;
  wire irq_gen_i_2_n_0;
  wire isr_en;
  wire [2:0]ivar_index_axi_clk;
  wire ivar_index_sample_en;
  wire ivar_index_sample_en_i;
  wire \mer_int_reg[0]_0 ;
  wire \mer_int_reg[0]_1 ;
  wire \mer_int_reg[1]_0 ;
  wire p_0_in;
  wire p_0_in11_in;
  wire p_0_in14_in;
  wire p_0_in19_in;
  wire p_0_in1_in;
  wire p_0_in20_in;
  wire p_0_in21_in;
  wire p_0_in22_in;
  wire p_0_in23_in;
  wire p_0_in24_in;
  wire p_0_in25_in;
  wire p_0_in26_in;
  wire p_0_in27_in;
  wire p_0_in28_in;
  wire p_0_in29_in;
  wire p_0_in2_in;
  wire p_0_in31_in;
  wire p_0_in3_in;
  wire p_0_in5_in;
  wire p_0_in7_in;
  wire p_0_in8_in;
  wire p_0_in9_in;
  wire p_14_out;
  wire p_15_out;
  wire p_16_out;
  wire p_17_out;
  wire p_18_out;
  wire p_19_out;
  wire p_1_in;
  wire p_1_in21_in;
  wire p_1_in23_in;
  wire p_1_in25_in;
  wire p_1_in27_in;
  wire p_1_in29_in;
  wire p_20_out;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_83_out;
  wire [1:0]processor_ack;
  wire [3:0]\ram_i[0].Doutb_reg[0] ;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire \s_axi_rdata_i_reg[3] ;
  wire \s_axi_rdata_i_reg[3]_0 ;
  wire [31:0]s_axi_wdata;
  wire second_ack;
  wire second_ack_sync_d1;
  wire second_ack_sync_d2;

  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1 
       (.I0(processor_ack[0]),
        .I1(processor_ack[1]),
        .I2(first_ack_active),
        .O(\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1_n_0 ));
  FDRE \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1_n_0 ),
        .Q(first_ack_active),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_i_1 
       (.I0(processor_ack[0]),
        .I1(processor_ack[1]),
        .O(ack_b01));
  FDRE \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ack_b01),
        .Q(first_ack),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.second_ack_i_1 
       (.I0(first_ack_active),
        .I1(processor_ack[1]),
        .O(p_83_out));
  FDRE \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.second_ack_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_83_out),
        .Q(second_ack),
        .R(SR));
  FDRE \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.second_ack_sync_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(second_ack),
        .Q(second_ack_sync_d1),
        .R(SR));
  FDRE \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.second_ack_sync_d2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(second_ack_sync_d1),
        .Q(second_ack_sync_d2),
        .R(SR));
  FDRE \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_1 ),
        .Q(\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0 ),
        .Q(p_0_in31_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0 ),
        .Q(p_0_in29_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ),
        .Q(p_0_in27_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0 ),
        .Q(p_0_in25_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0 ),
        .Q(p_0_in23_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ),
        .Q(p_0_in21_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000500CC00F500CC)) 
    \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[0]_i_1 
       (.I0(ack_or),
        .I1(ivar_index_sample_en),
        .I2(\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_2_n_0 ),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(first_ack),
        .O(\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h0C500050)) 
    \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_1 
       (.I0(second_ack_sync_d2),
        .I1(\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_2_n_0 ),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(first_ack),
        .O(\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_3 
       (.I0(p_0_in14_in),
        .I1(p_0_in8_in),
        .I2(ivar_index_axi_clk[1]),
        .I3(\REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0 ),
        .I4(ivar_index_axi_clk[0]),
        .I5(\REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]_0 ),
        .O(\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_4 
       (.I0(ivar_index_axi_clk[0]),
        .I1(\REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]_0 ),
        .I2(p_0_in2_in),
        .I3(ivar_index_axi_clk[1]),
        .I4(\REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]_0 ),
        .O(\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "gen_level_irq:01,wait_ack:10,idle:00" *) 
  FDRE \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[0]_i_1_n_0 ),
        .Q(current_state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "gen_level_irq:01,wait_ack:10,idle:00" *) 
  FDRE \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_1_n_0 ),
        .Q(current_state[1]),
        .R(SR));
  MUXF7 \FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_2 
       (.I0(\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_3_n_0 ),
        .I1(\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state[1]_i_4_n_0 ),
        .O(\FSM_sequential_IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_2_n_0 ),
        .S(ivar_index_axi_clk[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1 
       (.I0(hw_intr[0]),
        .I1(intr[0]),
        .I2(intr_d1),
        .I3(s_axi_aresetn),
        .I4(\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0] ),
        .O(\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1_n_0 ),
        .Q(hw_intr[0]),
        .R(1'b0));
  FDRE \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[0]),
        .Q(intr_d1),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1 
       (.I0(hw_intr[1]),
        .I1(intr[1]),
        .I2(\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .I3(s_axi_aresetn),
        .I4(\REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1] ),
        .O(\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1_n_0 ),
        .Q(hw_intr[1]),
        .R(1'b0));
  FDRE \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[1]),
        .Q(\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[2]),
        .Q(intr_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_ff[0]),
        .Q(intr_ff[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1 
       (.I0(hw_intr[2]),
        .I1(intr_ff[1]),
        .I2(\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .I3(s_axi_aresetn),
        .I4(p_2_in),
        .O(\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1_n_0 ),
        .Q(hw_intr[2]),
        .R(1'b0));
  FDRE \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_ff[1]),
        .Q(\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[3]),
        .Q(intr_ff__0[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_ff__0[0]),
        .Q(intr_ff__0[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1 
       (.I0(hw_intr[3]),
        .I1(intr_ff__0[1]),
        .I2(\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .I3(s_axi_aresetn),
        .I4(p_3_in),
        .O(\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1_n_0 ),
        .Q(hw_intr[3]),
        .R(1'b0));
  FDRE \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_ff__0[1]),
        .Q(\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[4]),
        .Q(intr_ff__1[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_ff__1[0]),
        .Q(intr_ff__1[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1 
       (.I0(hw_intr[4]),
        .I1(intr_ff__1[1]),
        .I2(\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .I3(s_axi_aresetn),
        .I4(p_4_in),
        .O(\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1_n_0 ),
        .Q(hw_intr[4]),
        .R(1'b0));
  FDRE \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_ff__1[1]),
        .Q(\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[5]),
        .Q(intr_ff__2[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_ff__2[0]),
        .Q(intr_ff__2[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1 
       (.I0(hw_intr[5]),
        .I1(intr_ff__2[1]),
        .I2(\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .I3(s_axi_aresetn),
        .I4(p_5_in),
        .O(\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1_n_0 ),
        .Q(hw_intr[5]),
        .R(1'b0));
  FDRE \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_ff__2[1]),
        .Q(\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[6]),
        .Q(intr_ff__3[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_ff__3[0]),
        .Q(intr_ff__3[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1 
       (.I0(hw_intr[6]),
        .I1(intr_ff__3[1]),
        .I2(\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .I3(s_axi_aresetn),
        .I4(p_6_in),
        .O(\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1_n_0 ),
        .Q(hw_intr[6]),
        .R(1'b0));
  FDRE \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_ff__3[1]),
        .Q(\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[0]_i_1 
       (.I0(\REG_GEN[0].ier_reg_n_0_[0] ),
        .I1(\REG_GEN[0].isr_reg_n_0_[0] ),
        .O(\IPR_GEN.ipr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[1]_i_1 
       (.I0(p_0_in28_in),
        .I1(p_1_in29_in),
        .O(\IPR_GEN.ipr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[2]_i_1 
       (.I0(p_0_in26_in),
        .I1(p_1_in27_in),
        .O(\IPR_GEN.ipr[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[3]_i_1 
       (.I0(p_0_in24_in),
        .I1(p_1_in25_in),
        .O(\IPR_GEN.ipr[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[4]_i_1 
       (.I0(p_0_in22_in),
        .I1(p_1_in23_in),
        .O(\IPR_GEN.ipr[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[5]_i_1 
       (.I0(p_0_in20_in),
        .I1(p_1_in21_in),
        .O(\IPR_GEN.ipr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[6]_i_1 
       (.I0(p_0_in19_in),
        .I1(p_1_in),
        .O(\IPR_GEN.ipr[6]_i_1_n_0 ));
  FDRE \IPR_GEN.ipr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[0]_i_1_n_0 ),
        .Q(ipr[0]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[1]_i_1_n_0 ),
        .Q(ipr[1]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[2]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[3]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[4]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[5]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[6]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.Irq_i_1 
       (.I0(s_axi_aresetn),
        .O(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.Irq_i_2 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(Irq_i));
  FDRE \IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.Irq_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Irq_i),
        .Q(irq),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.in_idle_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .O(in_idle));
  FDRE \IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.in_idle_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in_idle),
        .Q(\IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.in_idle_reg_n_0 ),
        .R(SR));
  skrach_design_microblaze_0_axi_intc_0_shared_ram_ivar \IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I 
       (.Douta(Douta),
        .bus2ip_wrce(bus2ip_wrce[0]),
        .interrupt_address(interrupt_address),
        .ivar_index_axi_clk(ivar_index_axi_clk),
        .\ram_i[0].Doutb_reg[0]_0 (\ram_i[0].Doutb_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.idle_and_irq_d1_i_1 
       (.I0(\mer_int_reg[0]_0 ),
        .I1(irq_gen),
        .I2(\IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.in_idle_reg_n_0 ),
        .O(idle_and_irq));
  FDRE \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.idle_and_irq_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(idle_and_irq),
        .Q(idle_and_irq_d1),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk[0]_i_1 
       (.I0(\IVR_GEN.ivr_reg[0]_0 ),
        .I1(\IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.in_idle_reg_n_0 ),
        .I2(irq_gen),
        .I3(\mer_int_reg[0]_0 ),
        .I4(idle_and_irq_d1),
        .I5(ivar_index_axi_clk[0]),
        .O(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk[1]_i_1 
       (.I0(\IVR_GEN.ivr_reg[1]_0 ),
        .I1(\IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.in_idle_reg_n_0 ),
        .I2(irq_gen),
        .I3(\mer_int_reg[0]_0 ),
        .I4(idle_and_irq_d1),
        .I5(ivar_index_axi_clk[1]),
        .O(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk[2]_i_1 
       (.I0(\IVR_GEN.ivr_reg[2]_0 ),
        .I1(\IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.in_idle_reg_n_0 ),
        .I2(irq_gen),
        .I3(\mer_int_reg[0]_0 ),
        .I4(idle_and_irq_d1),
        .I5(ivar_index_axi_clk[2]),
        .O(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk[2]_i_1_n_0 ));
  FDRE \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk[0]_i_1_n_0 ),
        .Q(ivar_index_axi_clk[0]),
        .R(SR));
  FDRE \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk[1]_i_1_n_0 ),
        .Q(ivar_index_axi_clk[1]),
        .R(SR));
  FDRE \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk[2]_i_1_n_0 ),
        .Q(ivar_index_axi_clk[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_sample_en_i_1 
       (.I0(\IRQ_LEVEL_GEN.IRQ_LEVEL_FAST_ON_AXI_CLK_GEN.in_idle_reg_n_0 ),
        .I1(irq_gen),
        .I2(\mer_int_reg[0]_0 ),
        .I3(idle_and_irq_d1),
        .O(ivar_index_sample_en_i));
  FDRE \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_sample_en_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ivar_index_sample_en_i),
        .Q(ivar_index_sample_en),
        .R(SR));
  LUT6 #(
    .INIT(64'h2F2020202F2F2F2F)) 
    \IVR_GEN.ivr[0]_i_1 
       (.I0(\IVR_GEN.ivr[0]_i_2_n_0 ),
        .I1(\IPR_GEN.ipr[0]_i_1_n_0 ),
        .I2(irq_gen_i_2_n_0),
        .I3(p_0_in20_in),
        .I4(p_1_in21_in),
        .I5(\IPR_GEN.ipr[6]_i_1_n_0 ),
        .O(\IVR_GEN.ivr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF700070007000)) 
    \IVR_GEN.ivr[0]_i_2 
       (.I0(p_0_in26_in),
        .I1(p_1_in27_in),
        .I2(p_0_in24_in),
        .I3(p_1_in25_in),
        .I4(p_1_in29_in),
        .I5(p_0_in28_in),
        .O(\IVR_GEN.ivr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00FF07FF)) 
    \IVR_GEN.ivr[1]_i_1 
       (.I0(p_1_in21_in),
        .I1(p_0_in20_in),
        .I2(\IPR_GEN.ipr[4]_i_1_n_0 ),
        .I3(s_axi_aresetn),
        .I4(\IVR_GEN.ivr[1]_i_2_n_0 ),
        .I5(\IVR_GEN.ivr[2]_i_2_n_0 ),
        .O(\IVR_GEN.ivr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \IVR_GEN.ivr[1]_i_2 
       (.I0(p_1_in29_in),
        .I1(p_0_in28_in),
        .I2(\REG_GEN[0].isr_reg_n_0_[0] ),
        .I3(\REG_GEN[0].ier_reg_n_0_[0] ),
        .O(\IVR_GEN.ivr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000777FFFFFFFF)) 
    \IVR_GEN.ivr[2]_i_1 
       (.I0(\REG_GEN[0].ier_reg_n_0_[0] ),
        .I1(\REG_GEN[0].isr_reg_n_0_[0] ),
        .I2(p_0_in28_in),
        .I3(p_1_in29_in),
        .I4(\IVR_GEN.ivr[2]_i_2_n_0 ),
        .I5(s_axi_aresetn),
        .O(\IVR_GEN.ivr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \IVR_GEN.ivr[2]_i_2 
       (.I0(p_1_in27_in),
        .I1(p_0_in26_in),
        .I2(p_1_in25_in),
        .I3(p_0_in24_in),
        .O(\IVR_GEN.ivr[2]_i_2_n_0 ));
  FDSE \IVR_GEN.ivr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IVR_GEN.ivr[0]_i_1_n_0 ),
        .Q(\IVR_GEN.ivr_reg[0]_0 ),
        .S(SR));
  FDRE \IVR_GEN.ivr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IVR_GEN.ivr[1]_i_1_n_0 ),
        .Q(\IVR_GEN.ivr_reg[1]_0 ),
        .R(1'b0));
  FDRE \IVR_GEN.ivr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IVR_GEN.ivr[2]_i_1_n_0 ),
        .Q(\IVR_GEN.ivr_reg[2]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EA400000)) 
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_1 
       (.I0(\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]_0 ),
        .I1(\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_3_n_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[0]),
        .I4(s_axi_aresetn),
        .I5(\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0] ),
        .O(\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_3 
       (.I0(ivar_index_axi_clk[0]),
        .I1(\REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0 ),
        .I2(first_ack),
        .I3(ivar_index_axi_clk[1]),
        .I4(ivar_index_axi_clk[2]),
        .O(\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_3_n_0 ));
  FDRE \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_1_n_0 ),
        .Q(\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[0]),
        .Q(\REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[0].ier[0]_i_1 
       (.I0(\REG_GEN[0].ier_reg_n_0_[0] ),
        .I1(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ),
        .I2(bus2ip_wrce[2]),
        .I3(s_axi_wdata[0]),
        .I4(s_axi_aresetn),
        .I5(\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ),
        .O(\REG_GEN[0].ier[0]_i_1_n_0 ));
  FDRE \REG_GEN[0].ier_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[0].ier[0]_i_1_n_0 ),
        .Q(\REG_GEN[0].ier_reg_n_0_[0] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \REG_GEN[0].isr[0]_i_1 
       (.I0(\REG_GEN[0].isr_reg_n_0_[0] ),
        .I1(isr_en),
        .I2(s_axi_wdata[0]),
        .I3(p_0_in),
        .I4(hw_intr[0]),
        .I5(p_20_out),
        .O(\REG_GEN[0].isr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[0].isr[0]_i_3 
       (.I0(\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0] ),
        .I1(s_axi_aresetn),
        .O(p_20_out));
  FDRE \REG_GEN[0].isr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[0].isr[0]_i_1_n_0 ),
        .Q(\REG_GEN[0].isr_reg_n_0_[0] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EA400000)) 
    \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_1 
       (.I0(\REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1]_0 ),
        .I1(\REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_3_n_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[1]),
        .I4(s_axi_aresetn),
        .I5(\REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1] ),
        .O(\REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_3 
       (.I0(p_0_in14_in),
        .I1(ivar_index_axi_clk[0]),
        .I2(first_ack),
        .I3(ivar_index_axi_clk[1]),
        .I4(ivar_index_axi_clk[2]),
        .O(\REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_3_n_0 ));
  FDRE \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_1_n_0 ),
        .Q(\REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[1]),
        .Q(p_0_in14_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[1].ier[1]_i_1 
       (.I0(p_0_in28_in),
        .I1(p_0_in11_in),
        .I2(bus2ip_wrce[2]),
        .I3(s_axi_wdata[1]),
        .I4(s_axi_aresetn),
        .I5(p_0_in31_in),
        .O(\REG_GEN[1].ier[1]_i_1_n_0 ));
  FDRE \REG_GEN[1].ier_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[1].ier[1]_i_1_n_0 ),
        .Q(p_0_in28_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \REG_GEN[1].isr[1]_i_1 
       (.I0(p_1_in29_in),
        .I1(isr_en),
        .I2(s_axi_wdata[1]),
        .I3(p_0_in),
        .I4(hw_intr[1]),
        .I5(p_19_out),
        .O(\REG_GEN[1].isr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[1].isr[1]_i_2 
       (.I0(\REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1] ),
        .I1(s_axi_aresetn),
        .O(p_19_out));
  FDRE \REG_GEN[1].isr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[1].isr[1]_i_1_n_0 ),
        .Q(p_1_in29_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EA400000)) 
    \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_1 
       (.I0(\REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]_0 ),
        .I1(\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_3_n_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[2]),
        .I4(s_axi_aresetn),
        .I5(p_2_in),
        .O(\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_3 
       (.I0(ivar_index_axi_clk[0]),
        .I1(\REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]_0 ),
        .I2(first_ack),
        .I3(ivar_index_axi_clk[1]),
        .I4(ivar_index_axi_clk[2]),
        .O(\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_3_n_0 ));
  FDRE \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_1_n_0 ),
        .Q(p_2_in),
        .R(1'b0));
  FDRE \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[2]),
        .Q(\REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[2].ier[2]_i_1 
       (.I0(p_0_in26_in),
        .I1(p_0_in9_in),
        .I2(bus2ip_wrce[2]),
        .I3(s_axi_wdata[2]),
        .I4(s_axi_aresetn),
        .I5(p_0_in29_in),
        .O(\REG_GEN[2].ier[2]_i_1_n_0 ));
  FDRE \REG_GEN[2].ier_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[2].ier[2]_i_1_n_0 ),
        .Q(p_0_in26_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \REG_GEN[2].isr[2]_i_1 
       (.I0(p_1_in27_in),
        .I1(isr_en),
        .I2(s_axi_wdata[2]),
        .I3(p_0_in),
        .I4(hw_intr[2]),
        .I5(p_18_out),
        .O(\REG_GEN[2].isr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[2].isr[2]_i_2 
       (.I0(p_2_in),
        .I1(s_axi_aresetn),
        .O(p_18_out));
  FDRE \REG_GEN[2].isr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[2].isr[2]_i_1_n_0 ),
        .Q(p_1_in27_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EA400000)) 
    \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_1 
       (.I0(\REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]_0 ),
        .I1(\REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_3_n_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[3]),
        .I4(s_axi_aresetn),
        .I5(p_3_in),
        .O(\REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_3 
       (.I0(p_0_in8_in),
        .I1(ivar_index_axi_clk[0]),
        .I2(first_ack),
        .I3(ivar_index_axi_clk[1]),
        .I4(ivar_index_axi_clk[2]),
        .O(\REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_3_n_0 ));
  FDRE \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_1_n_0 ),
        .Q(p_3_in),
        .R(1'b0));
  FDRE \REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[3]),
        .Q(p_0_in8_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[3].ier[3]_i_1 
       (.I0(p_0_in24_in),
        .I1(p_0_in7_in),
        .I2(bus2ip_wrce[2]),
        .I3(s_axi_wdata[3]),
        .I4(s_axi_aresetn),
        .I5(p_0_in27_in),
        .O(\REG_GEN[3].ier[3]_i_1_n_0 ));
  FDRE \REG_GEN[3].ier_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[3].ier[3]_i_1_n_0 ),
        .Q(p_0_in24_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \REG_GEN[3].isr[3]_i_1 
       (.I0(p_1_in25_in),
        .I1(isr_en),
        .I2(s_axi_wdata[3]),
        .I3(p_0_in),
        .I4(hw_intr[3]),
        .I5(p_17_out),
        .O(\REG_GEN[3].isr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[3].isr[3]_i_2 
       (.I0(p_3_in),
        .I1(s_axi_aresetn),
        .O(p_17_out));
  FDRE \REG_GEN[3].isr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[3].isr[3]_i_1_n_0 ),
        .Q(p_1_in25_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EA400000)) 
    \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_1 
       (.I0(\REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4]_0 ),
        .I1(\REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_3_n_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[4]),
        .I4(s_axi_aresetn),
        .I5(p_4_in),
        .O(\REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_3 
       (.I0(first_ack),
        .I1(ivar_index_axi_clk[0]),
        .I2(ivar_index_axi_clk[1]),
        .I3(\REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]_0 ),
        .I4(ivar_index_axi_clk[2]),
        .O(\REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_3_n_0 ));
  FDRE \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_1_n_0 ),
        .Q(p_4_in),
        .R(1'b0));
  FDRE \REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[4]),
        .Q(\REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[4].ier[4]_i_1 
       (.I0(p_0_in22_in),
        .I1(p_0_in5_in),
        .I2(bus2ip_wrce[2]),
        .I3(s_axi_wdata[4]),
        .I4(s_axi_aresetn),
        .I5(p_0_in25_in),
        .O(\REG_GEN[4].ier[4]_i_1_n_0 ));
  FDRE \REG_GEN[4].ier_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[4].ier[4]_i_1_n_0 ),
        .Q(p_0_in22_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \REG_GEN[4].isr[4]_i_1 
       (.I0(p_1_in23_in),
        .I1(isr_en),
        .I2(s_axi_wdata[4]),
        .I3(p_0_in),
        .I4(hw_intr[4]),
        .I5(p_16_out),
        .O(\REG_GEN[4].isr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[4].isr[4]_i_2 
       (.I0(p_4_in),
        .I1(s_axi_aresetn),
        .O(p_16_out));
  FDRE \REG_GEN[4].isr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[4].isr[4]_i_1_n_0 ),
        .Q(p_1_in23_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EA400000)) 
    \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_1 
       (.I0(\REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]_0 ),
        .I1(\REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_3_n_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[5]),
        .I4(s_axi_aresetn),
        .I5(p_5_in),
        .O(\REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_3 
       (.I0(first_ack),
        .I1(ivar_index_axi_clk[0]),
        .I2(ivar_index_axi_clk[1]),
        .I3(p_0_in2_in),
        .I4(ivar_index_axi_clk[2]),
        .O(\REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_3_n_0 ));
  FDRE \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_1_n_0 ),
        .Q(p_5_in),
        .R(1'b0));
  FDRE \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[5]),
        .Q(p_0_in2_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[5].ier[5]_i_1 
       (.I0(p_0_in20_in),
        .I1(p_0_in3_in),
        .I2(bus2ip_wrce[2]),
        .I3(s_axi_wdata[5]),
        .I4(s_axi_aresetn),
        .I5(p_0_in23_in),
        .O(\REG_GEN[5].ier[5]_i_1_n_0 ));
  FDRE \REG_GEN[5].ier_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[5].ier[5]_i_1_n_0 ),
        .Q(p_0_in20_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \REG_GEN[5].isr[5]_i_1 
       (.I0(p_1_in21_in),
        .I1(isr_en),
        .I2(s_axi_wdata[5]),
        .I3(p_0_in),
        .I4(hw_intr[5]),
        .I5(p_15_out),
        .O(\REG_GEN[5].isr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[5].isr[5]_i_2 
       (.I0(p_5_in),
        .I1(s_axi_aresetn),
        .O(p_15_out));
  FDRE \REG_GEN[5].isr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[5].isr[5]_i_1_n_0 ),
        .Q(p_1_in21_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EA400000)) 
    \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_1 
       (.I0(\REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6]_0 ),
        .I1(\REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_3_n_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[6]),
        .I4(s_axi_aresetn),
        .I5(p_6_in),
        .O(\REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_3 
       (.I0(first_ack),
        .I1(ivar_index_axi_clk[1]),
        .I2(ivar_index_axi_clk[0]),
        .I3(\REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]_0 ),
        .I4(ivar_index_axi_clk[2]),
        .O(\REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_3_n_0 ));
  FDRE \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_1_n_0 ),
        .Q(p_6_in),
        .R(1'b0));
  FDRE \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[6]),
        .Q(\REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \REG_GEN[6].ier[6]_i_1 
       (.I0(p_0_in19_in),
        .I1(p_0_in1_in),
        .I2(bus2ip_wrce[2]),
        .I3(s_axi_wdata[6]),
        .I4(s_axi_aresetn),
        .I5(p_0_in21_in),
        .O(\REG_GEN[6].ier[6]_i_1_n_0 ));
  FDRE \REG_GEN[6].ier_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[6].ier[6]_i_1_n_0 ),
        .Q(p_0_in19_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \REG_GEN[6].isr[6]_i_1 
       (.I0(p_1_in),
        .I1(isr_en),
        .I2(s_axi_wdata[6]),
        .I3(p_0_in),
        .I4(hw_intr[6]),
        .I5(p_14_out),
        .O(\REG_GEN[6].isr[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[6].isr[6]_i_2 
       (.I0(p_6_in),
        .I1(s_axi_aresetn),
        .O(p_14_out));
  FDRE \REG_GEN[6].isr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[6].isr[6]_i_1_n_0 ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1 ),
        .Q(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]_0 ),
        .Q(p_0_in11_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]_0 ),
        .Q(p_0_in9_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]_0 ),
        .Q(p_0_in7_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]_0 ),
        .Q(p_0_in5_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]_0 ),
        .Q(p_0_in3_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]_0 ),
        .Q(p_0_in1_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ack_or_i_1
       (.I0(ack_or_i_2_n_0),
        .I1(p_2_in),
        .I2(p_4_in),
        .I3(p_6_in),
        .O(ack_or_i));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ack_or_i_2
       (.I0(\REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1] ),
        .I1(\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0] ),
        .I2(p_5_in),
        .I3(p_3_in),
        .O(ack_or_i_2_n_0));
  FDRE ack_or_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ack_or_i),
        .Q(ack_or),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    irq_gen_i_1
       (.I0(p_1_in),
        .I1(p_0_in19_in),
        .I2(irq_gen_i_2_n_0),
        .I3(p_0_in20_in),
        .I4(p_1_in21_in),
        .O(irq_gen_i));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    irq_gen_i_2
       (.I0(p_1_in23_in),
        .I1(p_0_in22_in),
        .I2(\IVR_GEN.ivr[2]_i_2_n_0 ),
        .I3(p_1_in29_in),
        .I4(p_0_in28_in),
        .I5(\IPR_GEN.ipr[0]_i_1_n_0 ),
        .O(irq_gen_i_2_n_0));
  FDRE irq_gen_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irq_gen_i),
        .Q(irq_gen),
        .R(SR));
  FDRE \mer_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mer_int_reg[0]_1 ),
        .Q(\mer_int_reg[0]_0 ),
        .R(SR));
  FDRE \mer_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mer_int_reg[1]_0 ),
        .Q(p_0_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h000F0A0C00000A0C)) 
    \s_axi_rdata_i[0]_i_4 
       (.I0(\REG_GEN[0].ier_reg_n_0_[0] ),
        .I1(\REG_GEN[0].isr_reg_n_0_[0] ),
        .I2(\ram_i[0].Doutb_reg[0] [2]),
        .I3(\ram_i[0].Doutb_reg[0] [1]),
        .I4(\ram_i[0].Doutb_reg[0] [0]),
        .I5(ipr[0]),
        .O(\REG_GEN[0].ier_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h000F0A0C00000A0C)) 
    \s_axi_rdata_i[1]_i_4 
       (.I0(p_0_in28_in),
        .I1(p_1_in29_in),
        .I2(\ram_i[0].Doutb_reg[0] [2]),
        .I3(\ram_i[0].Doutb_reg[0] [1]),
        .I4(\ram_i[0].Doutb_reg[0] [0]),
        .I5(ipr[1]),
        .O(\REG_GEN[1].ier_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h000000000000F7FF)) 
    \s_axi_rdata_i[3]_i_2 
       (.I0(\IVR_GEN.ivr_reg[0]_0 ),
        .I1(\IVR_GEN.ivr_reg[1]_0 ),
        .I2(\ram_i[0].Doutb_reg[0] [3]),
        .I3(\s_axi_rdata_i_reg[3] ),
        .I4(\s_axi_rdata_i_reg[3]_0 ),
        .I5(p_0_in8_in),
        .O(\IVR_GEN.ivr_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000000000000F7FF)) 
    \s_axi_rdata_i[4]_i_2 
       (.I0(\IVR_GEN.ivr_reg[0]_0 ),
        .I1(\IVR_GEN.ivr_reg[1]_0 ),
        .I2(\ram_i[0].Doutb_reg[0] [3]),
        .I3(\s_axi_rdata_i_reg[3] ),
        .I4(\s_axi_rdata_i_reg[3]_0 ),
        .I5(\REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]_0 ),
        .O(\IVR_GEN.ivr_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h000000000000F7FF)) 
    \s_axi_rdata_i[5]_i_2 
       (.I0(\IVR_GEN.ivr_reg[0]_0 ),
        .I1(\IVR_GEN.ivr_reg[1]_0 ),
        .I2(\ram_i[0].Doutb_reg[0] [3]),
        .I3(\s_axi_rdata_i_reg[3] ),
        .I4(\s_axi_rdata_i_reg[3]_0 ),
        .I5(p_0_in2_in),
        .O(\IVR_GEN.ivr_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h000000000000F7FF)) 
    \s_axi_rdata_i[6]_i_2 
       (.I0(\IVR_GEN.ivr_reg[0]_0 ),
        .I1(\IVR_GEN.ivr_reg[1]_0 ),
        .I2(\ram_i[0].Doutb_reg[0] [3]),
        .I3(\s_axi_rdata_i_reg[3] ),
        .I4(\s_axi_rdata_i_reg[3]_0 ),
        .I5(\REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]_0 ),
        .O(\IVR_GEN.ivr_reg[0]_4 ));
endmodule

(* ORIG_REF_NAME = "shared_ram_ivar" *) 
module skrach_design_microblaze_0_axi_intc_0_shared_ram_ivar
   (Douta,
    interrupt_address,
    s_axi_aclk,
    s_axi_wdata,
    bus2ip_wrce,
    \ram_i[0].Doutb_reg[0]_0 ,
    ivar_index_axi_clk);
  output [31:0]Douta;
  output [31:0]interrupt_address;
  input s_axi_aclk;
  input [31:0]s_axi_wdata;
  input [0:0]bus2ip_wrce;
  input [3:0]\ram_i[0].Doutb_reg[0]_0 ;
  input [2:0]ivar_index_axi_clk;

  wire [31:0]Douta;
  wire [0:0]bus2ip_wrce;
  wire [31:0]interrupt_address;
  wire [2:0]ivar_index_axi_clk;
  wire [31:0]p_0_in__0;
  wire [31:0]p_3_out;
  wire [3:0]\ram_i[0].Doutb_reg[0]_0 ;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  FDRE \ram_i[0].Douta_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(Douta[0]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[10]),
        .Q(Douta[10]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[11]),
        .Q(Douta[11]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[12]),
        .Q(Douta[12]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[13]),
        .Q(Douta[13]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[14]),
        .Q(Douta[14]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[15]),
        .Q(Douta[15]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[16]),
        .Q(Douta[16]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[17]),
        .Q(Douta[17]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[18]),
        .Q(Douta[18]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[19]),
        .Q(Douta[19]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(Douta[1]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[20]),
        .Q(Douta[20]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[21]),
        .Q(Douta[21]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[22]),
        .Q(Douta[22]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[23]),
        .Q(Douta[23]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[24]),
        .Q(Douta[24]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[25]),
        .Q(Douta[25]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[26]),
        .Q(Douta[26]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[27]),
        .Q(Douta[27]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[28]),
        .Q(Douta[28]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[29]),
        .Q(Douta[29]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(Douta[2]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[30]),
        .Q(Douta[30]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[31]),
        .Q(Douta[31]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(Douta[3]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(Douta[4]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(Douta[5]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(Douta[6]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(Douta[7]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(Douta[8]),
        .R(1'b0));
  FDRE \ram_i[0].Douta_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[9]),
        .Q(Douta[9]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[0]),
        .Q(interrupt_address[0]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[10]),
        .Q(interrupt_address[10]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[11]),
        .Q(interrupt_address[11]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[12]),
        .Q(interrupt_address[12]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[13]),
        .Q(interrupt_address[13]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[14]),
        .Q(interrupt_address[14]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[15]),
        .Q(interrupt_address[15]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[16]),
        .Q(interrupt_address[16]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[17]),
        .Q(interrupt_address[17]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[18]),
        .Q(interrupt_address[18]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[19]),
        .Q(interrupt_address[19]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[1]),
        .Q(interrupt_address[1]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[20]),
        .Q(interrupt_address[20]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[21]),
        .Q(interrupt_address[21]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[22]),
        .Q(interrupt_address[22]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[23]),
        .Q(interrupt_address[23]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[24]),
        .Q(interrupt_address[24]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[25]),
        .Q(interrupt_address[25]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[26]),
        .Q(interrupt_address[26]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[27]),
        .Q(interrupt_address[27]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[28]),
        .Q(interrupt_address[28]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[29]),
        .Q(interrupt_address[29]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[2]),
        .Q(interrupt_address[2]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[30]),
        .Q(interrupt_address[30]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[31]),
        .Q(interrupt_address[31]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[3]),
        .Q(interrupt_address[3]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[4]),
        .Q(interrupt_address[4]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[5]),
        .Q(interrupt_address[5]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[6]),
        .Q(interrupt_address[6]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[7]),
        .Q(interrupt_address[7]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[8]),
        .Q(interrupt_address[8]),
        .R(1'b0));
  FDRE \ram_i[0].Doutb_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out[9]),
        .Q(interrupt_address[9]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_0_0 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[0]),
        .DPO(p_3_out[0]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[0]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_10_10 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[10]),
        .DPO(p_3_out[10]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[10]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_11_11 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[11]),
        .DPO(p_3_out[11]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[11]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_12_12 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[12]),
        .DPO(p_3_out[12]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[12]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_13_13 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[13]),
        .DPO(p_3_out[13]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[13]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_14_14 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[14]),
        .DPO(p_3_out[14]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[14]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_15_15 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[15]),
        .DPO(p_3_out[15]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[15]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_16_16 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[16]),
        .DPO(p_3_out[16]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[16]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_17_17 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[17]),
        .DPO(p_3_out[17]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[17]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_18_18 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[18]),
        .DPO(p_3_out[18]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[18]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_19_19 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[19]),
        .DPO(p_3_out[19]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[19]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_1_1 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[1]),
        .DPO(p_3_out[1]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[1]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_20_20 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[20]),
        .DPO(p_3_out[20]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[20]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_21_21 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[21]),
        .DPO(p_3_out[21]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[21]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_22_22 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[22]),
        .DPO(p_3_out[22]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[22]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_23_23 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[23]),
        .DPO(p_3_out[23]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[23]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_24_24 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[24]),
        .DPO(p_3_out[24]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[24]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_25_25 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[25]),
        .DPO(p_3_out[25]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[25]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_26_26 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[26]),
        .DPO(p_3_out[26]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[26]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_27_27 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[27]),
        .DPO(p_3_out[27]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[27]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_28_28 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[28]),
        .DPO(p_3_out[28]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[28]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_29_29 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[29]),
        .DPO(p_3_out[29]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[29]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_2_2 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[2]),
        .DPO(p_3_out[2]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[2]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_30_30 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[30]),
        .DPO(p_3_out[30]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[30]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_31_31 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[31]),
        .DPO(p_3_out[31]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[31]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_3_3 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[3]),
        .DPO(p_3_out[3]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[3]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1D #(
    .INIT(32'h0000FFFF)) 
    \ram_i[0].ram_reg_0_15_4_4 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[4]),
        .DPO(p_3_out[4]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[4]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_5_5 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[5]),
        .DPO(p_3_out[5]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[5]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_6_6 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[6]),
        .DPO(p_3_out[6]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[6]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_7_7 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[7]),
        .DPO(p_3_out[7]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[7]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_8_8 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[8]),
        .DPO(p_3_out[8]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[8]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \ram_i[0].ram_reg_0_15_9_9 
       (.A0(\ram_i[0].Doutb_reg[0]_0 [0]),
        .A1(\ram_i[0].Doutb_reg[0]_0 [1]),
        .A2(\ram_i[0].Doutb_reg[0]_0 [2]),
        .A3(\ram_i[0].Doutb_reg[0]_0 [3]),
        .A4(1'b0),
        .D(s_axi_wdata[9]),
        .DPO(p_3_out[9]),
        .DPRA0(ivar_index_axi_clk[0]),
        .DPRA1(ivar_index_axi_clk[1]),
        .DPRA2(ivar_index_axi_clk[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(p_0_in__0[9]),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module skrach_design_microblaze_0_axi_intc_0_slave_attachment
   (s_axi_rresp,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    s_axi_bresp,
    s_axi_aresetn_0,
    s_axi_aresetn_1,
    s_axi_aresetn_2,
    s_axi_aresetn_3,
    s_axi_aresetn_4,
    s_axi_aresetn_5,
    s_axi_aresetn_6,
    ip2bus_wrack_prev2,
    Or128_vec2stdlogic,
    bus2ip_wrce,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_2 ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_3 ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_4 ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_5 ,
    isr_en,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_0 ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_1 ,
    Or128_vec2stdlogic19_out,
    ip2bus_rdack_prev2,
    \bus2ip_addr_i_reg[5]_0 ,
    \bus2ip_addr_i_reg[4]_0 ,
    \bus2ip_addr_i_reg[4]_1 ,
    s_axi_wdata_0_sp_1,
    s_axi_wdata_1_sp_1,
    Bus_RNW_reg_reg,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1,
    Bus_RNW_reg_reg_2,
    Bus_RNW_reg_reg_3,
    Bus_RNW_reg_reg_4,
    Bus_RNW_reg_reg_5,
    s_axi_rdata,
    SR,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_aresetn,
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ,
    s_axi_wdata,
    p_0_in11_in,
    p_0_in9_in,
    p_0_in7_in,
    p_0_in5_in,
    p_0_in3_in,
    p_0_in1_in,
    ip2bus_wrack_int_d1,
    \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ,
    p_0_in2_in,
    \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ,
    p_0_in8_in,
    \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ,
    p_0_in14_in,
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ,
    p_0_in,
    ip2bus_rdack,
    s_axi_wvalid,
    s_axi_awvalid,
    ip2bus_wrack,
    ip2bus_rdack_int_d1,
    Q,
    \s_axi_rdata_i_reg[3]_0 ,
    \s_axi_rdata_i_reg[4]_0 ,
    \s_axi_rdata_i_reg[5]_0 ,
    \s_axi_rdata_i_reg[6]_0 ,
    \s_axi_rdata_i_reg[0]_0 ,
    \s_axi_rdata_i_reg[1]_0 ,
    p_1_in27_in,
    \s_axi_rdata_i_reg[6]_1 ,
    p_1_in25_in,
    p_1_in23_in,
    p_1_in21_in,
    \s_axi_rdata_i_reg[3]_1 ,
    \s_axi_rdata_i_reg[3]_2 ,
    \mer_int_reg[0] ,
    \s_axi_rdata_i[2]_i_2_0 ,
    p_0_in26_in,
    p_0_in24_in,
    p_0_in22_in,
    p_0_in20_in,
    s_axi_bready,
    s_axi_rready,
    p_1_in,
    p_0_in19_in,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_wstrb,
    p_0_in31_in,
    p_0_in29_in,
    p_0_in27_in,
    p_0_in25_in,
    p_0_in23_in,
    p_0_in21_in,
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] );
  output [0:0]s_axi_rresp;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output [0:0]s_axi_bresp;
  output s_axi_aresetn_0;
  output s_axi_aresetn_1;
  output s_axi_aresetn_2;
  output s_axi_aresetn_3;
  output s_axi_aresetn_4;
  output s_axi_aresetn_5;
  output s_axi_aresetn_6;
  output ip2bus_wrack_prev2;
  output Or128_vec2stdlogic;
  output [2:0]bus2ip_wrce;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_2 ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_3 ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_4 ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_5 ;
  output isr_en;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_0 ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_1 ;
  output Or128_vec2stdlogic19_out;
  output ip2bus_rdack_prev2;
  output [3:0]\bus2ip_addr_i_reg[5]_0 ;
  output \bus2ip_addr_i_reg[4]_0 ;
  output \bus2ip_addr_i_reg[4]_1 ;
  output s_axi_wdata_0_sp_1;
  output s_axi_wdata_1_sp_1;
  output Bus_RNW_reg_reg;
  output Bus_RNW_reg_reg_0;
  output Bus_RNW_reg_reg_1;
  output Bus_RNW_reg_reg_2;
  output Bus_RNW_reg_reg_3;
  output Bus_RNW_reg_reg_4;
  output Bus_RNW_reg_reg_5;
  output [31:0]s_axi_rdata;
  input [0:0]SR;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ;
  input [6:0]s_axi_wdata;
  input p_0_in11_in;
  input p_0_in9_in;
  input p_0_in7_in;
  input p_0_in5_in;
  input p_0_in3_in;
  input p_0_in1_in;
  input ip2bus_wrack_int_d1;
  input \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ;
  input p_0_in2_in;
  input \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ;
  input p_0_in8_in;
  input \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ;
  input p_0_in14_in;
  input \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ;
  input p_0_in;
  input ip2bus_rdack;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input ip2bus_wrack;
  input ip2bus_rdack_int_d1;
  input [31:0]Q;
  input \s_axi_rdata_i_reg[3]_0 ;
  input \s_axi_rdata_i_reg[4]_0 ;
  input \s_axi_rdata_i_reg[5]_0 ;
  input \s_axi_rdata_i_reg[6]_0 ;
  input \s_axi_rdata_i_reg[0]_0 ;
  input \s_axi_rdata_i_reg[1]_0 ;
  input p_1_in27_in;
  input [4:0]\s_axi_rdata_i_reg[6]_1 ;
  input p_1_in25_in;
  input p_1_in23_in;
  input p_1_in21_in;
  input \s_axi_rdata_i_reg[3]_1 ;
  input \s_axi_rdata_i_reg[3]_2 ;
  input \mer_int_reg[0] ;
  input \s_axi_rdata_i[2]_i_2_0 ;
  input p_0_in26_in;
  input p_0_in24_in;
  input p_0_in22_in;
  input p_0_in20_in;
  input s_axi_bready;
  input s_axi_rready;
  input p_1_in;
  input p_0_in19_in;
  input [6:0]s_axi_araddr;
  input [6:0]s_axi_awaddr;
  input [3:0]s_axi_wstrb;
  input p_0_in31_in;
  input p_0_in29_in;
  input p_0_in27_in;
  input p_0_in25_in;
  input p_0_in23_in;
  input p_0_in21_in;
  input \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ;

  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire Bus_RNW_reg_reg_2;
  wire Bus_RNW_reg_reg_3;
  wire Bus_RNW_reg_reg_4;
  wire Bus_RNW_reg_reg_5;
  wire \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_3 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_4 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_5 ;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_0 ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_1 ;
  wire [31:0]IP2Bus_Data;
  wire Or128_vec2stdlogic;
  wire Or128_vec2stdlogic19_out;
  wire [31:0]Q;
  wire \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ;
  wire \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ;
  wire \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ;
  wire \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ;
  wire \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ;
  wire [0:0]SR;
  wire [8:6]bus2ip_addr;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire \bus2ip_addr_i[5]_i_1_n_0 ;
  wire \bus2ip_addr_i[6]_i_1_n_0 ;
  wire \bus2ip_addr_i[7]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_2_n_0 ;
  wire \bus2ip_addr_i_reg[4]_0 ;
  wire \bus2ip_addr_i_reg[4]_1 ;
  wire [3:0]\bus2ip_addr_i_reg[5]_0 ;
  wire bus2ip_rnw_i_reg_n_0;
  wire [2:0]bus2ip_wrce;
  wire clear;
  wire ip2bus_error;
  wire ip2bus_rdack;
  wire ip2bus_rdack_int_d1;
  wire ip2bus_rdack_prev2;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int_d1;
  wire ip2bus_wrack_prev2;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write_i_1_n_0;
  wire is_write_i_2_n_0;
  wire is_write_reg_n_0;
  wire isr_en;
  wire \mer_int_reg[0] ;
  wire p_0_in;
  wire p_0_in11_in;
  wire p_0_in14_in;
  wire p_0_in19_in;
  wire p_0_in1_in;
  wire p_0_in20_in;
  wire p_0_in21_in;
  wire p_0_in22_in;
  wire p_0_in23_in;
  wire p_0_in24_in;
  wire p_0_in25_in;
  wire p_0_in26_in;
  wire p_0_in27_in;
  wire p_0_in29_in;
  wire p_0_in2_in;
  wire p_0_in31_in;
  wire p_0_in3_in;
  wire p_0_in5_in;
  wire p_0_in7_in;
  wire p_0_in8_in;
  wire p_0_in9_in;
  wire p_1_in;
  wire p_1_in21_in;
  wire p_1_in23_in;
  wire p_1_in25_in;
  wire p_1_in27_in;
  wire [3:0]plusOp;
  wire rst;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire s_axi_aresetn_1;
  wire s_axi_aresetn_2;
  wire s_axi_aresetn_3;
  wire s_axi_aresetn_4;
  wire s_axi_aresetn_5;
  wire s_axi_aresetn_6;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bresp_i;
  wire \s_axi_bresp_i[1]_i_1_n_0 ;
  wire s_axi_bvalid_i_i_1_n_0;
  wire s_axi_bvalid_i_reg_0;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata_i[0]_i_2_n_0 ;
  wire \s_axi_rdata_i[0]_i_3_n_0 ;
  wire \s_axi_rdata_i[1]_i_2_n_0 ;
  wire \s_axi_rdata_i[1]_i_3_n_0 ;
  wire \s_axi_rdata_i[2]_i_2_0 ;
  wire \s_axi_rdata_i[2]_i_2_n_0 ;
  wire \s_axi_rdata_i[2]_i_3_n_0 ;
  wire \s_axi_rdata_i[2]_i_4_n_0 ;
  wire \s_axi_rdata_i[31]_i_3_n_0 ;
  wire \s_axi_rdata_i[31]_i_6_n_0 ;
  wire \s_axi_rdata_i[3]_i_3_n_0 ;
  wire \s_axi_rdata_i[3]_i_4_n_0 ;
  wire \s_axi_rdata_i[4]_i_3_n_0 ;
  wire \s_axi_rdata_i[4]_i_4_n_0 ;
  wire \s_axi_rdata_i[5]_i_3_n_0 ;
  wire \s_axi_rdata_i[5]_i_4_n_0 ;
  wire \s_axi_rdata_i[5]_i_5_n_0 ;
  wire \s_axi_rdata_i[6]_i_3_n_0 ;
  wire \s_axi_rdata_i[6]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[0]_0 ;
  wire \s_axi_rdata_i_reg[1]_0 ;
  wire \s_axi_rdata_i_reg[3]_0 ;
  wire \s_axi_rdata_i_reg[3]_1 ;
  wire \s_axi_rdata_i_reg[3]_2 ;
  wire \s_axi_rdata_i_reg[4]_0 ;
  wire \s_axi_rdata_i_reg[5]_0 ;
  wire \s_axi_rdata_i_reg[6]_0 ;
  wire [4:0]\s_axi_rdata_i_reg[6]_1 ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_rvalid_i_reg_0;
  wire [6:0]s_axi_wdata;
  wire s_axi_wdata_0_sn_1;
  wire s_axi_wdata_1_sn_1;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  assign s_axi_wdata_1_sp_1 = s_axi_wdata_1_sn_1;
  LUT6 #(
    .INIT(64'h0070FFFF00700070)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(s_axi_arvalid),
        .I4(\FSM_onehot_state[3]_i_2_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_0 ),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444444F4444444)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_1 ),
        .I1(s_axi_bresp_i),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(s_axi_arvalid),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(s_axi_bresp_i),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_1 ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state[3]_i_2_n_0 ),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_0 ),
        .I5(s_axi_rresp_i),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid_i_reg_0),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[3]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  skrach_design_microblaze_0_axi_intc_0_address_decoder I_DECODER
       (.Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_1(Bus_RNW_reg_reg_0),
        .Bus_RNW_reg_reg_2(Bus_RNW_reg_reg_1),
        .Bus_RNW_reg_reg_3(Bus_RNW_reg_reg_2),
        .Bus_RNW_reg_reg_4(Bus_RNW_reg_reg_3),
        .Bus_RNW_reg_reg_5(Bus_RNW_reg_reg_4),
        .Bus_RNW_reg_reg_6(Bus_RNW_reg_reg_5),
        .Bus_RNW_reg_reg_7(bus2ip_rnw_i_reg_n_0),
        .\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] (\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ),
        .D(IP2Bus_Data),
        .\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]_0 ({bus2ip_addr,\bus2ip_addr_i_reg[5]_0 }),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_2 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_1 ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_3 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_2 ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_4 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_3 ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_5 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_4 ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_6 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_5 ),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_0 ),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_0 (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_1 ),
        .Or128_vec2stdlogic(Or128_vec2stdlogic),
        .Or128_vec2stdlogic19_out(Or128_vec2stdlogic19_out),
        .Q(start2),
        .\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] (\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ),
        .\REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] (\REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ),
        .\REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] (\REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ),
        .\REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] (\REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ),
        .\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] (\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .bus2ip_wrce(bus2ip_wrce),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_rdack_int_d1(ip2bus_rdack_int_d1),
        .ip2bus_rdack_prev2(ip2bus_rdack_prev2),
        .ip2bus_wrack(ip2bus_wrack),
        .ip2bus_wrack_int_d1(ip2bus_wrack_int_d1),
        .ip2bus_wrack_prev2(ip2bus_wrack_prev2),
        .isr_en(isr_en),
        .\mer_int_reg[0] (\mer_int_reg[0] ),
        .p_0_in(p_0_in),
        .p_0_in11_in(p_0_in11_in),
        .p_0_in14_in(p_0_in14_in),
        .p_0_in1_in(p_0_in1_in),
        .p_0_in21_in(p_0_in21_in),
        .p_0_in23_in(p_0_in23_in),
        .p_0_in25_in(p_0_in25_in),
        .p_0_in27_in(p_0_in27_in),
        .p_0_in29_in(p_0_in29_in),
        .p_0_in2_in(p_0_in2_in),
        .p_0_in31_in(p_0_in31_in),
        .p_0_in3_in(p_0_in3_in),
        .p_0_in5_in(p_0_in5_in),
        .p_0_in7_in(p_0_in7_in),
        .p_0_in8_in(p_0_in8_in),
        .p_0_in9_in(p_0_in9_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(s_axi_aresetn_0),
        .s_axi_aresetn_1(s_axi_aresetn_1),
        .s_axi_aresetn_2(s_axi_aresetn_2),
        .s_axi_aresetn_3(s_axi_aresetn_3),
        .s_axi_aresetn_4(s_axi_aresetn_4),
        .s_axi_aresetn_5(s_axi_aresetn_5),
        .s_axi_aresetn_6(s_axi_aresetn_6),
        .s_axi_arready(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .s_axi_arready_0(is_read_reg_n_0),
        .\s_axi_rdata_i_reg[0] (\s_axi_rdata_i[0]_i_2_n_0 ),
        .\s_axi_rdata_i_reg[1] (\s_axi_rdata_i[1]_i_2_n_0 ),
        .\s_axi_rdata_i_reg[2] (\s_axi_rdata_i[2]_i_2_n_0 ),
        .\s_axi_rdata_i_reg[2]_0 (\s_axi_rdata_i[2]_i_3_n_0 ),
        .\s_axi_rdata_i_reg[31] (Q),
        .\s_axi_rdata_i_reg[31]_0 (\s_axi_rdata_i[31]_i_6_n_0 ),
        .\s_axi_rdata_i_reg[3] (\s_axi_rdata_i_reg[3]_0 ),
        .\s_axi_rdata_i_reg[3]_0 (\s_axi_rdata_i[3]_i_3_n_0 ),
        .\s_axi_rdata_i_reg[3]_1 (\s_axi_rdata_i[31]_i_3_n_0 ),
        .\s_axi_rdata_i_reg[4] (\s_axi_rdata_i_reg[4]_0 ),
        .\s_axi_rdata_i_reg[4]_0 (\s_axi_rdata_i[4]_i_3_n_0 ),
        .\s_axi_rdata_i_reg[5] (\s_axi_rdata_i_reg[5]_0 ),
        .\s_axi_rdata_i_reg[5]_0 (\s_axi_rdata_i[5]_i_3_n_0 ),
        .\s_axi_rdata_i_reg[6] (\s_axi_rdata_i_reg[6]_0 ),
        .\s_axi_rdata_i_reg[6]_0 (\s_axi_rdata_i[6]_i_3_n_0 ),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wdata_0_sp_1(s_axi_wdata_0_sn_1),
        .s_axi_wdata_1_sp_1(s_axi_wdata_1_sn_1),
        .s_axi_wready(is_write_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[0]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[1]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[3]),
        .O(\bus2ip_addr_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[4]),
        .O(\bus2ip_addr_i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[7]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[5]),
        .O(\bus2ip_addr_i[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(state[0]),
        .I4(state[1]),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[8]_i_2 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[6]),
        .O(\bus2ip_addr_i[8]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg[5]_0 [0]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg[5]_0 [1]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg[5]_0 [2]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[5]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg[5]_0 [3]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[6]_i_1_n_0 ),
        .Q(bus2ip_addr[6]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[7]_i_1_n_0 ),
        .Q(bus2ip_addr[7]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[8]_i_2_n_0 ),
        .Q(bus2ip_addr[8]),
        .R(rst));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw_i_reg_n_0),
        .R(rst));
  LUT5 #(
    .INIT(32'hAACFAA00)) 
    is_read_i_1
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state[3]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(is_read_reg_n_0),
        .O(is_read_i_1_n_0));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_read_i_1_n_0),
        .Q(is_read_reg_n_0),
        .R(rst));
  LUT6 #(
    .INIT(64'h4000FFFF40000000)) 
    is_write_i_1
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(is_write_i_2_n_0),
        .I5(is_write_reg_n_0),
        .O(is_write_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    is_write_i_2
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid_i_reg_0),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(is_write_i_2_n_0));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_write_i_1_n_0),
        .Q(is_write_reg_n_0),
        .R(rst));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(SR),
        .Q(rst),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_bresp_i[1]_i_1 
       (.I0(ip2bus_error),
        .I1(s_axi_bresp_i),
        .I2(s_axi_bresp),
        .O(\s_axi_bresp_i[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_bresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_bresp_i[1]_i_1_n_0 ),
        .Q(s_axi_bresp),
        .R(rst));
  LUT5 #(
    .INIT(32'h55D500C0)) 
    s_axi_bvalid_i_i_1
       (.I0(s_axi_bready),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_1 ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid_i_reg_0),
        .R(rst));
  LUT6 #(
    .INIT(64'hF2F22222F2FF2222)) 
    \s_axi_rdata_i[0]_i_2 
       (.I0(\s_axi_rdata_i[0]_i_3_n_0 ),
        .I1(\s_axi_rdata_i_reg[0]_0 ),
        .I2(\s_axi_rdata_i[5]_i_4_n_0 ),
        .I3(\bus2ip_addr_i_reg[4]_0 ),
        .I4(\bus2ip_addr_i_reg[5]_0 [3]),
        .I5(\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ),
        .O(\s_axi_rdata_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000003FBF7FFF)) 
    \s_axi_rdata_i[0]_i_3 
       (.I0(\bus2ip_addr_i_reg[5]_0 [0]),
        .I1(\bus2ip_addr_i_reg[5]_0 [1]),
        .I2(\bus2ip_addr_i_reg[5]_0 [2]),
        .I3(\mer_int_reg[0] ),
        .I4(\s_axi_rdata_i_reg[3]_2 ),
        .I5(\bus2ip_addr_i_reg[5]_0 [3]),
        .O(\s_axi_rdata_i[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF2F22222F2FF2222)) 
    \s_axi_rdata_i[1]_i_2 
       (.I0(\s_axi_rdata_i[1]_i_3_n_0 ),
        .I1(\s_axi_rdata_i_reg[1]_0 ),
        .I2(\s_axi_rdata_i[5]_i_4_n_0 ),
        .I3(\bus2ip_addr_i_reg[4]_0 ),
        .I4(\bus2ip_addr_i_reg[5]_0 [3]),
        .I5(p_0_in14_in),
        .O(\s_axi_rdata_i[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000003FBF7FFF)) 
    \s_axi_rdata_i[1]_i_3 
       (.I0(\bus2ip_addr_i_reg[5]_0 [0]),
        .I1(\bus2ip_addr_i_reg[5]_0 [1]),
        .I2(\bus2ip_addr_i_reg[5]_0 [2]),
        .I3(p_0_in),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\bus2ip_addr_i_reg[5]_0 [3]),
        .O(\s_axi_rdata_i[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFCFCF88888888)) 
    \s_axi_rdata_i[2]_i_2 
       (.I0(\bus2ip_addr_i_reg[5]_0 [3]),
        .I1(\s_axi_rdata_i[5]_i_4_n_0 ),
        .I2(p_1_in27_in),
        .I3(\s_axi_rdata_i_reg[6]_1 [0]),
        .I4(\bus2ip_addr_i_reg[5]_0 [0]),
        .I5(\s_axi_rdata_i[2]_i_4_n_0 ),
        .O(\s_axi_rdata_i[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00004404)) 
    \s_axi_rdata_i[2]_i_3 
       (.I0(\REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ),
        .I1(\bus2ip_addr_i_reg[5]_0 [3]),
        .I2(\bus2ip_addr_i_reg[5]_0 [0]),
        .I3(\bus2ip_addr_i_reg[5]_0 [1]),
        .I4(\bus2ip_addr_i_reg[5]_0 [2]),
        .O(\s_axi_rdata_i[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF2FFF7F)) 
    \s_axi_rdata_i[2]_i_4 
       (.I0(\bus2ip_addr_i_reg[5]_0 [2]),
        .I1(\s_axi_rdata_i[2]_i_2_0 ),
        .I2(\bus2ip_addr_i_reg[5]_0 [1]),
        .I3(\bus2ip_addr_i_reg[5]_0 [0]),
        .I4(p_0_in26_in),
        .I5(\bus2ip_addr_i_reg[5]_0 [3]),
        .O(\s_axi_rdata_i[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEE0FEEFFEEFFEEFF)) 
    \s_axi_rdata_i[31]_i_3 
       (.I0(\bus2ip_addr_i_reg[5]_0 [2]),
        .I1(\bus2ip_addr_i_reg[5]_0 [1]),
        .I2(\bus2ip_addr_i_reg[4]_1 ),
        .I3(\bus2ip_addr_i_reg[5]_0 [3]),
        .I4(\s_axi_rdata_i_reg[3]_1 ),
        .I5(\s_axi_rdata_i_reg[3]_2 ),
        .O(\s_axi_rdata_i[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \s_axi_rdata_i[31]_i_5 
       (.I0(\bus2ip_addr_i_reg[5]_0 [2]),
        .I1(\s_axi_rdata_i[2]_i_2_0 ),
        .I2(\bus2ip_addr_i_reg[5]_0 [1]),
        .I3(\bus2ip_addr_i_reg[5]_0 [0]),
        .O(\bus2ip_addr_i_reg[4]_1 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \s_axi_rdata_i[31]_i_6 
       (.I0(bus2ip_addr[6]),
        .I1(bus2ip_addr[8]),
        .I2(bus2ip_addr[7]),
        .O(\s_axi_rdata_i[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFAFFF0F0F0F0)) 
    \s_axi_rdata_i[3]_i_3 
       (.I0(\s_axi_rdata_i[5]_i_4_n_0 ),
        .I1(\s_axi_rdata_i_reg[6]_1 [1]),
        .I2(\bus2ip_addr_i_reg[5]_0 [3]),
        .I3(p_1_in25_in),
        .I4(\bus2ip_addr_i_reg[5]_0 [0]),
        .I5(\s_axi_rdata_i[3]_i_4_n_0 ),
        .O(\s_axi_rdata_i[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \s_axi_rdata_i[3]_i_4 
       (.I0(\bus2ip_addr_i_reg[5]_0 [0]),
        .I1(\bus2ip_addr_i_reg[5]_0 [1]),
        .I2(\bus2ip_addr_i_reg[5]_0 [2]),
        .I3(p_0_in24_in),
        .O(\s_axi_rdata_i[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFAFFF0F0F0F0)) 
    \s_axi_rdata_i[4]_i_3 
       (.I0(\s_axi_rdata_i[5]_i_4_n_0 ),
        .I1(\s_axi_rdata_i_reg[6]_1 [2]),
        .I2(\bus2ip_addr_i_reg[5]_0 [3]),
        .I3(p_1_in23_in),
        .I4(\bus2ip_addr_i_reg[5]_0 [0]),
        .I5(\s_axi_rdata_i[4]_i_4_n_0 ),
        .O(\s_axi_rdata_i[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \s_axi_rdata_i[4]_i_4 
       (.I0(\bus2ip_addr_i_reg[5]_0 [0]),
        .I1(\bus2ip_addr_i_reg[5]_0 [1]),
        .I2(\bus2ip_addr_i_reg[5]_0 [2]),
        .I3(p_0_in22_in),
        .O(\s_axi_rdata_i[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFAFFF0F0F0F0)) 
    \s_axi_rdata_i[5]_i_3 
       (.I0(\s_axi_rdata_i[5]_i_4_n_0 ),
        .I1(\s_axi_rdata_i_reg[6]_1 [3]),
        .I2(\bus2ip_addr_i_reg[5]_0 [3]),
        .I3(p_1_in21_in),
        .I4(\bus2ip_addr_i_reg[5]_0 [0]),
        .I5(\s_axi_rdata_i[5]_i_5_n_0 ),
        .O(\s_axi_rdata_i[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata_i[5]_i_4 
       (.I0(\bus2ip_addr_i_reg[5]_0 [2]),
        .I1(\bus2ip_addr_i_reg[5]_0 [1]),
        .O(\s_axi_rdata_i[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \s_axi_rdata_i[5]_i_5 
       (.I0(\bus2ip_addr_i_reg[5]_0 [0]),
        .I1(\bus2ip_addr_i_reg[5]_0 [1]),
        .I2(\bus2ip_addr_i_reg[5]_0 [2]),
        .I3(p_0_in20_in),
        .O(\s_axi_rdata_i[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFBBAAAFFFBBFFAF)) 
    \s_axi_rdata_i[6]_i_3 
       (.I0(\s_axi_rdata_i[6]_i_5_n_0 ),
        .I1(\s_axi_rdata_i_reg[6]_1 [4]),
        .I2(p_1_in),
        .I3(\bus2ip_addr_i_reg[5]_0 [1]),
        .I4(\bus2ip_addr_i_reg[5]_0 [0]),
        .I5(p_0_in19_in),
        .O(\s_axi_rdata_i[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rdata_i[6]_i_4 
       (.I0(\bus2ip_addr_i_reg[5]_0 [2]),
        .I1(\bus2ip_addr_i_reg[5]_0 [1]),
        .I2(\bus2ip_addr_i_reg[5]_0 [0]),
        .O(\bus2ip_addr_i_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata_i[6]_i_5 
       (.I0(\bus2ip_addr_i_reg[5]_0 [2]),
        .I1(\bus2ip_addr_i_reg[5]_0 [3]),
        .O(\s_axi_rdata_i[6]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[0]),
        .Q(s_axi_rdata[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[10]),
        .Q(s_axi_rdata[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[11]),
        .Q(s_axi_rdata[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[12]),
        .Q(s_axi_rdata[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[13]),
        .Q(s_axi_rdata[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[14]),
        .Q(s_axi_rdata[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[15]),
        .Q(s_axi_rdata[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[16]),
        .Q(s_axi_rdata[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[17]),
        .Q(s_axi_rdata[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[18]),
        .Q(s_axi_rdata[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[19]),
        .Q(s_axi_rdata[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[1]),
        .Q(s_axi_rdata[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[20]),
        .Q(s_axi_rdata[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[21]),
        .Q(s_axi_rdata[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[22]),
        .Q(s_axi_rdata[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[23]),
        .Q(s_axi_rdata[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[24]),
        .Q(s_axi_rdata[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[25]),
        .Q(s_axi_rdata[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[26]),
        .Q(s_axi_rdata[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[27]),
        .Q(s_axi_rdata[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[28]),
        .Q(s_axi_rdata[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[29]),
        .Q(s_axi_rdata[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[2]),
        .Q(s_axi_rdata[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[30]),
        .Q(s_axi_rdata[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[31]),
        .Q(s_axi_rdata[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[3]),
        .Q(s_axi_rdata[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[4]),
        .Q(s_axi_rdata[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[5]),
        .Q(s_axi_rdata[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[6]),
        .Q(s_axi_rdata[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[7]),
        .Q(s_axi_rdata[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[8]),
        .Q(s_axi_rdata[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(IP2Bus_Data[9]),
        .Q(s_axi_rdata[9]),
        .R(rst));
  LUT5 #(
    .INIT(32'h070F0F0F)) 
    \s_axi_rresp_i[1]_i_1 
       (.I0(s_axi_wstrb[3]),
        .I1(s_axi_wstrb[0]),
        .I2(bus2ip_rnw_i_reg_n_0),
        .I3(s_axi_wstrb[1]),
        .I4(s_axi_wstrb[2]),
        .O(ip2bus_error));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(ip2bus_error),
        .Q(s_axi_rresp),
        .R(rst));
  LUT5 #(
    .INIT(32'h55D500C0)) 
    s_axi_rvalid_i_i_1
       (.I0(s_axi_rready),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_0 ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_rvalid_i_reg_0),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid_i_reg_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(state[0]),
        .I4(state[1]),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
  LUT5 #(
    .INIT(32'hCFCFAFA0)) 
    \state[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_1 ),
        .I1(\FSM_onehot_state[3]_i_2_n_0 ),
        .I2(state[1]),
        .I3(s_axi_arvalid),
        .I4(state[0]),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE4AAE4AAE4FFE4AA)) 
    \state[1]_i_1 
       (.I0(state[1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]_0 ),
        .I2(\FSM_onehot_state[3]_i_2_n_0 ),
        .I3(state[0]),
        .I4(\state[1]_i_2_n_0 ),
        .I5(s_axi_arvalid),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .O(\state[1]_i_2_n_0 ));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(rst));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(rst));
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
