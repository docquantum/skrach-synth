--------------------------------------------------------------------------------
-- Name:	Daria Solovey
-- Updated:	2020/04/26
-- File:    skrach_core.vhd
-- Module:	Skrach Core
-- Pupr:	Essentially the data path, combining all the operators
--          together with control signals for each one. Audio codec
--          is assumed to be outside of this module.
--
-- Theory:  Change amplitude at the slope of the given signals where when
--          in Attack, the amplitude ramps up to max, in decay, it goes
--          down to the level defined in sustain. If the key is released
--          at any time during the attack, decay, or sustain operations,
--          release kicks in lowering amplitude down to 0.
--
--          To get reasonable timings, the clock is divided such that a
--          value of 1 corresponds to ~16ms and 127 to ~2sec
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

entity skrach_core is
  port (
        -- 100 Mhz System Clock
        clk: in std_logic;
        -- Active low reset
        reset_n: in std_logic;
        -- 12 16 bit signals LSB = op1
        opPhase: in unsigned(191 downto 0);
        -- one hot encoding note on/off
        opEnable: in std_logic_vector(11 downto 0);
        -- ADSR for the operators
        att, dec, sus, rel: in signed(7 downto 0);
        -- Master amplitude
        ampl: in signed(7 downto 0);
        -- DAC Next Sample
        nextSample: in std_logic;
        -- 16 bit audio data
        audioOut: out signed(15 downto 0)
  );
end skrach_core;

architecture implementation of skrach_core is
    type signed_vector is array (0 to 11) of signed(15 downto 0);
    signal opSigOutVec: signed_vector;
begin

    op1 : operator
    port map (
        clk => clk,
        reset_n => reset_n,
        nextSample => nextSample,
        waveSel => "00",
        phaseInc => opPhase(15 downto 0),
        att => att,
        dec => dec,
        sus => sus,
        rel => rel,
        en => opEnable(0),
        sigOut => opSigOutVec(0)
    );
    
    op2 : operator
    port map (
        clk => clk,
        reset_n => reset_n,
        nextSample => nextSample,
        waveSel => "00",
        phaseInc => opPhase(31 downto 16),
        att => att,
        dec => dec,
        sus => sus,
        rel => rel,
        en => opEnable(1),
        sigOut => opSigOutVec(1)
    );
    
    op3 : operator
    port map (
        clk => clk,
        reset_n => reset_n,
        nextSample => nextSample,
        waveSel => "00",
        phaseInc => opPhase(47 downto 32),
        att => att,
        dec => dec,
        sus => sus,
        rel => rel,
        en => opEnable(2),
        sigOut => opSigOutVec(2)
    );
    
    op4 : operator
    port map (
        clk => clk,
        reset_n => reset_n,
        nextSample => nextSample,
        waveSel => "00",
        phaseInc => opPhase(63 downto 48),
        att => att,
        dec => dec,
        sus => sus,
        rel => rel,
        en => opEnable(3),
        sigOut => opSigOutVec(3)
    );
    
    op5 : operator
    port map (
        clk => clk,
        reset_n => reset_n,
        nextSample => nextSample,
        waveSel => "00",
        phaseInc => opPhase(79 downto 64),
        att => att,
        dec => dec,
        sus => sus,
        rel => rel,
        en => opEnable(4),
        sigOut => opSigOutVec(4)
    );
    
    op6 : operator
    port map (
        clk => clk,
        reset_n => reset_n,
        nextSample => nextSample,
        waveSel => "00",
        phaseInc => opPhase(95 downto 80),
        att => att,
        dec => dec,
        sus => sus,
        rel => rel,
        en => opEnable(5),
        sigOut => opSigOutVec(5)
    );
    
    op7 : operator
    port map (
        clk => clk,
        reset_n => reset_n,
        nextSample => nextSample,
        waveSel => "00",
        phaseInc => opPhase(111 downto 96),
        att => att,
        dec => dec,
        sus => sus,
        rel => rel,
        en => opEnable(6),
        sigOut => opSigOutVec(6)
    );
    
    op8 : operator
    port map (
        clk => clk,
        reset_n => reset_n,
        nextSample => nextSample,
        waveSel => "00",
        phaseInc => opPhase(127 downto 112),
        att => att,
        dec => dec,
        sus => sus,
        rel => rel,
        en => opEnable(7),
        sigOut => opSigOutVec(7)
    );
    
    op9 : operator
    port map (
        clk => clk,
        reset_n => reset_n,
        nextSample => nextSample,
        waveSel => "00",
        phaseInc => opPhase(143 downto 128),
        att => att,
        dec => dec,
        sus => sus,
        rel => rel,
        en => opEnable(8),
        sigOut => opSigOutVec(8)
    );
    
    op10 : operator
    port map (
        clk => clk,
        reset_n => reset_n,
        nextSample => nextSample,
        waveSel => "00",
        phaseInc => opPhase(159 downto 144),
        att => att,
        dec => dec,
        sus => sus,
        rel => rel,
        en => opEnable(9),
        sigOut => opSigOutVec(9)
    );
    
    op11 : operator
    port map (
        clk => clk,
        reset_n => reset_n,
        nextSample => nextSample,
        waveSel => "00",
        phaseInc => opPhase(175 downto 160),
        att => att,
        dec => dec,
        sus => sus,
        rel => rel,
        en => opEnable(10),
        sigOut => opSigOutVec(10)
    );
    
    op12 : operator
    port map (
        clk => clk,
        reset_n => reset_n,
        nextSample => nextSample,
        waveSel => "00",
        phaseInc => opPhase(191 downto 176),
        att => att,
        dec => dec,
        sus => sus,
        rel => rel,
        en => opEnable(11),
        sigOut => opSigOutVec(11)
    );
    
    mix_inst: mixer
    generic map (
        ACTIVE_CHANNELS => 12,
        DATA_WIDTH => 16
    )
    port map (
        clk => clk,
        reset_n => reset_n,
        amplitude => ampl,
        ch1 => opSigOutVec(0),
        ch2 => opSigOutVec(1),
        ch3 => opSigOutVec(2),
        ch4 => opSigOutVec(3),
        ch5 => opSigOutVec(4),
        ch6 => opSigOutVec(5),
        ch7 => opSigOutVec(6),
        ch8 => opSigOutVec(7),
        ch9 => opSigOutVec(8),
        ch10 => opSigOutVec(9),
        ch11 => opSigOutVec(10),
        ch12 => opSigOutVec(11),
        sigOut => audioOut
    );


end implementation;
