
B
Command: %s
53*	vivadotcl2
phys_opt_designZ4-113h px� 

@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2	
xc7z010Z17-347h px� 
o
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2	
xc7z010Z17-349h px� 
R

Starting %s Task
103*constraints2
Initial Update TimingZ18-103h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:04 ; elapsed = 00:00:02 . Memory (MB): peak = 3186.766 ; gain = 0.000 ; free physical = 8436 ; free virtual = 17550h px� 
�
^PhysOpt_Tcl_Interface Runtime Before Starting Physical Synthesis Task | CPU: %ss |  WALL: %ss
566*	vivadotcl2
4.112
1.77Z4-1435h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

3186.7662
0.0002
84362
17550Z17-722h px� 
O

Starting %s Task
103*constraints2
Physical SynthesisZ18-103h px� 
^

Phase %s%s
101*constraints2
1 2#
!Physical Synthesis InitializationZ18-101h px� 
n
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
8Z32-721h px� 
q
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-0.0762
-0.551Z32-619h px� 
[
%s*common2B
@Phase 1 Physical Synthesis Initialization | Checksum: 1b84b59ed
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 3186.766 ; gain = 0.000 ; free physical = 8435 ; free virtual = 17549h px� 
q
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-0.0762
-0.551Z32-619h px� 
V

Phase %s%s
101*constraints2
2 2
DSP Register OptimizationZ18-101h px� 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
S
%s*common2:
8Phase 2 DSP Register Optimization | Checksum: 1b84b59ed
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 3186.766 ; gain = 0.000 ; free physical = 8435 ; free virtual = 17549h px� 
W

Phase %s%s
101*constraints2
3 2
Critical Path OptimizationZ18-101h px� 
q
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-0.0762
-0.551Z32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.active_cnt[56]�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.active_cnt[56]2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.gen_thread_loop[7].active_cnt_reg[56]	�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.gen_thread_loop[7].active_cnt_reg[56]8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.active_cnt[56]�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.active_cnt[56]8Z32-735h px� 
q
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-0.0762
-0.541Z32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.active_cnt[57]�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.active_cnt[57]2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.gen_thread_loop[7].active_cnt_reg[57]	�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.gen_thread_loop[7].active_cnt_reg[57]8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.active_cnt[57]�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.active_cnt[57]8Z32-735h px� 
q
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-0.0762
-0.531Z32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.active_cnt[58]�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.active_cnt[58]2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.gen_thread_loop[7].active_cnt_reg[58]	�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.gen_thread_loop[7].active_cnt_reg[58]8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.active_cnt[58]�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.active_cnt[58]8Z32-735h px� 
q
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-0.0762
-0.521Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.active_cnt[59]�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.active_cnt[59]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2|
;red_pitaya_ps_1_i/red_pitaya_ps/inst/FCLK_CLK_unbuffered[0];red_pitaya_ps_1_i/red_pitaya_ps/inst/FCLK_CLK_unbuffered[0]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.mux_resp_multi_thread/gen_multi_thread.gen_thread_loop[7].active_cnt_reg[59][0]�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.mux_resp_multi_thread/gen_multi_thread.gen_thread_loop[7].active_cnt_reg[59][0]2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.mux_resp_multi_thread/gen_multi_thread.gen_thread_loop[7].active_cnt[59]_i_1_comp	�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.mux_resp_multi_thread/gen_multi_thread.gen_thread_loop[7].active_cnt[59]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.cmd_push_7�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.cmd_push_78Z32-735h px� 
q
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-0.0652
-0.260Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.active_cnt[48]�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.active_cnt[48]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.arbiter_resp_inst/gen_fpga.genblk2_0.gen_mux_9_12[47].muxf_s3_inst_0[0]�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.arbiter_resp_inst/gen_fpga.genblk2_0.gen_mux_9_12[47].muxf_s3_inst_0[0]2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.arbiter_resp_inst/gen_multi_thread.gen_thread_loop[6].active_cnt[51]_i_1_comp	�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.arbiter_resp_inst/gen_multi_thread.gen_thread_loop[6].active_cnt[51]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.cmd_push_6�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_multi_thread.cmd_push_68Z32-735h px� 
o
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
0.0002
0.000Z32-619h px� 
o
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
0.0002
0.000Z32-619h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.012
00:00:00.012

3186.7662
0.0002
84302
17546Z17-722h px� 
T
%s*common2;
9Phase 3 Critical Path Optimization | Checksum: 1b84b59ed
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 3186.766 ; gain = 0.000 ; free physical = 8430 ; free virtual = 17545h px� 
W

Phase %s%s
101*constraints2
4 2
Critical Path OptimizationZ18-101h px� 
o
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
0.0002
0.000Z32-619h px� 
o
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
0.0002
0.000Z32-619h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

3186.7662
0.0002
84292
17545Z17-722h px� 
T
%s*common2;
9Phase 4 Critical Path Optimization | Checksum: 1b84b59ed
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 3186.766 ; gain = 0.000 ; free physical = 8429 ; free virtual = 17545h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

3186.7662
0.0002
84292
17545Z17-722h px� 
t
>Post Physical Optimization Timing Summary | WNS=%s | TNS=%s |
318*physynth2
0.0002
0.000Z32-603h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization   |  WNS Gain (ns)  |  TNS Gain (ns)  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  DSP Register   |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Critical Path  |          0.076  |          0.551  |            0  |              0  |                     5  |           0  |           2  |  00:00:01  |
|  Total          |          0.076  |          0.551  |            0  |              0  |                     5  |           0  |           3  |  00:00:01  |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

3186.7662
0.0002
84292
17545Z17-722h px� 
P
%s*common27
5Ending Physical Synthesis Task | Checksum: 1d3917dab
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 3186.766 ; gain = 0.000 ; free physical = 8430 ; free virtual = 17545h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1272
1182
162
0Z4-41h px� 
O
%s completed successfully
29*	vivadotcl2
phys_opt_designZ4-42h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.172
00:00:00.042

3186.7662
0.0002
84302
17545Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PlaceDB: 2

00:00:022
00:00:00.532

3186.7662
0.0002
84262
17542Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

3186.7662
0.0002
84262
17542Z17-722h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote RouteStorage: 2
00:00:00.072
00:00:00.042

3186.7662
0.0002
84262
17542Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Netlist Cache: 2
00:00:00.022
00:00:00.012

3186.7662
0.0002
84262
17542Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Device Cache: 2
00:00:00.012

00:00:002

3186.7662
0.0002
84262
17542Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write Physdb Complete: 2

00:00:022
00:00:00.592

3186.7662
0.0002
84262
17542Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2^
\/data/devel/redpitaya/vivado/adc_dac/adc_dac.runs/impl_1/red_pitaya_ps_1_wrapper_physopt.dcpZ17-1381h px� 


End Record