library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.skrach_parts.all;

entity test is
    Port (
        clk : in STD_LOGIC;
        reset_n : in STD_LOGIC;
        ac_mclk : out STD_LOGIC;
        ac_adc_sdata : in STD_LOGIC;
        ac_dac_sdata : out STD_LOGIC;
        ac_bclk : out STD_LOGIC;
        ac_lrclk : out STD_LOGIC;
        scl : inout STD_LOGIC;
        sda : inout STD_LOGIC
    );
end test;

architecture implementation of test is

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

    constant SAMPLE_WIDTH: integer := 16;
    constant PHASE_CALC: integer := ((392 * 2**19)/48000);
    constant PHASE_CALC_2: integer := ((373 * 2**19)/48000);
    signal ready: std_logic; -- goes high when a sample has been processed
    signal L_bus_in : std_logic_vector(SAMPLE_WIDTH-1 downto 0); -- left channel input to DAC (goes out)
    signal R_bus_in : std_logic_vector(SAMPLE_WIDTH-1 downto 0); -- right channel input to DAC (goes out)
    signal L_bus_out :  std_logic_vector(SAMPLE_WIDTH-1 downto 0); -- left channel output from ADC (comes in)
    signal R_bus_out :  std_logic_vector(SAMPLE_WIDTH-1 downto 0); -- right channel output from ADC (comes in)
    signal wave: signed(15 downto 0);
    signal wave1, wave2, adsrWave: signed(15 downto 0);    
    signal phaseInc: unsigned(15 downto 0) := to_unsigned(PHASE_CALC, 16);
    signal phaseInc2: unsigned(15 downto 0) := to_unsigned(PHASE_CALC_2, 16);
    signal waveSel: std_logic_vector(1 downto 0) := "00";
    signal enSig: std_logic;
begin

    audio_codec_wrapper_i: audio_codec_wrapper
    Generic map(SAMPLE_WIDTH)
    Port map(
        reset_n => reset_n,
        clk => clk,
        ac_mclk => ac_mclk,
        ac_adc_sdata => ac_adc_sdata,
        ac_dac_sdata => ac_dac_sdata,
        ac_bclk => ac_bclk,
        ac_lrclk => ac_lrclk,
        ready => ready,
        L_bus_in => L_bus_in,
        R_bus_in => R_bus_in,
        L_bus_out => L_bus_out,
        R_bus_out => R_bus_out,
        scl => scl,
        sda => sda
    );
    
--    process(clk, reset_n)
--        variable count: integer := 0;
--    begin
--        if(rising_edge(clk)) then
--            if(reset_n = '0') then
--                count := 0;
--                enSig <= '0';
--            elsif(ready = '1') then
--                count := count + 1;
--                if(count = 12000) then
--                    enSig <= not enSig;
--                    count := 0;
--                end if;
--            end if;
--         end if;
--    end process;
    
    core: skrach_core
    port map (
        -- 100 Mhz System Clock
        clk => clk,
        -- Active low reset
        reset_n => reset_n,
        -- 12 16 bit signals LSB = op1
        opPhase => (191 downto 32 => '0') & phaseInc & phaseInc2,
        -- one hot encoding note on/off
        opEnable => (11 downto 2 => '0') & (1 downto 0 => '1'),
        -- ADSR for the operators
        att => (others => '0'),
        dec => (others => '0'),
        sus => to_signed(126, 8),
        rel => (others => '0'),
        -- Master amplitude
        ampl => to_signed(100, 8),
        -- DAC Next Sample
        nextSample => ready,
        -- 16 bit audio data
        audioOut => wave
    );

    R_bus_in <= std_logic_vector(wave);
    L_bus_in <= std_logic_vector(wave);

end implementation;
