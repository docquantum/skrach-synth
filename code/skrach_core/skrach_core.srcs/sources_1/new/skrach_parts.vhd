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

component audio_codec_wrapper is
    Generic (
        SAMPLE_WIDTH: integer := 24 -- bit width of sample data
    );
    Port (
        clk : in std_logic; -- 100 Mhz System Clock
        reset_n : in std_logic; -- Active low reset
        ac_mclk : out std_logic; -- Master clock --> 12.288Mhz
        ac_adc_sdata : in std_logic; -- RX data, I2S from codec
        ac_dac_sdata : out std_logic; -- TX data, I2S to codec
        ac_bclk : out std_logic; -- Bit clock for sample data
        ac_lrclk : out std_logic; -- left/right clock for left/right channel data
        ready : out std_logic; -- Goes high when the previous sample has been processed
        L_bus_in : in std_logic_vector(SAMPLE_WIDTH-1 downto 0); -- left channel input to DAC
        R_bus_in : in std_logic_vector(SAMPLE_WIDTH-1 downto 0); -- right channel input to DAC
        L_bus_out : out  std_logic_vector(SAMPLE_WIDTH-1 downto 0); -- left channel output from ADC
        R_bus_out : out  std_logic_vector(SAMPLE_WIDTH-1 downto 0); -- right channel output from ADC
        scl : inout std_logic; -- I2C clock
        sda : inout std_logic -- I2C cata
    );
end component;

component skrach_core is
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
end component;

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