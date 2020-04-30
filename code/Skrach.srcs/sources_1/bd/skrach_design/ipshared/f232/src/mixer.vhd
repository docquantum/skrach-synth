--------------------------------------------------------------------------------
-- Name:	Daria Solovey
-- Updated:	2020/04/26
-- File:    mixer.vhd
-- Module:	Skrach Core
-- Pupr:	Combines up to 12 channels of signed audio data making sure it's
--          properly scaled as to not overflow. This can be used to create
--          an aditive synth, or in my case, implement polyphony.
--          It also amplifies the output as this is a final step module.
--
-- Theory:  Using log2, can find out how many more bits are needed to store
--          signed data without overflowing. Knowing this, we can add all
--          the signals together with the new bit width and then take the
--          top bits of the combined signal to scale the data down making
--          sure the amplitude does not excede 100%.  
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

Library UNISIM;
use UNISIM.vcomponents.all;

Library UNIMACRO;
use UNIMACRO.vcomponents.all;

entity mixer is
    generic (
        ACTIVE_CHANNELS : integer := 10;
        DATA_WIDTH: integer := 16
    );
    port (
        clk : in std_logic;
        reset_n : in std_logic;
        amplitude: in signed(7 downto 0);
        ch1, ch2, ch3, ch4,
        ch5, ch6, ch7, ch8,
        ch9, ch10, ch11, ch12 : in signed(DATA_WIDTH-1 downto 0);
        sigOut : out signed(DATA_WIDTH-1 downto 0)
    );
end mixer;

architecture implementation of mixer is
    -- compile time log2 function curtesy of PoC Library
    -- https://github.com/VLSI-EDA/PoC/blob/master/src/common/utils.vhdl
    function log2ceil(arg : positive) return natural is
        variable tmp : positive     := 1;
        variable log : natural      := 0;
    begin
        if arg = 1 then return 0; end if;
        while arg > tmp loop
            tmp := tmp * 2;
            log := log + 1;
        end loop;
        return log;
    end function;
    
    -- By using a log2 func, we can know how many extra bits we
    -- need to represent the value without overflow when adding
    -- all channels together assuming some will be at 100% ampl.
    constant EXTRA_BITS : integer := log2ceil(ACTIVE_CHANNELS);
    constant INT_SIG_BITS: integer := EXTRA_BITS+DATA_WIDTH;
    signal mixedSigInt : signed(INT_SIG_BITS-1 downto 0);
    signal sigOutInt: std_logic_vector(DATA_WIDTH+7 downto 0);
    signal reset: std_logic;
begin
    
    sigOut <= signed(sigOutInt(DATA_WIDTH+6 downto DATA_WIDTH-9));
    
    -- resize all signals to prevent overflow and add together
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(reset_n = '0') then
                mixedSigInt <= (others => '0');
            else
                mixedSigInt <=
                    resize(ch1, INT_SIG_BITS) + resize(ch2, INT_SIG_BITS)
                    + resize(ch3, INT_SIG_BITS) + resize(ch4, INT_SIG_BITS)
                    + resize(ch5, INT_SIG_BITS) + resize(ch6, INT_SIG_BITS)
                    + resize(ch7, INT_SIG_BITS) + resize(ch8, INT_SIG_BITS)
                    + resize(ch9, INT_SIG_BITS) + resize(ch10, INT_SIG_BITS)
                    + resize(ch11, INT_SIG_BITS) + resize(ch12, INT_SIG_BITS);
            end if;
        end if;
    end process;
    
    -- Use dsp slice to multiply the signal by the amplitude.
        -- Use DSP slice for multiplication to help with negative slack/register counts
    reset <= not reset_n;
    multipy_signal : MULT_MACRO
    generic map (
        DEVICE => "7SERIES",
        LATENCY => 3,   -- Desired clock cycle latency, 0-4
        WIDTH_A => DATA_WIDTH,  -- Multiplier A-input bus width, 1-25 
        WIDTH_B => 8   -- Multiplier B-input bus width, 1-18
    )
    port map (
        P => sigOutInt,     -- Multiplier ouput bus, width determined by WIDTH_P generic 
        A => std_logic_vector(mixedSigInt(INT_SIG_BITS-1 downto EXTRA_BITS)),
        B => std_logic_vector(amplitude),
        CE => '1',   -- 1-bit active high input clock enable
        CLK => clk, -- 1-bit positive edge clock input
        RST => reset  -- 1-bit input active high reset
    );

end implementation;
