--------------------------------------------------------------------------------
-- Name:	Daria Solovey
-- Updated:	2020/05/01
-- File:    operator.vhd
-- Module:	Skrach Core
-- Pupr:	Self enclosed module with an oscillator and ADSR envelope.
--          
-- TODO:    More functaionlity should be added such as LFO with FM for
--          virbrato, as well as signal input to be modulated by another
--          signal.
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

use work.skrach_parts.all;

entity operator is
    Port (
        clk: in std_logic;
        reset_n: in std_logic;
        nextSample: in std_logic;
        waveSel: in std_logic_vector(1 downto 0);
        phaseInc: in unsigned(15 downto 0);
        att, dec, sus, rel: in signed(7 downto 0);
        en: in std_logic;
        sigOut: out signed(15 downto 0)
    );
end operator;

architecture implementation of operator is
    signal oscOut: signed(15 downto 0);
begin

    osc_inst: oscillator
    port map (
        -- 100 MHz clk
        clk => clk,
        -- Active low reset, should be handled in sync with other OSCs
        reset_n => reset_n,
        -- sine, triangle, saw, square
        waveSel => waveSel,
        -- Q9.7, adjust the increment for sample data
        phaseInc => phaseInc,
        -- read's next sample
        nextSample => nextSample,
        -- Signed PCM data
        wavformOut => oscOut
    );
    
    adsr_inst: adsr
    generic map(16)
    port map (
        clk => clk,
        reset_n => reset_n,
        en => en,
        nextSample => nextSample,
        attack => att,
        decay => dec,
        sustain => sus,
        rel => rel,
        signalIn => oscOut,
        signalOut => sigOut
    );


end implementation;
