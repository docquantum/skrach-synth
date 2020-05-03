--------------------------------------------------------------------------------
-- Name:	Daria Solovey
-- Updated:	2020/04/26
-- File:    skrach_parts.vhd
-- Module:	Skrach Core
-- Pupr:	Package that contains all the parts necesary for Skrach Core
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

package skrach_parts is

component counter is
    Generic (
        WIDTH : integer := 16
    );
    Port (
        clk: in std_logic;
        reset_n: in std_logic;
        cw: in std_logic_vector(1 downto 0);
        D: in unsigned(WIDTH-1 downto 0);
        count: out unsigned(WIDTH-1 downto 0)
    );
end component;

component oscillator is
    Port (
        -- 100 MHz clk
        clk: in std_logic;
        -- Active low reset, should be handled in sync with other OSCs
        reset_n: in std_logic;
        -- sine, triangle, saw, square
        waveSel: in std_logic_vector(1 downto 0);
        -- Q9.7, adjust the increment for sample data
        phaseInc: in unsigned(15 downto 0);
        -- read's next sample
        nextSample: in std_logic;
        -- Signed PCM data
        wavformOut: out signed(15 downto 0)
    );
end component;

component mixer is
    generic (
        ACTIVE_CHANNELS : integer := 10;
        DATA_WIDTH: integer := 16
    );
    port (
        clk : in std_logic;
        reset_n : in std_logic;
        amplitude : in signed(7 downto 0);
        ch1, ch2, ch3, ch4,
        ch5, ch6, ch7, ch8,
        ch9, ch10, ch11, ch12 : in signed(DATA_WIDTH-1 downto 0);
        sigOut : out signed(DATA_WIDTH-1 downto 0)
    );
end component;

component adsr is
    generic (
        DATA_WIDTH: integer := 16
    );
    port (
        clk: in std_logic;
        reset_n: in std_logic;
        -- Note on / off
        en: in std_logic;
        -- DAC ready for next sample
        nextSample: in std_logic;
        -- ADRS, all timings in 8bit
        attack: in signed(7 downto 0);
        decay: in signed(7 downto 0);
        sustain: in signed(7 downto 0);
        rel: in signed(7 downto 0); -- release is a keyword or something
        -- Input amplitude
        signalIn: in signed(DATA_WIDTH-1 downto 0);
        -- Resultant amplitude
        signalOut: out signed(DATA_WIDTH-1 downto 0)
    );
end component;

component operator is
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
end component;


end skrach_parts;