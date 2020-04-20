----------------------------------------------------------------------------------
-- Company: Digilent Ro
-- Engineer: Elod Gyorgy
-- 
-- Create Date:    14:55:31 04/07/2011 
-- Design Name: 
-- Module Name:    TWIUtils - Package 
-- Project Name:	 TWI Master Controller Reference Design 
-- Target Devices: 
-- Tool versions: 
-- Description: This package provides enumeration types for TWI (Two-Wire
-- Interface) bus status and error conditions.
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
package TWIUtils is
  type busState_type is (busUnknown, busBusy, busFree);
  type error_type is (errArb, errNAck);
end TWIUtils;

package body TWIUtils is 
end TWIUtils;

----------------------------------------------------------------------------------
-- Company: Digilent Ro
-- Engineer: Elod Gyorgy
-- 
-- Create Date:    14:55:31 04/07/2011 
-- Design Name: 
-- Module Name:    TWICtl - Behavioral 
-- Project Name:	 TWI Master Controller Reference Design 
-- Target Devices: 
-- Tool versions: 
-- Description: TWICtl is a reusabled Master Controller implementation of the
-- TWI protocol. It uses 7-bit addressing and was tested in STANDARD I2C mode.
-- FAST mode should also be theoretically possible, although it has not been
-- tested. It adheres to arbitration rules, thus supporting multi-master TWI
-- buses. Slave-wait is also supported.
-- 
--
-- Dependencies: digilent.TWIUtils package	- TWICtl.vhd
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.math_real.all;

library digilent;
--use digilent.TWIUtils.ALL;

entity TWICtl is
----------------------------------------------------------------------------------
-- Title : Mode of operation
-- Description: The controller can be instructed to initiate/continue/stop a 
-- data transfer using the strobe (STB_I, MSG_I) signals. Data flow management is 
-- provided by the done (DONE_O) and error (ERR_O, ERRTYPE_O) signals. Output
-- signals are synchronous to CLK and input signals must also be synchronous to
-- CLK. Signals are active-high.
-- Fast-track instructions (single byte transfer):
--		-put the TWI address on A_I
--		-if data is written put it on D_I
--		-assert STB_I
--		-when DONE_O pulse arrives, read data is present on D_O, if any
--		-repeat, or deassert STB_I
-- Detailed data transfer flow:
--    -when DONE_O is low, the controller is ready to accept commands
--    -data transfer can be initiated by putting a TWI slave address on the A_I
--    bus and providing a strobe (STB_I)
--    -the direction of data transfer (read/write) is determined by the LSB of the
--    address (0-write, 1-read)
--		-in case of a 'write' the data byte should also be present on the D_I bus
--		prior to the arrival of the strobe (STB_I)
--    -once the data byte gets read/written, DONE_I pulses high for one CLK cycle
--		-in case of an error, ERR_O will pulse high together with DONE_I; ERR_O low
--		together with DONE_I high indicates success
--		-after DONE_I pulses high there is a 1/4 TWI period time frame when the next
--		strobe can be sent; this is useful, when multiple bytes are sent/received
--		in a single transfer packet; for ex. for write transfers, a new byte can
-- 	be put on the D_I and STB_I provided;
--		-if no new strobe is provided, the transfer will end
--		-if a new strobe is provided, but the address changed, the current transfer
--		will end and a new will begin
--		-starting a new transfer can be forced with the MSG_I pin; if asserted with
--		a strobe, the data byte will be written/read in a new packet; the advantage
--		of this is relevant only in multi-master buses: rather than waiting for the
--		current transfer to end and the bus to be released, a new transfer can be
--		initiated without giving up the control over the bus
----------------------------------------------------------------------------------
	generic (CLOCKFREQ : natural := 50); -- input CLK frequency in MHz
	port (
		MSG_I : in STD_LOGIC; --new message
		STB_I : in STD_LOGIC; --strobe
		A_I : in  STD_LOGIC_VECTOR (7 downto 0); --address input bus
		D_I : in  STD_LOGIC_VECTOR (7 downto 0); --data input bus
		D_O : out  STD_LOGIC_VECTOR (7 downto 0); --data output bus
		DONE_O : out  STD_LOGIC; --done status signal
      ERR_O : out  STD_LOGIC; --error status
		CLK : in std_logic;
		SRST : in std_logic;
----------------------------------------------------------------------------------
-- TWI bus signals
----------------------------------------------------------------------------------
		SDA : inout std_logic; --TWI SDA
		SCL : inout std_logic --TWI SCL
	);
end TWICtl;

architecture Behavioral of TWICtl is
	attribute fsm_encoding: string;
	
	constant FSCL : natural := 400_000; --in Hz SCL clock frequency
	constant TIMEOUT : natural := 10; --in ms TWI timeout for slave wait period
	constant TSCL_CYCLES : natural := 
		natural(ceil(real(CLOCKFREQ*1_000_000/FSCL)));
	constant TIMEOUT_CYCLES : natural :=
		natural(ceil(real(CLOCKFREQ*TIMEOUT*1_000)));

   type state_type is (stIdle, stStart, stRead, stWrite, stError, stStop,
		stSAck, stMAck, stMNAckStop, stMNAckStart, stStopError); 
    type busState_type is (busUnknown, busFree, busBusy);
    type error_type is (errNAck, errArb);
   signal state, nstate : state_type;
	attribute fsm_encoding of state: signal is "gray";	
		
	signal dSda, ddSda, dScl, ddScl : std_logic;
	signal fStart, fStop : std_logic;
	signal busState : busState_type := busUnknown;
	signal errTypeR, errType : error_type;
   signal busFreeCnt, sclCnt : natural range TSCL_CYCLES downto 0 := TSCL_CYCLES;
	signal timeOutCnt : natural range TIMEOUT_CYCLES downto 0 := TIMEOUT_CYCLES;
	signal slaveWait, arbLost : std_logic;
	signal dataByte, loadByte, currAddr : std_logic_vector(7 downto 0); --shift register and parallel load
	signal rSda, rScl : std_logic := '1';
	signal subState : std_logic_vector(1 downto 0) := "00";
	signal latchData, latchAddr, iDone, iErr, iSda, iScl, shiftBit, dataBitOut, rwBit, addrNData : std_logic;
	signal bitCount : natural range 0 to 7 := 7;
	signal int_Rst : std_logic := '0';
begin

----------------------------------------------------------------------------------                  
--Bus State detection
----------------------------------------------------------------------------------
SYNC_FFS: process(CLK)
   begin
      if Rising_Edge(CLK) then
			dSda <= SDA;
			ddSda <= dSda;
			dScl <= SCL;
      end if;
   end process;
	
	fStart <= dSCL and not dSda and ddSda; --if SCL high while SDA falling, start condition
	fStop <= dSCL and dSda and not ddSda; --if SCL high while SDA rising, stop condition

TWISTATE: process(CLK)
   begin
      if Rising_Edge(CLK) then
			if (int_Rst = '1') then
				busState <= busUnknown;
         elsif (fStart = '1') then --If START condition detected, bus is busy
            busState <= busBusy;
			elsif (busFreeCnt = 0) then --We counted down tBUF, so it must be free
            busState <= busFree;
         end if;
      end if;
   end process;

TBUF_CNT: process(CLK)
   begin
      if Rising_Edge(CLK) then
         if (dSCL = '0' or dSDA = '0' or int_Rst = '1') then
            busFreeCnt <= TSCL_CYCLES;
         elsif (dSCL = '1' and dSDA = '1') then
            busFreeCnt <= busFreeCnt - 1; --counting down 1 SCL period on free bus
         end if;
      end if;
   end process;
	
----------------------------------------------------------------------------------
--Slave devices can insert wait states by keeping SCL low
---------------------------------------------------------------------------------- 
   slaveWait <=   '1' when (dSCL = '0' and rScl = '1') else
                  '0';
----------------------------------------------------------------------------------                  
--If the SDA line does not correspond to the transmitted data while the SCL line
--is at the HIGH level the master lost an arbitration to another master.
---------------------------------------------------------------------------------- 
   arbLost <=     '1' when (dSCL = '1' and dSDA = '0' and rSda = '1') else
                  '0';

----------------------------------------------------------------------------------
-- Internal reset signal
----------------------------------------------------------------------------------	
   RST_PROC: process (CLK)
   begin
      if Rising_Edge(CLK) then
         if (state = stIdle and SRST = '0') then
            int_Rst <= '0';
         elsif (SRST = '1') then
            int_Rst <= '1';
         end if;
      end if;
   end process;
	
----------------------------------------------------------------------------------
-- SCL period counter
---------------------------------------------------------------------------------- 
SCL_CNT: process (CLK)
	begin
		if Rising_Edge(CLK) then
			if (sclCnt = 0 or state = stIdle) then
				sclCnt <= TSCL_CYCLES/4;
			elsif (slaveWait = '0') then -- clock synchronization with other masters
				sclCnt <= sclCnt - 1;
			end if;
		end if;
	end process;

----------------------------------------------------------------------------------
-- SCL period counter
---------------------------------------------------------------------------------- 
TIMEOUT_CNT: process (CLK)
	begin
		if Rising_Edge(CLK) then
			if (timeOutCnt = 0 or slaveWait = '0') then
				timeOutCnt <= TIMEOUT_CYCLES;
			elsif (slaveWait = '1') then -- count timeout on wait period inserted by slave
				timeOutCnt <= timeOutCnt - 1;
			end if;
		end if;
	end process;
	
----------------------------------------------------------------------------------
-- Title: Data byte shift register
-- Description: Stores the byte to be written or the byte read depending on the
-- transfer direction.
----------------------------------------------------------------------------------	
DATABYTE_SHREG: process (CLK) 
	begin
		if Rising_Edge(CLK) then
			if ((latchData = '1' or latchAddr = '1') and sclCnt = 0) then
				dataByte <= loadByte; --latch address/data
				bitCount <= 7;
				--set flag so that we now what is the byte we are sending
				if (latchData = '1') then
					addrNData <= '0';
				else
					addrNData <= '1';
				end if;
			elsif (shiftBit = '1' and sclCnt = 0) then
				dataByte <= dataByte(dataByte'high-1 downto 0) & dSDA;
				bitCount <= bitCount - 1;
			end if;
		end if;
	end process;

	loadByte <= A_I when latchAddr = '1' else
					D_I;
	dataBitOut <= dataByte(dataByte'high);
	
	D_O <= dataByte;

----------------------------------------------------------------------------------
-- Title: Current address register
-- Description: Stores the TWI slave address
----------------------------------------------------------------------------------	
CURRADDR_REG: process (CLK) 
	begin
		if Rising_Edge(CLK) then
			if (latchAddr = '1') then
				currAddr <= A_I; --latch address/data
			end if;
		end if;
	end process;
	
	rwBit <= currAddr(0);
----------------------------------------------------------------------------------
-- Title: Substate counter
-- Description: Divides each state into 4, to respect the setup and hold times of
-- the TWI bus.
----------------------------------------------------------------------------------	
SUBSTATE_CNT: process (CLK)
   begin
      if Rising_Edge(CLK) then
			if (state = stIdle) then
				subState <= "00";
			elsif (sclCnt = 0) then
				subState <= subState + 1;
			end if;
		end if;
	end process;
	
SYNC_PROC: process (CLK)
   begin
      if Rising_Edge(CLK) then
         state <= nstate;
			
			rSda <= iSda;
         rScl <= iScl;			
			DONE_O <= iDone;
			ERR_O <= iErr;
			errTypeR <= errType;
      end if;
   end process;

OUTPUT_DECODE: process (nstate, subState, state, errTypeR, dataByte(0),
	sclCnt, bitCount, rSda, rScl, dataBitOut, arbLost, dSda, addrNData)
   begin
		iSda <= rSda; --no change by default
		iScl <= rScl;
		iDone <= '0';
		iErr <= '0';
		errType <= errTypeR; --keep error type
		shiftBit <= '0';
		latchAddr <= '0';
		latchData <= '0';
		
		if (state = stStart) then
			case (subState) is
				when "00" =>
					iSda <= '1';
					--keep SCL
				when "01" =>
					iSda <= '1';
					iScl <= '1';
				when "10" =>
					iSda <= '0';
					iScl <= '1';
				when "11" =>
					iSda <= '0';
					iScl <= '0';
				when others =>
			end case;
		end if;
		
		if (state = stStop or state = stStopError) then
			case (subState) is
				when "00" =>
					iSda <= '0';
					--keep SCL
				when "01" =>
					iSda <= '0';
					iScl <= '1';
				when "10" =>
					iSda <= '1';
					iScl <= '1';
				when others =>					
			end case;
		end if;
		
		if (state = stRead or state = stSAck) then
			case (subState) is
				when "00" =>
					iSda <= '1'; --this will be 'Z' on SDA
					--keep SCL
				when "01" =>
					--keep SDA
					iScl <= '1';
				when "10" =>
					--keep SDA
					iScl <= '1';
				when "11" =>
					--keep SDA
					iScl <= '0';
				when others =>					
			end case;
		end if;
		
		if (state = stWrite) then
			case (subState) is
				when "00" =>
					iSda <= dataBitOut;
					--keep SCL
				when "01" =>
					--keep SDA
					iScl <= '1';
				when "10" =>
					--keep SDA
					iScl <= '1';
				when "11" =>
					--keep SDA
					iScl <= '0';
				when others =>					
			end case;
		end if;
		
		if (state = stMAck) then
			case (subState) is
				when "00" =>
					iSda <= '0'; -- acknowledge by writing 0
					--keep SCL
				when "01" =>
					--keep SDA
					iScl <= '1';
				when "10" =>
					--keep SDA
					iScl <= '1';
				when "11" =>
					--keep SDA
					iScl <= '0';
				when others =>					
			end case;
		end if;
		
		if (state = stMNAckStop or state = stMNAckStart) then
			case (subState) is
				when "00" =>
					iSda <= '1'; -- not acknowledge by writing 1
					--keep SCL
				when "01" =>
					--keep SDA
					iScl <= '1';
				when "10" =>
					--keep SDA
					iScl <= '1';
				when "11" =>
					--keep SDA
					iScl <= '0';
				when others =>					
			end case;
		end if;
		
		if (state = stSAck and sclCnt = 0 and subState = "01") then
			if (dSda = '1') then
				iDone <= '1';
				iErr <= '1'; --not acknowledged
				errType <= errNAck;
			elsif (addrNData = '0') then
				--we are done only when the data is sent too after the address
				iDone <= '1';
			end if;
		end if;
		
		if (state = stRead and subState = "01" and sclCnt = 0 and bitCount = 0) then
			iDone <= '1'; --read done
		end if;
		
		if (state = stWrite and arbLost = '1') then
			iDone <= '1'; --write done
			iErr <= '1'; --we lost the arbitration
			errType <= errArb;
		end if;
		
		if ((state = stWrite and sclCnt = 0 and subState = "11") or --shift at end of bit
			((state = stSAck or state = stRead) and subState = "01")) then --read in middle of bit
			shiftBit <= '1';
		end if;
		
		if (state = stStart) then
			latchAddr <= '1';
		end if;
		
		if (state = stSAck and subState = "11") then --get the data byte for the next write
			latchData <= '1';
		end if;
		
	end process;
	
NEXT_STATE_DECODE: process (state, busState, slaveWait, arbLost, STB_I, MSG_I,
SRST, subState, bitCount, int_Rst, dataByte, A_I, currAddr, rwBit, sclCnt, addrNData)
   begin
      
      nstate <= state;  --default is to stay in current state
   
      case (state) is
         when stIdle =>
            if (STB_I = '1' and busState = busFree and SRST = '0') then
               nstate <= stStart;
            end if;
				
         when stStart =>
            if (subState = "11" and sclCnt = 0) then
					nstate <= stWrite;
				end if;
			
			when stWrite =>
				if (arbLost = '1') then
					nstate <= stIdle;
				elsif (subState = "11" and sclCnt = 0 and bitCount = 0) then
					nstate <= stSAck;
				end if;
			
			when stSAck =>
				if (subState = "11" and sclCnt = 0) then
					if (int_Rst = '1' or dataByte(0) = '1') then
						nstate <= stStop;
					else
						if (addrNData = '1') then --if we have just sent the address, tx/rx the data too
							if (rwBit = '1') then
								nstate <= stRead;
							else
								nstate <= stWrite;
							end if;
						elsif (STB_I = '1') then
							if (MSG_I = '1' or currAddr /= A_I) then
								nstate <= stStart;
							else
								if (rwBit = '1') then
									nstate <= stRead;
								else
									nstate <= stWrite;
								end if;
							end if;
						else
							nstate <= stStop;
						end if;
					end if;
				end if;
				
         when stStop =>
				if (subState = "10" and sclCnt = 0) then
					nstate <= stIdle;
				end if;
			
			when stRead =>
				if (subState = "11" and sclCnt = 0 and bitCount = 7) then --bitCount will underflow
					if (int_Rst = '0' and STB_I = '1') then
						if (MSG_I = '1' or currAddr /= A_I) then
							nstate <= stMNAckStart;
						else
							nstate <= stMAck;
						end if;
					else
						nstate <= stMNAckStop;
					end if;
				end if;
			
			when stMAck =>
				if (subState = "11" and sclCnt = 0) then
					nstate <= stRead;
				end if;
			
			when stMNAckStart =>
				if (arbLost = '1') then
					nstate <= stIdle; -- arbitration lost, back off, no error because we got all the data
				elsif (subState = "11" and sclCnt = 0) then
					nstate <= stStart;
				end if;
			
			when stMNAckStop =>
				if (arbLost = '1') then
					nstate <= stIdle; -- arbitration lost, back off, no error because we got all the data
				elsif (subState = "11" and sclCnt = 0) then
					nstate <= stStop;
				end if;
				
         when others =>
            nstate <= stIdle;
      end case;      
   end process;

----------------------------------------------------------------------------------
-- Open-drain outputs for bi-directional SDA and SCL
---------------------------------------------------------------------------------- 
   SDA <= 'Z' when rSDA = '1' else
          '0';
   SCL <= 'Z' when rSCL = '1' else
          '0';
			 
end Behavioral;