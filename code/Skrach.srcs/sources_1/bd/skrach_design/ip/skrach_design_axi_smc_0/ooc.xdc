# aclk {FREQ_HZ 100000000 CLK_DOMAIN /clk_wiz_1_clk_out1 PHASE 0.0} aclk1 {FREQ_HZ 100000000 CLK_DOMAIN skrach_design_mig_7series_0_3_ui_clk PHASE 0}
# Clock Domain: /clk_wiz_1_clk_out1
create_clock -name aclk -period 10.000 [get_ports aclk]
# Clock Domain: skrach_design_mig_7series_0_3_ui_clk
create_clock -name aclk1 -period 10.000 [get_ports aclk1]
# Generated clocks
