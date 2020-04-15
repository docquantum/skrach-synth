--------------------------------------------------------------------------------
-- Name:	Daria Solovey
-- Update:	2020/03/03
-- File:    phase_ampl_manager.vhd
-- HW:	    Lab 4
-- Pupr:	Takes inputs as switches/buttons and modifies the phase and
--          amplitude, as well as signal select.
--
-- Doc:     Lab 2
-- 	
-- Academic Integrity Statement: I certify that, while others may have 
-- assisted me in brain storming, debugging and validating this program, 
-- the program itself is my own work. I understand that submitting code 
-- which is the work of other individuals is a violation of the honor   
-- code.  I also understand that if I knowingly give my original work to 
-- another individual is also a violation of the honor code. 
--------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity phase_ampl_manager is
    Port ( 
        clk: in std_logic;
        reset_n: in std_logic;
        switch: in std_logic_vector(7 downto 0);
        left_btn, right_btn, up_btn, down_btn, cntr_btn: in std_logic;
        ampl, phase: out unsigned(15 downto 0);
        waveSel: out std_logic
    );
end phase_ampl_manager;

architecture structure of phase_ampl_manager is
    constant PHASE_SINE_440 : std_logic_vector(15 downto 0) := b"00_0000_1001_001111"; -- 9.234375
    constant PHASE_CHORD_440 : std_logic_vector(15 downto 0) := b"00_0000_0000_111010"; -- 0.90625
    constant MAX_PHASE: std_logic_vector(15 downto 0) := b"01_1010_1010_101010"; -- 426.66
    constant AMPL_START : std_logic_vector(15 downto 0) := b"00_0000_0001_000000"; -- 1.0
    constant MAX_AMPL: std_logic_vector(15 downto 0) := b"00_0001_0100_000000"; -- 20.0
    signal phase_sig: unsigned(15 downto 0) := unsigned(PHASE_SINE_440);
    signal ampl_sig: unsigned(15 downto 0) := unsigned(AMPL_START);
    signal signalSel: std_logic;
begin

    ampl <= ampl_sig;
    phase <= phase_sig;
    waveSel <= signalSel;

    process(clk, reset_n)
    begin
        if(rising_edge(clk)) then
            if(reset_n = '0') then
                phase_sig <= unsigned(PHASE_SINE_440);
                ampl_sig <= unsigned(AMPL_START);
                signalSel <= '0';
            elsif(cntr_btn = '1') then
                if (signalSel = '0') then
                    signalSel <= '1';
                    phase_sig <= unsigned(PHASE_CHORD_440);
                else
                    signalSel <= '0';
                    phase_sig <= unsigned(PHASE_SINE_440);
                end if;
            elsif(left_btn = '1' and phase_sig > unsigned(x"00" & switch)) then
                phase_sig <= phase_sig - unsigned(x"00" & switch);
            elsif(right_btn = '1' and (phase_sig + unsigned(x"00" & switch) < unsigned(MAX_PHASE))) then
                phase_sig <= phase_sig + unsigned(x"00" & switch);
            elsif(down_btn = '1' and (ampl_sig + unsigned(x"00" & switch) < unsigned(MAX_AMPL))) then
                ampl_sig <= ampl_sig + unsigned(x"00" & switch);
            elsif(up_btn = '1' and ampl_sig > unsigned(x"00" & switch)) then
                ampl_sig <= ampl_sig - unsigned(x"00" & switch);
            end if;
        end if;
    end process;


end structure;
