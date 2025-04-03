transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+red_pitaya_ps_1  -L xilinx_vip -L xpm -L xil_defaultlib -L axi_lite_ipif_v3_0_4 -L lib_pkg_v1_0_2 -L fifo_generator_v13_2_1 -L lib_fifo_v1_0_10 -L axi_fifo_mm_s_v4_1_12 -L axi_infrastructure_v1_1_0 -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_12 -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_15 -L axi_data_fifo_v2_1_14 -L axi_crossbar_v2_1_16 -L util_ds_buf_v2_01_a -L xlconstant_v1_1_3 -L axis_infrastructure_v1_1_0 -L axis_data_fifo_v1_1_16 -L axis_clock_converter_v1_1_16 -L util_vector_logic_v2_0_1 -L axi_protocol_converter_v2_1_15 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.red_pitaya_ps_1 xil_defaultlib.glbl

do {red_pitaya_ps_1.udo}

run 1000ns

endsim

quit -force
