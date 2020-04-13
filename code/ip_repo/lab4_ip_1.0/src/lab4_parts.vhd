--------------------------------------------------------------------------------
-- Name:	Daria Solovey
-- Update:	2020/03/02
-- File:    lab4_parts.vhd
-- HW:	    Lab 4
-- Pupr:	Package that contains all the parts necesary for lab4
--
-- Doc:	   Lab 2
-- 	
-- Academic Integrity Statement: I certify that, while others may have 
-- assisted me in brain storming, debugging and validating this program, 
-- the program itself is my own work. I understand that submitting code 
-- which is the work of other individuals is a violation of the honor   
-- code.  I also understand that if I knowingly give my original work to 
-- another individual is also a violation of the honor code. 
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;

package lab4_parts is

component Audio_Codec_Wrapper 
    Port (
        clk: in std_logic;
        reset_n: in std_logic;
        ac_mclk: out std_logic;
        ac_adc_sdata: in std_logic;
        ac_dac_sdata: out std_logic;
        ac_bclk: out std_logic;
        ac_lrclk: out std_logic;
        ready: out std_logic;
        L_bus_in: in std_logic_vector(15 downto 0); -- left channel input to DAC
        R_bus_in: in std_logic_vector(15 downto 0); -- right channel input to DAC
        L_bus_out: out std_logic_vector(15 downto 0); -- left channel output from ADC
        R_bus_out: out std_logic_vector(15 downto 0); -- right channel output from ADC
        scl: inout std_logic;
        sda: inout std_logic
    );
end component;

component lab4_datapath is
    Port (
        clk: in std_logic;
        reset_n: in std_logic;
        ac_mclk: out std_logic;
        ac_adc_sdata: in std_logic;
        ac_dac_sdata: out std_logic;
        ac_bclk: out std_logic;
        ac_lrclk: out std_logic;
        scl: inout std_logic;
        sda: inout std_logic;
        phase: in unsigned(15 downto 0);
        ampl: in unsigned(15 downto 0);
        sw: out std_logic;
        cw: in std_logic_vector(1 downto 0);
        waveSel: in std_logic
    );
end component;

component lab4_controlunit is
    Port (
        clk: in std_logic;
        reset_n: in std_logic;
        sw: in std_logic;
        cw: out std_logic_vector(1 downto 0)
    );
end component;

component addr_counter is
    Port (
        clk: in std_logic;
        reset_n: in std_logic;
        cw: in std_logic_vector(1 downto 0);
        D: in unsigned(15 downto 0);
        count: out unsigned(15 downto 0)
    );
end component;

component btn_reader is
   Port(
       clk: in std_logic;
       reset_n: in std_logic;
       btn: in std_logic;
       btn_press: out std_logic
   );
end component;

component phase_ampl_manager is
    Port (
        clk: in std_logic;
        reset_n: in std_logic;
        switch: in std_logic_vector(7 downto 0);
        left_btn, right_btn, up_btn, down_btn, cntr_btn: in std_logic;
        ampl, phase: out unsigned(15 downto 0);
        waveSel: out std_logic
    );
end component;


end lab4_parts;