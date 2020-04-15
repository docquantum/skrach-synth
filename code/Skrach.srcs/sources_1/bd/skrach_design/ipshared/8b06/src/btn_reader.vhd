--------------------------------------------------------------------------------
-- Name:	Daria Solovey
-- Updated:	2020/04/02
-- File:	btn_reader.vhd
-- HW:		Lab 4
-- Crs:		CE446
--
-- Purp:	Reads a btn signal and uses a latch so that the signal
--          comes out as a single pulse for the rising edge, rather
--          than a continuous value. Also implements button debounce
--          as per the circuit demonstrated on digikey.
--
--          stable_count = (clk_freq_hz * stable_time_ms) / 1000
--
-- Documentation:	Lectures, homeworks, and this guide:
-- https://www.digikey.com/eewiki/pages/viewpage.action?pageId=4980758
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

entity btn_reader is
   Port(
       clk: in std_logic;
       reset_n: in std_logic;
       btn: in std_logic;
       btn_press: out std_logic
   );
end btn_reader;

architecture structure of btn_reader is
    constant STABLE_TIME_MS: integer := 100;
    constant CLOCK_SPEED: integer := 100000000;
    constant STABLE_COUNT: integer := (CLOCK_SPEED * STABLE_TIME_MS) / 1000;
    signal ff1, ff2: std_logic := '0';
    signal counter_reset: std_logic;
    signal btn_current, btn_old: std_logic := '0';

begin

    counter_reset <= ff1 xor ff2;

    -- Debounce
    process(clk, reset_n)
        variable count : integer range 0 to STABLE_COUNT;
    begin
        if(reset_n = '0') then
           ff1 <= '0';
           ff2 <= '0';
           btn_current <= '0';
        elsif(rising_edge(clk)) then
            ff1 <= btn;
            ff2 <= ff1;
            if(counter_reset = '1') then
                count := 0;
            elsif(count < STABLE_COUNT) then
                count := count + 1;
            else
                btn_current <= ff2;
            end if;
        end if;
    end process;
    
    -- Latching
    process(clk, reset_n)
    begin
        if(reset_n = '0') then
            btn_press <= '0'; 
            btn_old <= '0';
        elsif(rising_edge(clk)) then
            if((btn_current xor btn_old) = '1') then
                btn_old <= btn_current;
                if(btn_current = '1') then
                    btn_press <= '1';
                end if;
            else
                btn_press <= '0';
            end if;
        end if;
    end process;


end structure;
