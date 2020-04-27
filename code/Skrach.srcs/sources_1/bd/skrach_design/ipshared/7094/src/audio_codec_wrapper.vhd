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

entity audio_codec_wrapper is
    Generic (
        -- bit width of sample data (24/20/18/16-bit wide)
        SAMPLE_WIDTH: integer := 24
    );
    Port (
        clk : in std_logic; -- 100 Mhz System Clock (recommended be seperate from AXI Periph. clocks)
        clk_12 : in std_logic;
        clk_50 : in std_logic;
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
    signal reset, resetn, locked : std_logic;
    signal ready_sig : std_logic;
    signal ac_lrclk_sig, ac_lrclk_sync, ac_bclk_sig: std_logic;
    signal clk_50_sync, clk_12_sync: std_logic;
    
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
    
    component ac_clk_wiz is
        Port (
            clk_in1 : in std_logic;
            clk_out1 : out std_logic; -- 12.288MHz ADAU1761 SigmaDSP audio codec master clock
            clk_out2 : out std_logic; -- 50MHz Audio Codec Serial Communications clock
            locked: out std_logic;
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
            clk => clk_50,
            rst => reset,
            sda => sda,
            scl => scl
        ); 
    
    -- Syncs the clks together to fix phase issues with ready
--    m_clk_sync_inst: Sync_FF
--    port map (
--        CLK => clk,
--        D_I => clk_12,
--        Q_O => clk_12_sync
--    );
    ac_mclk <= clk_12;
    
    lr_clk_sync_inst: Sync_FF
    port map (
        CLK => clk,
        D_I => ac_lrclk_sig,
        Q_O => ac_lrclk_sync
    );
    ac_lrclk <= ac_lrclk_sig;
    
--    b_clk_sync_inst: Sync_FF
--    port map (
--        CLK => clk,
--        D_I => ac_bclk_sig,
--        Q_O => ac_bclk
--    );

	audio_inout: i2s_ctl
    Generic map(SAMPLE_WIDTH)
    Port Map (
        CLK_I => clk_12,            --12.288MHz ac_mclk
        RST_I => reset,             --Sys rst (active high)
        EN_TX_I => '1',             --Transmit Enable (push sound data into chip)
        EN_RX_I => '1',             --Receive enable (pull sound data out of chip)
        FS_I => "0101",             --Sampling rate selector (divide by 4 to get correct bit clk)
        MM_I => '0',                --Audio Controller Master mode select
        D_L_I => L_bus_in,          --Left channel data input to DAC
        D_R_I => R_bus_in,          --Right channel data input to DAC
        D_L_O => L_bus_out,         -- Left channel data output from ADC
        D_R_O => R_bus_out,         -- Right channel data output from ADC
        BCLK_O => ac_bclk,          -- serial CLK (325.5 ns period = 3.072MHz)
        LRCLK_O => ac_lrclk_sig,    -- channel CLK (42.66 us period = 24KHz)
        SDATA_O => ac_dac_sdata,    -- Output serial data
        SDATA_I => ac_adc_sdata     -- Input serial data
    );
    
    --------------------------------------------------------------------------
    -- Audio Codec Ready signal process
    --------------------------------------------------------------------------
    ready <= ready_sig;
    
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
