library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity skrach_core_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S_AXI
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 6
	);
	port (
		-- Users to add ports here
		clk_12 : in std_logic;
		clk_50 : in std_logic;
        ac_mclk : out std_logic; -- Master clock --> 12.288Mhz
        ac_adc_sdata : in std_logic; -- RX data, I2S from codec
        ac_dac_sdata : out std_logic; -- TX data, I2S to codec
        ac_bclk : out std_logic; -- Bit clock for sample data
        ac_lrclk : out std_logic; -- left/right clock for left/right channel data
        scl : inout std_logic; -- I2C clock
        sda : inout std_logic; -- I2C cata
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S_AXI
		s_axi_aclk	: in std_logic;
		s_axi_aresetn	: in std_logic;
		s_axi_awaddr	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		s_axi_awprot	: in std_logic_vector(2 downto 0);
		s_axi_awvalid	: in std_logic;
		s_axi_awready	: out std_logic;
		s_axi_wdata	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		s_axi_wstrb	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		s_axi_wvalid	: in std_logic;
		s_axi_wready	: out std_logic;
		s_axi_bresp	: out std_logic_vector(1 downto 0);
		s_axi_bvalid	: out std_logic;
		s_axi_bready	: in std_logic;
		s_axi_araddr	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		s_axi_arprot	: in std_logic_vector(2 downto 0);
		s_axi_arvalid	: in std_logic;
		s_axi_arready	: out std_logic;
		s_axi_rdata	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		s_axi_rresp	: out std_logic_vector(1 downto 0);
		s_axi_rvalid	: out std_logic;
		s_axi_rready	: in std_logic
	);
end skrach_core_v1_0;

architecture arch_imp of skrach_core_v1_0 is

	-- component declaration
	component skrach_core_v1_0_S_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 6
		);
		port (
        nextSample: in std_logic;
        audioData: out signed(15 downto 0);
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component skrach_core_v1_0_S_AXI;
	
	component audio_codec_wrapper is
        Generic (
            SAMPLE_WIDTH: integer := 24 -- bit width of sample data
        );
        Port (
            clk : in std_logic; -- 100 Mhz System Clock
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
            sda : inout std_logic -- I2C cata
        );
    end component;
    
    signal nextSample: std_logic;
    signal audioDataSig: signed(15 downto 0);
    signal l_bus_out: std_logic_vector(15 downto 0);

begin

-- Instantiation of Axi Bus Interface S_AXI
skrach_core_v1_0_S_AXI_inst : skrach_core_v1_0_S_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S_AXI_ADDR_WIDTH
	)
	port map (
	    nextSample => nextSample,
	    audioData => audioDataSig,
		S_AXI_ACLK	=> s_axi_aclk,
		S_AXI_ARESETN	=> s_axi_aresetn,
		S_AXI_AWADDR	=> s_axi_awaddr,
		S_AXI_AWPROT	=> s_axi_awprot,
		S_AXI_AWVALID	=> s_axi_awvalid,
		S_AXI_AWREADY	=> s_axi_awready,
		S_AXI_WDATA	=> s_axi_wdata,
		S_AXI_WSTRB	=> s_axi_wstrb,
		S_AXI_WVALID	=> s_axi_wvalid,
		S_AXI_WREADY	=> s_axi_wready,
		S_AXI_BRESP	=> s_axi_bresp,
		S_AXI_BVALID	=> s_axi_bvalid,
		S_AXI_BREADY	=> s_axi_bready,
		S_AXI_ARADDR	=> s_axi_araddr,
		S_AXI_ARPROT	=> s_axi_arprot,
		S_AXI_ARVALID	=> s_axi_arvalid,
		S_AXI_ARREADY	=> s_axi_arready,
		S_AXI_RDATA	=> s_axi_rdata,
		S_AXI_RRESP	=> s_axi_rresp,
		S_AXI_RVALID	=> s_axi_rvalid,
		S_AXI_RREADY	=> s_axi_rready
	);

	-- Add user logic here
    audio_codec_wrapper_i: audio_codec_wrapper
    Generic map(16)
    Port map(
        reset_n => s_axi_aresetn,
        clk => s_axi_aclk,
        clk_12 => clk_12,
        clk_50 => clk_50,
        ac_mclk => ac_mclk,
        ac_adc_sdata => ac_adc_sdata,
        ac_dac_sdata => ac_dac_sdata,
        ac_bclk => ac_bclk,
        ac_lrclk => ac_lrclk,
        ready => nextSample,
        L_bus_in => l_bus_out,
        R_bus_in => std_logic_vector(audioDataSig),
        L_bus_out => l_bus_out,
        R_bus_out => OPEN,
        scl => scl,
        sda => sda
    );
    
    
    
	-- User logic ends

end arch_imp;
