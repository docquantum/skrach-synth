-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Sun Apr 12 23:33:44 2020
-- Host        : QuantumNet-L4 running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dshchur/homework/csce_436_shchur/final/code/Skrach.srcs/sources_1/bd/lab4_design/ip/lab4_design_clk_wiz_1_5/lab4_design_clk_wiz_1_5_stub.vhdl
-- Design      : lab4_design_clk_wiz_1_5
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab4_design_clk_wiz_1_5 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end lab4_design_clk_wiz_1_5;

architecture stub of lab4_design_clk_wiz_1_5 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_out2,resetn,locked,clk_in1";
begin
end;