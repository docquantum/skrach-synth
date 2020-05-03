----------------------------------------------------------------------------------
-- Name:	Prof Jeff Falkinburg & Daria Solovey
-- Date:	April 26th, 2020
-- File:    audio_codec_wrapper.vhd
-- Pupr:	Interface to the Nexys Video Boards ADAU1761 SigmaDSP audio codec
--
-- Doc:	    Adapted from the Digilent Nexys Video looper and DMA example 
-- 	
-- Academic Integrity Statement: I certify that, while others may have 
-- assisted me in brain storming, debugging and validating this program, 
-- the program itself is my own work. I understand that submitting code 
-- which is the work of other individuals is a violation of the honor   
-- code.  I also understand that if I knowingly give my original work to 
-- another individual is also a violation of the honor code. 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

Library UNISIM;
use UNISIM.vcomponents.all;

Library UNIMACRO;
use UNIMACRO.vcomponents.all;

entity audio_codec_wrapper is
    Generic (
        -- bit width of sample data (24/20/18/16-bit wide)
        SAMPLE_WIDTH: integer := 24
    );
    Port (
        clk : in std_logic; -- 100 Mhz System Clock (recommended be seperate from AXI Periph. clocks)
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
        sda : inout std_logic -- I2C data
    );
end audio_codec_wrapper;

architecture implementation of audio_codec_wrapper is
    ------------------------------------------------------------------------
    -- Signal Declarations
    ------------------------------------------------------------------------
    signal clk_12 : std_logic;
    signal reset, reset_sync, resetn : std_logic;
    signal ready_sig : std_logic;
    signal ac_lrclk_sig, ac_lrclk_sync, ac_bclk_sig: std_logic;
    signal bus_in_fifo_in, bus_in_fifo_out: std_logic_vector(2*SAMPLE_WIDTH-1 downto 0);
    signal bus_out_fifo_in, bus_out_fifo_out: std_logic_vector(2*SAMPLE_WIDTH-1 downto 0);
    signal L_bus_in_sig, R_bus_in_sig, L_bus_out_sig, R_bus_out_sig : std_logic_vector(SAMPLE_WIDTH-1 downto 0);
    signal bus_in_fifo_full, bus_out_fifo_empty : std_logic;
    signal RxFifoWrEn          : std_logic;
    signal RxFifoWrEnL         : std_logic;
    signal RxFifoWrEnR         : std_logic;
    signal TxFifoRdEn          : std_logic;
    signal TxFifoRdEnL         : std_logic;
    signal TxFifoRdEnR         : std_logic;
    
    ------------------------------------------------------------------------
    -- Component Declarations
    ------------------------------------------------------------------------
    
    -- Communicates the audio data with the audio codec via I2S.
    component i2s_ctl is
        generic (
            -- Width of one Slot (24/20/18/16-bit wide)
            C_DATA_WIDTH: integer := 24
        );
        port (
            CLK_I       : in  std_logic; -- System clock (100 MHz)
            RST_I       : in  std_logic; -- System reset (active high)	 
            EN_TX_I     : in  std_logic; -- Transmit enable
            EN_RX_I     : in  std_logic; -- Receive enable
            FS_I		: in  std_logic_vector(3 downto 0); -- Sampling rate slector 
            MM_I    	: in  std_logic; -- Audio controler Master Mode delcetor
            D_L_I       : in  std_logic_vector(C_DATA_WIDTH-1 downto 0); -- Left channel data
            D_R_I       : in  std_logic_vector(C_DATA_WIDTH-1 downto 0); -- Right channel data
            OE_L_O      : out std_logic; -- Left channel data output enable pulse
            OE_R_O      : out std_logic; -- Right channel data output enable pulse
            WE_L_O      : out std_logic; -- Left channel data write enable pulse
            WE_R_O      : out std_logic; -- Right channel data write enable pulse     
            D_L_O       : out std_logic_vector(C_DATA_WIDTH-1 downto 0); -- Left channel data
            D_R_O       : out std_logic_vector(C_DATA_WIDTH-1 downto 0); -- Right channel data
            BCLK_O      : out std_logic; -- serial CLK
            LRCLK_O     : out std_logic; -- channel CLK
            SDATA_O     : out std_logic; -- Output serial data
            SDATA_I     : in  std_logic  -- Input serial data
        );
    end component;
    
    component clk_wiz_0 is
        Port (
            clk_in1 : in std_logic;
            clk_out1 : out std_logic; -- 12.288MHz ADAU1761 SigmaDSP audio codec master clock
            resetn : in std_logic -- active low reset for Nexys Video
        );
    end component;
    
    -- Syncronizes two signals (used for clks)
    component Sync_ff is
        Port ( 
            -- Input Clock
          CLK : in  STD_LOGIC;
            -- Asynchorn signal
          D_I : in  STD_LOGIC;
            -- Sync signal
          Q_O : out  STD_LOGIC
        );
    end component;
    
    component rst_sync 
        Port ( 
               RST_I    : in STD_LOGIC;
               CLK      : in STD_LOGIC;
               Q_O      : out STD_LOGIC
        );
    end component;


    -- Initializes registers for the audio codec over I2C.
    component audio_init is
        Port (
            clk : in std_logic;
            rst : in std_logic;
            sda : inout std_logic;
            scl : inout std_logic
        );
    end component;

begin

    reset <= not reset_n;    -- active high reset

    initialize_audio : audio_init
        Port Map (
            clk => clk,
            rst => reset,
            sda => sda,
            scl => scl
        ); 
    audiocodec_master_clock: clk_wiz_0
        Port Map (
            clk_in1 => clk,
            clk_out1 => clk_12,     -- 12.288MHz ADAU1761 SigmaDSP audio codec master clock
            resetn => reset_n       -- active low reset for Nexys Video
        );
        
    reset_sync_inst: rst_sync	
    port map(
        CLK => clk_12,
        RST_I => reset,
        Q_O => reset_sync
    );

    ------------------------------------------------------------------------
    -- Instantiaton of the ODDR for the Output MCLK
    ------------------------------------------------------------------------
    ODDR_inst : ODDR
    generic map(
        DDR_CLK_EDGE => "OPPOSITE_EDGE",    -- "OPPOSITE_EDGE" or "SAME_EDGE" 
        INIT => '0',  						-- Initial value for Q port ('1' or '0')
        SRTYPE => "SYNC")					-- Reset Type ("ASYNC" or "SYNC")
    port map (
        Q => ac_mclk,  						-- 1-bit DDR output
        C => clk_12,   						-- 1-bit clock input
        CE => '1',  						-- 1-bit clock enable input
        D1 => '1',							-- 1-bit data input (positive edge)
        D2 => '0', 							-- 1-bit data input (negative edge)
        R => '0',   						-- 1-bit reset input
        S => '0'                            -- 1-bit set input
    );

    -- FIFO for two clock domain data transfer
    bus_out_fifo_in <= L_bus_out_sig & R_bus_out_sig;
    L_bus_out <= bus_out_fifo_out(SAMPLE_WIDTH-1 downto 0);
    R_bus_out <= bus_out_fifo_out(2*SAMPLE_WIDTH-1 downto SAMPLE_WIDTH);
        
    FIFO_BUS_OUT_inst : FIFO_DUALCLOCK_MACRO
    generic map (
        DEVICE => "7SERIES",            -- Target Device: "VIRTEX5", "VIRTEX6", "7SERIES" 
        ALMOST_FULL_OFFSET => X"0080",  -- Sets almost full threshold
        ALMOST_EMPTY_OFFSET => X"0080", -- Sets the almost empty threshold
        DATA_WIDTH => SAMPLE_WIDTH*2,   -- Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
        FIFO_SIZE => "36Kb",            -- Target BRAM, "18Kb" or "36Kb" 
        FIRST_WORD_FALL_THROUGH => FALSE) -- Sets the FIFO FWFT to TRUE or FALSE
    port map (
        ALMOSTEMPTY => bus_out_fifo_empty,   -- 1-bit output almost empty
        ALMOSTFULL => OPEN,     -- 1-bit output almost full
        DO => bus_out_fifo_out,                     -- Output data, width defined by DATA_WIDTH parameter
        EMPTY => OPEN,               -- 1-bit output empty
        FULL => OPEN,                 -- 1-bit output full
        RDCOUNT => OPEN,           -- Output read count, width determined by FIFO depth
        RDERR => OPEN,               -- 1-bit output read error
        WRCOUNT => OPEN,           -- Output write count, width determined by FIFO depth
        WRERR => OPEN,               -- 1-bit output write error
        DI => bus_out_fifo_in,         -- Input data, width defined by DATA_WIDTH parameter
        RDCLK => clk,       -- 1-bit input read clock
        RDEN => '0',        -- 1-bit input read enable
        RST => reset,       -- 1-bit input reset
        WRCLK => clk_12,    -- 1-bit input write clock
        WREN => RxFifoWrEn  -- 1-bit input write enable
    );
    
    -- FIFO for two clock domain data transfer
    bus_in_fifo_in <= R_bus_in & L_bus_in;
    L_bus_in_sig <= bus_in_fifo_out(SAMPLE_WIDTH-1 downto 0);
    R_bus_in_sig <=  bus_in_fifo_out(2*SAMPLE_WIDTH-1 downto SAMPLE_WIDTH);
        
    FIFO_BUS_IN_inst : FIFO_DUALCLOCK_MACRO
    generic map (
        DEVICE => "7SERIES",            -- Target Device: "VIRTEX5", "VIRTEX6", "7SERIES" 
        ALMOST_FULL_OFFSET => X"0080",  -- Sets almost full threshold
        ALMOST_EMPTY_OFFSET => X"0080", -- Sets the almost empty threshold
        DATA_WIDTH => SAMPLE_WIDTH*2,   -- Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
        FIFO_SIZE => "36Kb",            -- Target BRAM, "18Kb" or "36Kb" 
        FIRST_WORD_FALL_THROUGH => FALSE) -- Sets the FIFO FWFT to TRUE or FALSE
    port map (
        ALMOSTEMPTY => OPEN,   -- 1-bit output almost empty
        ALMOSTFULL => bus_in_fifo_full,     -- 1-bit output almost full
        DO => bus_in_fifo_out,                     -- Output data, width defined by DATA_WIDTH parameter
        EMPTY => OPEN,               -- 1-bit output empty
        FULL => OPEN,                 -- 1-bit output full
        RDCOUNT => OPEN,           -- Output read count, width determined by FIFO depth
        RDERR => OPEN,               -- 1-bit output read error
        WRCOUNT => OPEN,           -- Output write count, width determined by FIFO depth
        WRERR => OPEN,               -- 1-bit output write error
        DI => bus_in_fifo_in,         -- Input data, width defined by DATA_WIDTH parameter
        RDCLK => clk_12,        -- 1-bit input read clock
        RDEN => TxFifoRdEn,                 -- 1-bit input read enable
        RST => reset_sync,                   -- 1-bit input reset
        WRCLK => clk,               -- 1-bit input write clock
        WREN => ready_sig                  -- 1-bit input write enable
    );
    
	audio_inout: i2s_ctl
    Generic map(SAMPLE_WIDTH)
    Port Map (
        CLK_I => clk_12,            --12.288MHz ac_mclk
        RST_I => reset_sync,             --Sys rst (active high)
        EN_TX_I => '1',             --Transmit Enable (push sound data into chip)
        EN_RX_I => '1',             --Receive enable (pull sound data out of chip)
        OE_L_O => TxFifoRdEnL,
        OE_R_O => TxFifoRdEnR,
        WE_L_O => RxFifoWrEnL,
        WE_R_O => RxFifoWrEnR,
        FS_I => "0101",             --Sampling rate selector (divide by 4 to get correct bit clk)
        MM_I => '0',                --Audio Controller Master mode select
        D_L_I => L_bus_in_sig,      --Left channel data input to DAC
        D_R_I => R_bus_in_sig,      --Right channel data input to DAC
        D_L_O => L_bus_out_sig,         -- Left channel data output from ADC
        D_R_O => R_bus_out_sig,         -- Right channel data output from ADC
        BCLK_O => ac_bclk,          -- serial CLK (325.5 ns period = 3.072MHz)
        LRCLK_O => ac_lrclk_sig,    -- channel CLK (42.66 us period = 24KHz)
        SDATA_O => ac_dac_sdata,    -- Output serial data
        SDATA_I => ac_adc_sdata     -- Input serial data
    );
    
    TxFifoRdEn <= TxFifoRdEnL or TxFifoRdEnR;
    RxFifoWrEn <= RxFifoWrEnL or RxFifoWrEnR;
    
    -- Syncs the two clks together to fix phase issues with ready
    lr_clk_sync_inst: Sync_FF
    port map (
        CLK => clk,
        D_I => ac_lrclk_sig,
        Q_O => ac_lrclk_sync
    );
    
    ac_lrclk <= ac_lrclk_sig;
    ready <= ready_sig;
    
    --------------------------------------------------------------------------
    -- Audio Codec Ready signal process
    --------------------------------------------------------------------------
    
    process (clk, ac_lrclk_sync)
        variable lrclkCount : integer := 0;
        variable prevState : std_logic := '0';
    begin
        if (rising_edge(clk)) then
            if(reset_n = '0') then
                lrclkCount := 0;
                prevState := '0';
            elsif (ac_lrclk_sync = '1' and prevState = '0') then
                lrclkCount := lrclkCount + 1;
                if (lrclkCount = 2) then
                    lrclkCount := 0;
                    ready_sig <= '1';
                end if;
                prevState := ac_lrclk_sync;
            else
                ready_sig <= '0';
                prevState := ac_lrclk_sync;
            end if;
        end if;
    end process;
    
end implementation;
