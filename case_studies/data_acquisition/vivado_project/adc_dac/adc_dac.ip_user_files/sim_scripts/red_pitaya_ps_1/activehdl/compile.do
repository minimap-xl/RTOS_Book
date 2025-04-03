transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_1
vlib activehdl/lib_fifo_v1_0_10
vlib activehdl/axi_fifo_mm_s_v4_1_12
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_protocol_checker_v2_0_1
vlib activehdl/axi_vip_v1_1_1
vlib activehdl/processing_system7_vip_v1_0_3
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_12
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_15
vlib activehdl/axi_data_fifo_v2_1_14
vlib activehdl/axi_crossbar_v2_1_16
vlib activehdl/util_ds_buf_v2_01_a
vlib activehdl/xlconstant_v1_1_3
vlib activehdl/axis_infrastructure_v1_1_0
vlib activehdl/axis_data_fifo_v1_1_16
vlib activehdl/axis_clock_converter_v1_1_16
vlib activehdl/util_vector_logic_v2_0_1
vlib activehdl/axi_protocol_converter_v2_1_15

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_1 activehdl/fifo_generator_v13_2_1
vmap lib_fifo_v1_0_10 activehdl/lib_fifo_v1_0_10
vmap axi_fifo_mm_s_v4_1_12 activehdl/axi_fifo_mm_s_v4_1_12
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_1 activehdl/axi_protocol_checker_v2_0_1
vmap axi_vip_v1_1_1 activehdl/axi_vip_v1_1_1
vmap processing_system7_vip_v1_0_3 activehdl/processing_system7_vip_v1_0_3
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 activehdl/proc_sys_reset_v5_0_12
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_15 activehdl/axi_register_slice_v2_1_15
vmap axi_data_fifo_v2_1_14 activehdl/axi_data_fifo_v2_1_14
vmap axi_crossbar_v2_1_16 activehdl/axi_crossbar_v2_1_16
vmap util_ds_buf_v2_01_a activehdl/util_ds_buf_v2_01_a
vmap xlconstant_v1_1_3 activehdl/xlconstant_v1_1_3
vmap axis_infrastructure_v1_1_0 activehdl/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v1_1_16 activehdl/axis_data_fifo_v1_1_16
vmap axis_clock_converter_v1_1_16 activehdl/axis_clock_converter_v1_1_16
vmap util_vector_logic_v2_0_1 activehdl/util_vector_logic_v2_0_1
vmap axi_protocol_converter_v2_1_15 activehdl/axi_protocol_converter_v2_1_15

vlog -work xilinx_vip  -sv2k12 "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -  \
"/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_decimator_0_0/red_pitaya_ps_1_axis_decimator_0_0_sim_netlist.v" \

vcom -work xil_defaultlib -  \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_decimator_0_0/red_pitaya_ps_1_axis_decimator_0_0_sim_netlist.vhdl" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../bd/red_pitaya_ps_1/ipshared/67e3/src/axis_decimator.v" \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_decimator_0_0/sim/red_pitaya_ps_1_axis_decimator_0_0.v" \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_packetizer_0_0/red_pitaya_ps_1_axis_packetizer_0_0_sim_netlist.v" \

vcom -work xil_defaultlib -  \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_packetizer_0_0/red_pitaya_ps_1_axis_packetizer_0_0_sim_netlist.vhdl" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../bd/red_pitaya_ps_1/ipshared/ffdc/src/axis_packetizer.v" \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_packetizer_0_0/sim/red_pitaya_ps_1_axis_packetizer_0_0.v" \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_red_pitaya_adc_0_0/red_pitaya_ps_1_axis_red_pitaya_adc_0_0_sim_netlist.v" \

vcom -work xil_defaultlib -  \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_red_pitaya_adc_0_0/red_pitaya_ps_1_axis_red_pitaya_adc_0_0_sim_netlist.vhdl" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../bd/red_pitaya_ps_1/ipshared/60c4/src/axis_red_pitaya_adc.v" \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_red_pitaya_adc_0_0/sim/red_pitaya_ps_1_axis_red_pitaya_adc_0_0.v" \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_data_fifo_0/red_pitaya_ps_1_data_fifo_0_sim_netlist.v" \

vcom -work xil_defaultlib -  \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_data_fifo_0/red_pitaya_ps_1_data_fifo_0_sim_netlist.vhdl" \

vcom -work axi_lite_ipif_v3_0_4 -  \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -  \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_1  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/5c35/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_1 -  \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_1  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_10 -  \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/f10a/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_fifo_mm_s_v4_1_12 -  \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/68a8/hdl/axi_fifo_mm_s_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_data_fifo_0/sim/red_pitaya_ps_1_data_fifo_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/red_pitaya_ps_1_red_pitaya_ps_0_sim_netlist.v" \

vcom -work xil_defaultlib -  \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/red_pitaya_ps_1_red_pitaya_ps_0_sim_netlist.vhdl" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_1  -sv2k12 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_1  -sv2k12 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_3  -sv2k12 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/sim/red_pitaya_ps_1_red_pitaya_ps_0.v" \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0_sim_netlist.v" \

vcom -work xil_defaultlib -  \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0_sim_netlist.vhdl" \

vcom -work lib_cdc_v1_0_2 -  \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -  \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0/sim/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_xbar_0/red_pitaya_ps_1_xbar_0_sim_netlist.v" \

vcom -work xil_defaultlib -  \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_xbar_0/red_pitaya_ps_1_xbar_0_sim_netlist.vhdl" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_15  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/3ed1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_14  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_16  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/c631/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_xbar_0/sim/red_pitaya_ps_1_xbar_0.v" \
"../../../bd/red_pitaya_ps_1/sim/red_pitaya_ps_1.v" \

vcom -work util_ds_buf_v2_01_a -  \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/e2ff/hdl/vhdl/util_ds_buf.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/sim/red_pitaya_ps_1_util_ds_buf_0_0.vhd" \

vlog -work xlconstant_v1_1_3  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_xlconstant_0_0/sim/red_pitaya_ps_1_xlconstant_0_0.v" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v1_1_16  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/e3dd/hdl/axis_data_fifo_v1_1_vl_rfs.v" \

vlog -work axis_clock_converter_v1_1_16  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/3450/hdl/axis_clock_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_clock_converter_0_0/sim/red_pitaya_ps_1_axis_clock_converter_0_0.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_vector_logic_0_0/sim/red_pitaya_ps_1_util_vector_logic_0_0.v" \
"../../../bd/red_pitaya_ps_1/ipshared/5278/src/axi_cfg_register.v" \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axi_cfg_register_0_0/sim/red_pitaya_ps_1_axi_cfg_register_0_0.v" \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_xlconstant_0_1/sim/red_pitaya_ps_1_xlconstant_0_1.v" \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axi_cfg_register_0_1/sim/red_pitaya_ps_1_axi_cfg_register_0_1.v" \

vcom -work xil_defaultlib -  \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axi_fifo_mm_s_0_1/sim/red_pitaya_ps_1_axi_fifo_mm_s_0_1.vhd" \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_dac_out_0_0/sim/red_pitaya_ps_1_dac_out_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_15  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ff69/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" "+incdir+../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" "+incdir+/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_2 -l fifo_generator_v13_2_1 -l lib_fifo_v1_0_10 -l axi_fifo_mm_s_v4_1_12 -l axi_infrastructure_v1_1_0 -l smartconnect_v1_0 -l axi_protocol_checker_v2_0_1 -l axi_vip_v1_1_1 -l processing_system7_vip_v1_0_3 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_12 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_15 -l axi_data_fifo_v2_1_14 -l axi_crossbar_v2_1_16 -l util_ds_buf_v2_01_a -l xlconstant_v1_1_3 -l axis_infrastructure_v1_1_0 -l axis_data_fifo_v1_1_16 -l axis_clock_converter_v1_1_16 -l util_vector_logic_v2_0_1 -l axi_protocol_converter_v2_1_15 \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_auto_pc_3/sim/red_pitaya_ps_1_auto_pc_3.v" \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_auto_pc_2/sim/red_pitaya_ps_1_auto_pc_2.v" \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_auto_pc_1/sim/red_pitaya_ps_1_auto_pc_1.v" \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_auto_pc_0/sim/red_pitaya_ps_1_auto_pc_0.v" \
"../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_auto_pc_4/sim/red_pitaya_ps_1_auto_pc_4.v" \

vlog -work xil_defaultlib \
"glbl.v"

