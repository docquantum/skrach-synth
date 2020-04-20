--------------------------------------------------------------------------------
-- Name:	Daria Solovey
-- Update:	2020/04/03
-- File:    lab4_controlunit.vhd
-- HW:	    Lab 4
-- Pupr:	Looks at the status words to know when to send out
--          various control words to control the count of the
--          memory address.
--
-- Doc:	    Lab 2, lectures
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

entity lab4_controlunit is
    Port (
        clk: in std_logic;
        reset_n: in std_logic;
        sw: in std_logic;
        cw: out std_logic_vector(1 downto 0)
    );
end lab4_controlunit;

architecture structure of lab4_controlunit is
    type STATE_TYPE is (RESET, READ_VAL, WAIT_READY);
    signal state: STATE_TYPE := RESET;
    signal ready: std_logic;
    signal count_ctrl: std_logic_vector(1 downto 0);
begin

    process(clk)
    begin
        if (rising_edge(clk)) then
            if(reset_n = '0') then
                state <= RESET;
            else 
                case state is
                    when RESET =>
                        count_ctrl <= "11";
                        state <= READ_VAL;
                    when READ_VAL => 
                        count_ctrl <= "10";
                        state <= WAIT_READY;
                    when WAIT_READY =>
                        count_ctrl <= "00";
                        if(ready = '1') then
                            state <= READ_VAL;
                        end if;
                    when others =>
                        state <= RESET;
                end case;
            end if;
        end if;
    end process;

    ready <= sw;
    
    cw(1 downto 0) <= count_ctrl;

end structure;
