----------------------------------------------------------------------------------
-- Name:	Prof Jeff Falkinburg
-- Date:	Spring 2017
-- File:    Audio_Codec_Wrapper.vhd
-- HW:	    Lab 2 
-- Pupr:	Interface to the Nexys Video Boards ADAU1761 SigmaDSP audio codec
--
-- Doc:	    Adapted from the Digilent Nexys Video looper example 
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

entity Audio_Codec_Wrapper is
    Port ( clk : in STD_LOGIC;
        reset_n : in STD_LOGIC;
        ac_mclk : out STD_LOGIC;
        ac_adc_sdata : in STD_LOGIC;
        ac_dac_sdata : out STD_LOGIC;
        ac_bclk : out STD_LOGIC;
        ac_lrclk : out STD_LOGIC;
        ready : out STD_LOGIC;
        L_bus_in : in std_logic_vector(15 downto 0); -- left channel input to DAC
        R_bus_in : in std_logic_vector(15 downto 0); -- right channel input to DAC
        L_bus_out : out  std_logic_vector(15 downto 0); -- left channel output from ADC
        R_bus_out : out  std_logic_vector(15 downto 0); -- right channel output from ADC
        scl : inout STD_LOGIC;
        sda : inout STD_LOGIC);
end Audio_Codec_Wrapper;

architecture Behavioral of Audio_Codec_Wrapper is
    component i2s_ctl is
        generic (
        -- Width of one Slot (24/20/18/16-bit wide)
        C_DATA_WIDTH: integer := 16
        );
    Port (
        CLK_I       : in  std_logic; -- System clock (100 MHz)
        RST_I       : in  std_logic; -- System reset         
        EN_TX_I     : in  std_logic; -- Transmit enable
        EN_RX_I     : in  std_logic; -- Receive enable
        FS_I        : in  std_logic_vector(3 downto 0); -- Sampling rate slector 
        MM_I        : in  std_logic; -- Audio controler Master Mode delcetor
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

    component audio_init is
    Port (
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        sda : inout STD_LOGIC;
        scl : inout STD_LOGIC);
    end component;   

    --------------------------------------------------------------------------
    -- Clock Wizard Component Declaration Using Xilinx Vivado 
    --------------------------------------------------------------------------
    component audio_clk_wiz is
    Port (
        clk_in1 : in STD_LOGIC;
        clk_out1 : out STD_LOGIC; -- 12.288MHz ADAU1761 SigmaDSP audio codec master clock
        clk_out2 : out STD_LOGIC; -- 50MHz Audio Codec Serial Communications clock
        resetn : in STD_LOGIC);   -- active low reset for Nexys Video
    end component;   
	 
    signal reset : std_logic;
    signal ready_sig : std_logic;
    signal clk_50 : std_logic;
    signal ac_lrclk_sig : std_logic;
    signal ac_lrclk_sig_prev : std_logic;
    signal ac_lrclk_count : std_logic_vector(3 downto 0);

begin
    --------------------------------------------------------------------------
    -- Audio Codec Ready signal process
    --------------------------------------------------------------------------
    process (ac_lrclk_sig, clk)
    begin
        if (rising_edge(clk)) then
			if(reset_n = '0') then
                ac_lrclk_count <= "0000";
            elsif (ac_lrclk_sig = '1' and ac_lrclk_sig_prev = '0') then
                if (ac_lrclk_count < "0111") then
                    ac_lrclk_count <= std_logic_vector(unsigned(ac_lrclk_count) + 1);
                else
                    ac_lrclk_count <= "0000";
                    ready_sig <= '1';
                end if;
                ac_lrclk_sig_prev <= ac_lrclk_sig;
            else
                ready_sig <= '0';
                ac_lrclk_sig_prev <= ac_lrclk_sig;
            end if;
        end if;
    end process;

    reset <= not reset_n;                -- active high reset

    initialize_audio : audio_init
        Port Map(
            clk => clk_50,
            rst => reset,
            sda => sda,
            scl => scl
        ); 
    
    audiocodec_master_clock: audio_clk_wiz
        Port Map (
            clk_in1 => clk,
            clk_out1 => ac_mclk,        -- 12.288MHz ADAU1761 SigmaDSP audio codec master clock
            clk_out2 => clk_50,         -- 50MHz Audio Codec Serial Communications clock
            resetn => reset_n);          -- active low reset for Nexys Video

	audio_inout: i2s_ctl
        Generic map(16)
        Port Map (
            CLK_I => clk,               --100MHz Sys clk
            RST_I => reset,             --Sys rst
            EN_TX_I => '1',             --Transmit Enable (push sound data into chip)
            EN_RX_I => '1',             --Receive enable (pull sound data out of chip)2
            FS_I => "0101",             --Sampling rate selector
            MM_I => '0',                --Audio Controller Master mode select
            D_L_I => L_bus_in,          --Left channel data input to DAC
            D_R_I => R_bus_in,          --Right channel data input to DAC
            D_L_O => L_bus_out,      -- Left channel data output from ADC
            D_R_O => R_bus_out,      -- Right channel data output from ADC
            BCLK_O => ac_bclk,          -- serial CLK (40 ns period = 25MHz)
            LRCLK_O => ac_lrclk_sig,    -- channel CLK (2560 ns period = 390.625KHz)
            SDATA_O => ac_dac_sdata,    -- Output serial data
            SDATA_I => ac_adc_sdata     -- Input serial data
        );
    ac_lrclk <= ac_lrclk_sig;
    ready <= ready_sig;
    
end Behavioral;
