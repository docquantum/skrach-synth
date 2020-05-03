// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Apr 29 23:14:43 2020
// Host        : QuantumNet-L4 running 64-bit Arch Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/docquantum/ce446_solovey/final/code/Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_clk_wiz_0_0/skrach_design_clk_wiz_0_0_stub.v
// Design      : skrach_design_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module skrach_design_clk_wiz_0_0(clk_12, clk_100, clk_200, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_12,clk_100,clk_200,resetn,locked,clk_in1" */;
  output clk_12;
  output clk_100;
  output clk_200;
  input resetn;
  output locked;
  input clk_in1;
endmodule
