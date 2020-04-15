--------------------------------------------------------------------------------
-- Name:	Daria Solovey
-- Update:	2020/04/03
-- File:    addr_counter.vhd
-- HW:	    Lab 4
-- Pupr:	A counter that counts by the input D, making it easy to count
--          by a phase amount without extra work. Counter should also
--          roll over since it's unsigned, so no extra subtraction/reset
--          needed when the next value is at the start of the ram.
--
-- Doc:	    Lab 2
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

entity addr_counter is
    Port (
        clk: in std_logic;
        reset_n: in std_logic;
        cw: in std_logic_vector(1 downto 0);
        D: in unsigned(15 downto 0);
        count: out unsigned(15 downto 0)
    );
end addr_counter;

architecture structure of addr_counter is
    signal processCount: unsigned(15 downto 0);
begin

    count <= processCount;
    
    ---------------------
    --  cw:     Func:
    --  00      Hold
    --  01      Load D
    --  10      Count by D
    --  11      Reset 0
    ---------------------
    
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(reset_n = '0' or cw = "11") then
                processCount <= (others => '0');
            elsif(cw = "10") then
                processCount <= processCount + D;
            elsif(cw = "01") then
                processCount <= D;
            end if;
        end if;
    end process;


end structure;
