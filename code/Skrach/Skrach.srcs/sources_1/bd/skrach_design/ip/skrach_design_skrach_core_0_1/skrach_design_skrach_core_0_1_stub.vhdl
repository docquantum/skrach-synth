-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Fri May  1 01:50:22 2020
-- Host        : QuantumNet-L4 running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dshchur/csce_436_shchur/final/code/Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_skrach_core_0_1/skrach_design_skrach_core_0_1_stub.vhdl
-- Design      : skrach_design_skrach_core_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity skrach_design_skrach_core_0_1 is
  Port ( 
    clk_12 : in STD_LOGIC;
    async_reset : in STD_LOGIC;
    ac_mclk : out STD_LOGIC;
    ac_adc_sdata : in STD_LOGIC;
    ac_dac_sdata : out STD_LOGIC;
    ac_bclk : out STD_LOGIC;
    ac_lrclk : out STD_LOGIC;
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );

end skrach_design_skrach_core_0_1;

architecture stub of skrach_design_skrach_core_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_12,async_reset,ac_mclk,ac_adc_sdata,ac_dac_sdata,ac_bclk,ac_lrclk,scl,sda,s_axi_awaddr[5:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[5:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,s_axi_aclk,s_axi_aresetn";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "skrach_core_v1_0,Vivado 2019.1";
begin
end;
