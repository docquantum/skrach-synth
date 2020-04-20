vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/microblaze_v11_0_1
vlib questa_lib/msim/lmb_v10_v3_0_9
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_16
vlib questa_lib/msim/blk_mem_gen_v8_4_3
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_19
vlib questa_lib/msim/fifo_generator_v13_2_4
vlib questa_lib/msim/axi_data_fifo_v2_1_18
vlib questa_lib/msim/axi_crossbar_v2_1_20
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/axi_intc_v4_1_13
vlib questa_lib/msim/xlconcat_v2_1_3
vlib questa_lib/msim/mdm_v3_2_16
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_uartlite_v2_0_23
vlib questa_lib/msim/axi_protocol_converter_v2_1_19
vlib questa_lib/msim/axi_clock_converter_v2_1_18

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap microblaze_v11_0_1 questa_lib/msim/microblaze_v11_0_1
vmap lmb_v10_v3_0_9 questa_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_16 questa_lib/msim/lmb_bram_if_cntlr_v4_0_16
vmap blk_mem_gen_v8_4_3 questa_lib/msim/blk_mem_gen_v8_4_3
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_19 questa_lib/msim/axi_register_slice_v2_1_19
vmap fifo_generator_v13_2_4 questa_lib/msim/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 questa_lib/msim/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 questa_lib/msim/axi_crossbar_v2_1_20
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_13 questa_lib/msim/axi_intc_v4_1_13
vmap xlconcat_v2_1_3 questa_lib/msim/xlconcat_v2_1_3
vmap mdm_v3_2_16 questa_lib/msim/mdm_v3_2_16
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_23 questa_lib/msim/axi_uartlite_v2_0_23
vmap axi_protocol_converter_v2_1_19 questa_lib/msim/axi_protocol_converter_v2_1_19
vmap axi_clock_converter_v2_1_18 questa_lib/msim/axi_clock_converter_v2_1_18

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ec67/hdl" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c923" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1" \
"/opt/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_1 -64 -93 \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/f8c3/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/skrach_design/ip/skrach_design_microblaze_0_2/sim/skrach_design_microblaze_0_2.vhd" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/skrach_design/ip/skrach_design_dlmb_v10_2/sim/skrach_design_dlmb_v10_2.vhd" \
"../../../bd/skrach_design/ip/skrach_design_ilmb_v10_2/sim/skrach_design_ilmb_v10_2.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_16 -64 -93 \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/6335/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/skrach_design/ip/skrach_design_dlmb_bram_if_cntlr_2/sim/skrach_design_dlmb_bram_if_cntlr_2.vhd" \
"../../../bd/skrach_design/ip/skrach_design_ilmb_bram_if_cntlr_2/sim/skrach_design_ilmb_bram_if_cntlr_2.vhd" \

vlog -work blk_mem_gen_v8_4_3 -64 "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ec67/hdl" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c923" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1" \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ec67/hdl" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c923" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1" \
"../../../bd/skrach_design/ip/skrach_design_lmb_bram_2/sim/skrach_design_lmb_bram_2.v" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ec67/hdl" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c923" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1" \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ec67/hdl" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c923" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1" \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19 -64 "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ec67/hdl" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c923" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1" \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4 -64 "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ec67/hdl" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c923" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1" \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -64 -93 \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4 -64 "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ec67/hdl" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c923" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1" \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18 -64 "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ec67/hdl" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c923" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1" \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20 -64 "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ec67/hdl" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c923" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1" \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ec67/hdl" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c923" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1" \
"../../../bd/skrach_design/ip/skrach_design_xbar_2/sim/skrach_design_xbar_2.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_13 -64 -93 \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c0fe/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/skrach_design/ip/skrach_design_microblaze_0_axi_intc_2/sim/skrach_design_microblaze_0_axi_intc_2.vhd" \

vlog -work xlconcat_v2_1_3 -64 "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ec67/hdl" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c923" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1" \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ec67/hdl" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c923" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1" \
"../../../bd/skrach_design/ip/skrach_design_microblaze_0_xlconcat_2/sim/skrach_design_microblaze_0_xlconcat_2.v" \

vcom -work mdm_v3_2_16 -64 -93 \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/550e/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/skrach_design/ip/skrach_design_mdm_1_2/sim/skrach_design_mdm_1_2.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ec67/hdl" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c923" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1" \
"../../../bd/skrach_design/ip/skrach_design_clk_wiz_1_2/skrach_design_clk_wiz_1_2_clk_wiz.v" \
"../../../bd/skrach_design/ip/skrach_design_clk_wiz_1_2/skrach_design_clk_wiz_1_2.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/skrach_design/ip/skrach_design_rst_clk_wiz_1_100M_2/sim/skrach_design_rst_clk_wiz_1_100M_2.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_23 -64 -93 \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/93fa/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/skrach_design/ip/skrach_design_axi_uartlite_0_2/sim/skrach_design_axi_uartlite_0_2.vhd" \
"../../../bd/skrach_design/ip/skrach_design_axi_uartlite_1_2/sim/skrach_design_axi_uartlite_1_2.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ec67/hdl" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c923" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/skrach_design_mig_7series_0_2_mig_sim.v" \
"../../../bd/skrach_design/ip/skrach_design_mig_7series_0_2/skrach_design_mig_7series_0_2/user_design/rtl/skrach_design_mig_7series_0_2.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/skrach_design/ip/skrach_design_rst_mig_7series_0_100M_2/sim/skrach_design_rst_mig_7series_0_100M_2.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ec67/hdl" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c923" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1" \
"../../../bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1/audio_clk_wiz_clk_wiz.v" \
"../../../bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1/audio_clk_wiz.v" \
"../../../bd/skrach_design/ipshared/31a1/src/audio_init.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/skrach_design/ipshared/31a1/src/Audio_Codec_Wrapper.vhd" \
"../../../bd/skrach_design/ipshared/31a1/src/TWICtl.vhd" \
"../../../bd/skrach_design/ipshared/31a1/src/addr_counter.vhd" \
"../../../bd/skrach_design/ipshared/31a1/src/i2s_ctl.vhd" \
"../../../bd/skrach_design/ipshared/31a1/src/lab4_controlunit.vhd" \
"../../../bd/skrach_design/ipshared/31a1/src/lab4_parts.vhd" \
"../../../bd/skrach_design/ipshared/31a1/src/lab4_datapath.vhd" \
"../../../bd/skrach_design/ipshared/31a1/hdl/lab4_ip_v1_0_S00_AXI.vhd" \
"../../../bd/skrach_design/ipshared/31a1/hdl/lab4_ip_v1_0.vhd" \
"../../../bd/skrach_design/ip/skrach_design_lab4_ip_0_0/sim/skrach_design_lab4_ip_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_19 -64 "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ec67/hdl" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c923" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1" \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ec67/hdl" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c923" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1" \
"../../../bd/skrach_design/ip/skrach_design_auto_pc_4/sim/skrach_design_auto_pc_4.v" \
"../../../bd/skrach_design/ip/skrach_design_auto_pc_0/sim/skrach_design_auto_pc_0.v" \
"../../../bd/skrach_design/ip/skrach_design_auto_pc_1/sim/skrach_design_auto_pc_1.v" \
"../../../bd/skrach_design/ip/skrach_design_auto_pc_2/sim/skrach_design_auto_pc_2.v" \

vlog -work axi_clock_converter_v2_1_18 -64 "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ec67/hdl" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c923" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1" \
"../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ac9d/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/ec67/hdl" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ipshared/c923" "+incdir+../../../../Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_0/src/audio_clk_wiz_1" \
"../../../bd/skrach_design/ip/skrach_design_auto_cc_0/sim/skrach_design_auto_cc_0.v" \
"../../../bd/skrach_design/ip/skrach_design_auto_pc_3/sim/skrach_design_auto_pc_3.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/skrach_design/sim/skrach_design.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

