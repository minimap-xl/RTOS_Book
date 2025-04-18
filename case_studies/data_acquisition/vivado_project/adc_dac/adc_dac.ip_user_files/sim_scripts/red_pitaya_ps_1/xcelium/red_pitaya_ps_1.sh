#!/bin/bash -f
#**********************************************************************************************************
# Vivado (TM) v2023.2 (64-bit)
#
# Script generated by Vivado on Mon Mar 31 15:21:40 +0000 2025
# SW Build 4029153 on Fri Oct 13 20:13:54 MDT 2023
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved. 
#
# Filename     : red_pitaya_ps_1.sh
# Simulator    : Cadence Xcelium Parallel Simulator
# Description  : Simulation script generated by export_simulation Tcl command
# Purpose      : Run 'compile', 'elaborate', 'simulate' steps for compiling, elaborating and simulating the
#                design. The script will copy the library mapping file from the compiled library directory,
#                create design library directories and library mappings in the mapping file.
#
# Usage        : red_pitaya_ps_1.sh
#                red_pitaya_ps_1.sh [-lib_map_path] [-step] [-keep_index] [-noclean_files]*
#                red_pitaya_ps_1.sh [-reset_run]
#                red_pitaya_ps_1.sh [-reset_log]
#                red_pitaya_ps_1.sh [-help]
#
#               * The -noclean_files switch is deprecated and will not peform any function (by default, the
#                 simulator generated files will not be removed unless -reset_run switch is used)
#
# Prerequisite : Before running export_simulation, you must first compile the AMD simulation library
#                using the 'compile_simlib' Tcl command (for more information, run 'compile_simlib -help'
#                command in the Vivado Tcl shell). After compiling the library, specify the -lib_map_path
#                switch with the directory path where the library is created while generating the script
#                with export_simulation.
#
#                Alternatively, you can set the library path by setting the following project property:-
#
#                 set_property compxlib.<simulator>_compiled_library_dir <path> [current_project]
#
#                You can also point to the simulation library by either setting the 'lib_map_path' global
#                variable in this script or specify it with the '-lib_map_path' switch while executing this
#                script (type 'red_pitaya_ps_1.sh -help' for more information).
#
#                Note: For pure RTL based designs, the -lib_map_path switch can be specified later with the
#                generated script, but if design is targetted for system simulation containing SystemC/C++/C
#                sources, then the library path MUST be specified upfront when calling export_simulation.
#
#                For more information, refer 'Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#**********************************************************************************************************

# catch pipeline exit status
set -Eeuo pipefail

# set xmvhdl compile options
xmvhdl_opts="-64bit -messages -relax -logfile .tmp_log -update"

# set xmvlog compile options
xmvlog_opts="-64bit -messages -logfile .tmp_log -update"

# set xmelab elaboration options
xmelab_opts="-64bit -relax -access +rwc -namemap_mixgen -messages -logfile elaborate.log"

# set xmsim simulation options
xmsim_opts="-64bit -logfile simulate.log"

# set design libraries for elaboration
design_libs_elab="-libname xilinx_vip -libname xpm -libname xil_defaultlib -libname axi_lite_ipif_v3_0_4 -libname lib_pkg_v1_0_2 -libname fifo_generator_v13_2_1 -libname lib_fifo_v1_0_10 -libname axi_fifo_mm_s_v4_1_12 -libname axi_infrastructure_v1_1_0 -libname smartconnect_v1_0 -libname axi_protocol_checker_v2_0_1 -libname axi_vip_v1_1_1 -libname processing_system7_vip_v1_0_3 -libname lib_cdc_v1_0_2 -libname proc_sys_reset_v5_0_12 -libname generic_baseblocks_v2_1_0 -libname axi_register_slice_v2_1_15 -libname axi_data_fifo_v2_1_14 -libname axi_crossbar_v2_1_16 -libname util_ds_buf_v2_01_a -libname xlconstant_v1_1_3 -libname axis_infrastructure_v1_1_0 -libname axis_data_fifo_v1_1_16 -libname axis_clock_converter_v1_1_16 -libname util_vector_logic_v2_0_1 -libname axi_protocol_converter_v2_1_15 -libname xilinx_vip -libname unisims_ver -libname unimacro_ver -libname secureip"

# set design libraries
design_libs=(simprims_ver xilinx_vip xpm xil_defaultlib axi_lite_ipif_v3_0_4 lib_pkg_v1_0_2 fifo_generator_v13_2_1 lib_fifo_v1_0_10 axi_fifo_mm_s_v4_1_12 axi_infrastructure_v1_1_0 smartconnect_v1_0 axi_protocol_checker_v2_0_1 axi_vip_v1_1_1 processing_system7_vip_v1_0_3 lib_cdc_v1_0_2 proc_sys_reset_v5_0_12 generic_baseblocks_v2_1_0 axi_register_slice_v2_1_15 axi_data_fifo_v2_1_14 axi_crossbar_v2_1_16 util_ds_buf_v2_01_a xlconstant_v1_1_3 axis_infrastructure_v1_1_0 axis_data_fifo_v1_1_16 axis_clock_converter_v1_1_16 util_vector_logic_v2_0_1 axi_protocol_converter_v2_1_15)

# simulation root library directory
sim_lib_dir="xcelium_lib"

# script info
echo -e "red_pitaya_ps_1.sh - Script generated by export_simulation (Vivado v2023.2 (64-bit)-id)\n"

# main steps
run()
{
  check_args $*
  setup
  if [[ ($b_step == 1) ]]; then
    case $step in
      "compile" )
       init_lib
       compile
      ;;
      "elaborate" )
       elaborate
      ;;
      "simulate" )
       simulate
      ;;
      * )
        echo -e "ERROR: Invalid or missing step '$step' (type \"./red_pitaya_ps_1.sh -help\" for more information)\n"
        exit 1
      esac
  else
    init_lib
    compile
    elaborate
    simulate
  fi
}

# RUN_STEP: <compile>
compile()
{
  xmvlog -work xilinx_vip $xmvlog_opts -sv +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
  2>&1 | tee compile.log; cat .tmp_log > xmvlog.log 2>/dev/null

  xmvlog -work xpm $xmvlog_opts -sv +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvhdl -work xpm -V93 $xmvhdl_opts \
  "/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log > xmvhdl.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_decimator_0_0/red_pitaya_ps_1_axis_decimator_0_0_sim_netlist.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvhdl -work xil_defaultlib -V93 $xmvhdl_opts \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_decimator_0_0/red_pitaya_ps_1_axis_decimator_0_0_sim_netlist.vhdl" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../bd/red_pitaya_ps_1/ipshared/67e3/src/axis_decimator.v" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_decimator_0_0/sim/red_pitaya_ps_1_axis_decimator_0_0.v" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_packetizer_0_0/red_pitaya_ps_1_axis_packetizer_0_0_sim_netlist.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvhdl -work xil_defaultlib -V93 $xmvhdl_opts \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_packetizer_0_0/red_pitaya_ps_1_axis_packetizer_0_0_sim_netlist.vhdl" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../bd/red_pitaya_ps_1/ipshared/ffdc/src/axis_packetizer.v" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_packetizer_0_0/sim/red_pitaya_ps_1_axis_packetizer_0_0.v" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_red_pitaya_adc_0_0/red_pitaya_ps_1_axis_red_pitaya_adc_0_0_sim_netlist.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvhdl -work xil_defaultlib -V93 $xmvhdl_opts \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_red_pitaya_adc_0_0/red_pitaya_ps_1_axis_red_pitaya_adc_0_0_sim_netlist.vhdl" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../bd/red_pitaya_ps_1/ipshared/60c4/src/axis_red_pitaya_adc.v" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_red_pitaya_adc_0_0/sim/red_pitaya_ps_1_axis_red_pitaya_adc_0_0.v" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_data_fifo_0/red_pitaya_ps_1_data_fifo_0_sim_netlist.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvhdl -work xil_defaultlib -V93 $xmvhdl_opts \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_data_fifo_0/red_pitaya_ps_1_data_fifo_0_sim_netlist.vhdl" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvhdl -work axi_lite_ipif_v3_0_4 -V93 $xmvhdl_opts \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvhdl -work lib_pkg_v1_0_2 -V93 $xmvhdl_opts \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvlog -work fifo_generator_v13_2_1 $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/5c35/simulation/fifo_generator_vlog_beh.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvhdl -work fifo_generator_v13_2_1 -V93 $xmvhdl_opts \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvlog -work fifo_generator_v13_2_1 $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvhdl -work lib_fifo_v1_0_10 -V93 $xmvhdl_opts \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/f10a/hdl/lib_fifo_v1_0_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvhdl -work axi_fifo_mm_s_v4_1_12 -V93 $xmvhdl_opts \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/68a8/hdl/axi_fifo_mm_s_v4_1_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvhdl -work xil_defaultlib -V93 $xmvhdl_opts \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_data_fifo_0/sim/red_pitaya_ps_1_data_fifo_0.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/red_pitaya_ps_1_red_pitaya_ps_0_sim_netlist.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvhdl -work xil_defaultlib -V93 $xmvhdl_opts \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/red_pitaya_ps_1_red_pitaya_ps_0_sim_netlist.vhdl" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvlog -work axi_infrastructure_v1_1_0 $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work smartconnect_v1_0 $xmvlog_opts -sv +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work axi_protocol_checker_v2_0_1 $xmvlog_opts -sv +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work axi_vip_v1_1_1 $xmvlog_opts -sv +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work processing_system7_vip_v1_0_3 $xmvlog_opts -sv +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/sim/red_pitaya_ps_1_red_pitaya_ps_0.v" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0_sim_netlist.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvhdl -work xil_defaultlib -V93 $xmvhdl_opts \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0_sim_netlist.vhdl" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvhdl -work lib_cdc_v1_0_2 -V93 $xmvhdl_opts \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvhdl -work proc_sys_reset_v5_0_12 -V93 $xmvhdl_opts \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvhdl -work xil_defaultlib -V93 $xmvhdl_opts \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0/sim/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_xbar_0/red_pitaya_ps_1_xbar_0_sim_netlist.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvhdl -work xil_defaultlib -V93 $xmvhdl_opts \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_xbar_0/red_pitaya_ps_1_xbar_0_sim_netlist.vhdl" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvlog -work generic_baseblocks_v2_1_0 $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work axi_register_slice_v2_1_15 $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/3ed1/hdl/axi_register_slice_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work axi_data_fifo_v2_1_14 $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work axi_crossbar_v2_1_16 $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/c631/hdl/axi_crossbar_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_xbar_0/sim/red_pitaya_ps_1_xbar_0.v" \
  "../../../bd/red_pitaya_ps_1/sim/red_pitaya_ps_1.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvhdl -work util_ds_buf_v2_01_a -V93 $xmvhdl_opts \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/e2ff/hdl/vhdl/util_ds_buf.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvhdl -work xil_defaultlib -V93 $xmvhdl_opts \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/sim/red_pitaya_ps_1_util_ds_buf_0_0.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvlog -work xlconstant_v1_1_3 $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_xlconstant_0_0/sim/red_pitaya_ps_1_xlconstant_0_0.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work axis_infrastructure_v1_1_0 $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work axis_data_fifo_v1_1_16 $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/e3dd/hdl/axis_data_fifo_v1_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work axis_clock_converter_v1_1_16 $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/3450/hdl/axis_clock_converter_v1_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_clock_converter_0_0/sim/red_pitaya_ps_1_axis_clock_converter_0_0.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work util_vector_logic_v2_0_1 $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_vector_logic_0_0/sim/red_pitaya_ps_1_util_vector_logic_0_0.v" \
  "../../../bd/red_pitaya_ps_1/ipshared/5278/src/axi_cfg_register.v" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axi_cfg_register_0_0/sim/red_pitaya_ps_1_axi_cfg_register_0_0.v" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_xlconstant_0_1/sim/red_pitaya_ps_1_xlconstant_0_1.v" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axi_cfg_register_0_1/sim/red_pitaya_ps_1_axi_cfg_register_0_1.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvhdl -work xil_defaultlib -V93 $xmvhdl_opts \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axi_fifo_mm_s_0_1/sim/red_pitaya_ps_1_axi_fifo_mm_s_0_1.vhd" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_dac_out_0_0/sim/red_pitaya_ps_1_dac_out_0_0.vhd" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvhdl.log 2>/dev/null

  xmvlog -work axi_protocol_converter_v2_1_15 $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ff69/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/02c8/hdl/verilog" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/1313/hdl" +incdir+"../../../../prova.srcs/sources_1/bd/red_pitaya_ps_1/ipshared/0ab1/hdl" +incdir+"/data/Xilinx/Vivado/Vivado/2023.2/data/xilinx_vip/include" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_auto_pc_3/sim/red_pitaya_ps_1_auto_pc_3.v" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_auto_pc_2/sim/red_pitaya_ps_1_auto_pc_2.v" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_auto_pc_1/sim/red_pitaya_ps_1_auto_pc_1.v" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_auto_pc_0/sim/red_pitaya_ps_1_auto_pc_0.v" \
  "../../../bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_auto_pc_4/sim/red_pitaya_ps_1_auto_pc_4.v" \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null

  xmvlog -work xil_defaultlib $xmvlog_opts \
  glbl.v \
  2>&1 | tee -a compile.log; cat .tmp_log >> xmvlog.log 2>/dev/null
}

# RUN_STEP: <elaborate>
elaborate()
{
  xmelab $xmelab_opts $design_libs_elab xil_defaultlib.red_pitaya_ps_1 xil_defaultlib.glbl
}

# RUN_STEP: <simulate>
simulate()
{
  xmsim $xmsim_opts xil_defaultlib.red_pitaya_ps_1 -input simulate.do
}

# STEP: setup
setup()
{
  # delete previous files for a clean rerun
  if [[ ($b_reset_run == 1) ]]; then
    reset_run
    echo -e "INFO: Simulation run files deleted.\n"
    exit 0
  fi

 # delete previous log files
  if [[ ($b_reset_log == 1) ]]; then
    reset_log
    echo -e "INFO: Simulation run log files deleted.\n"
    exit 0
  fi

  # add any setup/initialization commands here:-

  # <user specific commands>

}

# simulator index file/library directory processing
init_lib()
{
  if [[ ($b_keep_index == 1) ]]; then
    # keep previous design library mappings
    true
  else
    # define design library mappings
    create_lib_mappings
  fi

  if [[ ($b_keep_index == 1) ]]; then
    # do not recreate design library directories
    true
  else
    # create design library directories
    create_lib_dir
  fi
}

# define design library mappings
create_lib_mappings()
{
  file="hdl.var"
  touch $file

  file="cds.lib"
  if [[ -e $file ]]; then
    if [[ ($lib_map_path == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  if [[ ($lib_map_path != "") && !(-e $lib_map_path) ]]; then
    echo -e "ERROR: Compiled simulation library directory path not specified or does not exist (type "./top.sh -help" for more information)\n"
  fi

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="INCLUDE $lib_map_path/cds.lib"
    echo $incl_ref >> $file
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="DEFINE $lib $sim_lib_dir/$lib"
    echo $mapping >> $file
  done
}

# create design library directory
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi
  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# delete generated data from the previous run
reset_run()
{
  files_to_remove=(xmvlog.log xmvhdl.log xmsc.log compile.log elaborate.log simulate.log diag_report.log xsc_report.log red_pitaya_ps_1_sc.so .tmp_log xcelium_lib waves.shm c.obj)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done
}

# delete generated log files from the previous run
reset_log()
{
  files_to_remove=(xmvlog.log xmvhdl.log xmsc.log compile.log elaborate.log simulate.log diag_report.log xsc_report.log .tmp_log)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done
}

# check switch argument value
check_arg_value()
{
  if [[ ($1 == "-step") && (($2 != "compile") && ($2 != "elaborate") && ($2 != "simulate")) ]];then
    echo -e "ERROR: Invalid or missing step '$2' (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($1 == "-lib_map_path") && ($2 == "") ]];then
    echo -e "ERROR: Simulation library directory path not specified (type \"./red_pitaya_ps_1.sh -help\" for more information)\n"
    exit 1
  fi
}

# check command line arguments
check_args()
{
  arg_count=$#
  if [[ ("$#" == 1) && (("$1" == "-help") || ("$1" == "-h")) ]]; then
    usage
  fi
  while [[ "$#" -gt 0 ]]; do
    case $1 in
      -step)          check_arg_value $1 $2;step=$2;         b_step=1;         shift;;
      -lib_map_path)  check_arg_value $1 $2;lib_map_path=$2; b_lib_map_path=1; shift;;
      -gen_bypass)    b_gen_bypass=1    ;;
      -reset_run)     b_reset_run=1     ;;
      -reset_log)     b_reset_log=1     ;;
      -keep_index)    b_keep_index=1    ;;
      -noclean_files) b_noclean_files=1 ;;
      -help|-h)       ;;
      *) echo -e "ERROR: Invalid option specified '$1' (type "./top.sh -help" for more information)\n"; exit 1 ;;
    esac
     shift
  done

  # -reset_run is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_reset_run == 1) ]]; then
    echo -e "ERROR: -reset_run switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  # -reset_log is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_reset_log == 1) ]]; then
    echo -e "ERROR: -reset_log switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  # -keep_index is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_keep_index == 1) ]]; then
    echo -e "ERROR: -keep_index switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi

  # -noclean_files is not applicable with other switches
  if [[ ("$arg_count" -gt 1) && ($b_noclean_files == 1) ]]; then
    echo -e "ERROR: -noclean_files switch is not applicable with other switches (type \"./top.sh -help\" for more information)\n"
    exit 1
  fi
}

# script usage
usage()
{
  msg="Usage: red_pitaya_ps_1.sh [-help]\n\
Usage: red_pitaya_ps_1.sh [-step]\n\
Usage: red_pitaya_ps_1.sh [-lib_map_path]\n\
Usage: red_pitaya_ps_1.sh [-reset_run]\n\
Usage: red_pitaya_ps_1.sh [-reset_log]\n\
Usage: red_pitaya_ps_1.sh [-keep_index]\n\
Usage: red_pitaya_ps_1.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-step <name>] -- Execute specified step (simulate)\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Delete simulator generated data files from the previous run and recreate simulator setup\n\
file/library mappings for a clean run. This switch will not execute steps defined in the script.\n\n\
NOTE: To keep simulator index file settings from the previous run, use the -keep_index switch\n\
NOTE: To regenerate simulator index file but keep the simulator generated files, use the -noclean_files switch\n\n\
[-reset_log] -- Delete simulator generated log files from the previous run\n\n\
[-keep_index] -- Keep simulator index file settings from the previous run\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run\n"
  echo -e $msg
  exit 0
}

# initialize globals
step=""
lib_map_path=""
b_step=0
b_lib_map_path=0
b_gen_bypass=0
b_reset_run=0
b_reset_log=0
b_keep_index=0
b_noclean_files=0

# launch script
run $*
