
=
Command: %s
53*	vivadotcl2

opt_designZ4-113h px� 
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
\
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_designZ4-22h px� 
@

Starting %s Task
103*constraints2
DRCZ18-103h px� 
>
Running DRC with %s threads
24*drc2
8Z23-27h px� 
C
DRC finished with %s
272*project2

0 ErrorsZ1-461h px� 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.95 ; elapsed = 00:00:00.43 . Memory (MB): peak = 2701.590 ; gain = 0.000 ; free physical = 8966 ; free virtual = 18069h px� 
U

Starting %s Task
103*constraints2
Cache Timing InformationZ18-103h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
V
%s*common2=
;Ending Cache Timing Information Task | Checksum: 210743342
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.83 ; elapsed = 00:00:00.41 . Memory (MB): peak = 2701.590 ; gain = 0.000 ; free physical = 8957 ; free virtual = 18060h px� 
O

Starting %s Task
103*constraints2
Logic OptimizationZ18-103h px� 
K

Phase %s%s
101*constraints2
1 2
InitializationZ18-101h px� 
_

Phase %s%s
101*constraints2
1.1 2"
 Core Generation And Design SetupZ18-101h px� 
\
%s*common2C
APhase 1.1 Core Generation And Design Setup | Checksum: 210743342
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2756.383 ; gain = 0.000 ; free physical = 8678 ; free virtual = 17781h px� 
a

Phase %s%s
101*constraints2
1.2 2$
"Setup Constraints And Sort NetlistZ18-101h px� 
^
%s*common2E
CPhase 1.2 Setup Constraints And Sort Netlist | Checksum: 210743342
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.02 . Memory (MB): peak = 2756.383 ; gain = 0.000 ; free physical = 8678 ; free virtual = 17781h px� 
H
%s*common2/
-Phase 1 Initialization | Checksum: 210743342
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.02 . Memory (MB): peak = 2756.383 ; gain = 0.000 ; free physical = 8677 ; free virtual = 17781h px� 
d

Phase %s%s
101*constraints2
2 2)
'Timer Update And Timing Data CollectionZ18-101h px� 
K

Phase %s%s
101*constraints2
2.1 2
Timer UpdateZ18-101h px� 
H
%s*common2/
-Phase 2.1 Timer Update | Checksum: 210743342
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.66 ; elapsed = 00:00:00.27 . Memory (MB): peak = 2756.383 ; gain = 0.000 ; free physical = 8677 ; free virtual = 17781h px� 
U

Phase %s%s
101*constraints2
2.2 2
Timing Data CollectionZ18-101h px� 
R
%s*common29
7Phase 2.2 Timing Data Collection | Checksum: 210743342
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.68 ; elapsed = 00:00:00.29 . Memory (MB): peak = 2756.383 ; gain = 0.000 ; free physical = 8675 ; free virtual = 17778h px� 
a
%s*common2H
FPhase 2 Timer Update And Timing Data Collection | Checksum: 210743342
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.69 ; elapsed = 00:00:00.29 . Memory (MB): peak = 2756.383 ; gain = 0.000 ; free physical = 8675 ; free virtual = 17778h px� 
E

Phase %s%s
101*constraints2
3 2

RetargetZ18-101h px� 
e
9Pulled %s inverters resulting in an inversion of %s pins
779*opt2
112
45Z31-1566h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
9
Retargeted %s cell(s).
49*opt2
0Z31-49h px� 
B
%s*common2)
'Phase 3 Retarget | Checksum: 1d5eab87f
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.84 ; elapsed = 00:00:00.45 . Memory (MB): peak = 2756.383 ; gain = 0.000 ; free physical = 8675 ; free virtual = 17778h px� 
4
Retarget | Checksum: 1d5eab87f
*commonh px� 
e
.Phase %s created %s cells and removed %s cells267*opt2

Retarget2
742
81Z31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2

Retarget2
1Z31-1021h px� 
Q

Phase %s%s
101*constraints2
4 2
Constant propagationZ18-101h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
N
%s*common25
3Phase 4 Constant propagation | Checksum: 19406ceef
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.9 ; elapsed = 00:00:00.52 . Memory (MB): peak = 2756.383 ; gain = 0.000 ; free physical = 8674 ; free virtual = 17778h px� 
@
+Constant propagation | Checksum: 19406ceef
*commonh px� 
q
.Phase %s created %s cells and removed %s cells267*opt2
Constant propagation2
242
56Z31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Constant propagation2
1Z31-1021h px� 
B

Phase %s%s
101*constraints2
5 2
SweepZ18-101h px� 
?
%s*common2&
$Phase 5 Sweep | Checksum: 180a8d830
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.74 . Memory (MB): peak = 2756.383 ; gain = 0.000 ; free physical = 8674 ; free virtual = 17778h px� 
1
Sweep | Checksum: 180a8d830
*commonh px� 
b
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2
02
164Z31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Sweep2
6Z31-1021h px� 
N

Phase %s%s
101*constraints2
6 2
BUFG optimizationZ18-101h px� 
K
%s*common22
0Phase 6 BUFG optimization | Checksum: 180a8d830
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.86 . Memory (MB): peak = 2756.383 ; gain = 0.000 ; free physical = 8674 ; free virtual = 17778h px� 
=
(BUFG optimization | Checksum: 180a8d830
*commonh px� 
�
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2
BUFG optimization2
02
02
0Z31-662h px� 
X

Phase %s%s
101*constraints2
7 2
Shift Register OptimizationZ18-101h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst2
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst2
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[2].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst2
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/xbar/inst/gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[3].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst2
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][0]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][10]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][11]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][12]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][13]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][14]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][15]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][16]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][17]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][18]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][19]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][1]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][20]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][21]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][22]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][23]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][24]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][25]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][26]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][27]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][28]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][29]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][2]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][30]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][31]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][3]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][4]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][5]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][6]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][7]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][8]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][9]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][0]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][10]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][11]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][12]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][1]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][2]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][3]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][4]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][5]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][6]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][7]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][8]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][9]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][0]_srl42
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][10]_srl42
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][11]_srl42
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][12]_srl42
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][13]_srl42
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][14]_srl42
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][15]_srl42
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][16]_srl42
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][17]_srl42
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][18]_srl42
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][19]_srl42
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][1]_srl42
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][2]_srl42
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][3]_srl42
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][9]_srl42
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m00_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][8]_srl42
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][0]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][10]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][11]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][12]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][13]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][14]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][15]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][16]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][17]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][18]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][19]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][1]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][20]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][21]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][22]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][23]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][24]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][25]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][26]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][27]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][28]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][29]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][2]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][30]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][31]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][33]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][3]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][4]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][5]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][6]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][7]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][8]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][9]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][0]_srl322
none static srl address bitsZ31-1131h px� 
�
+Can not pull register out from %s due to %s588*opt2�
�red_pitaya_ps_1_i/red_pitaya_ps_axi_periph/m01_couplers/auto_pc/inst/gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][10]_srl322
none static srl address bitsZ31-1131h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Opt 31-11312
100Z17-14h px� 
�
dSRL Remap converted %s SRLs to %s registers and converted %s registers of register chains to %s SRLs546*opt2
02
02
02
0Z31-1064h px� 
U
%s*common2<
:Phase 7 Shift Register Optimization | Checksum: 180a8d830
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.88 . Memory (MB): peak = 2756.383 ; gain = 0.000 ; free physical = 8674 ; free virtual = 17778h px� 
G
2Shift Register Optimization | Checksum: 180a8d830
*commonh px� 
v
.Phase %s created %s cells and removed %s cells267*opt2
Shift Register Optimization2
02
0Z31-389h px� 
T

Phase %s%s
101*constraints2
8 2
Post Processing NetlistZ18-101h px� 
Q
%s*common28
6Phase 8 Post Processing Netlist | Checksum: 180a8d830
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.92 . Memory (MB): peak = 2756.383 ; gain = 0.000 ; free physical = 8674 ; free virtual = 17778h px� 
C
.Post Processing Netlist | Checksum: 180a8d830
*commonh px� 
r
.Phase %s created %s cells and removed %s cells267*opt2
Post Processing Netlist2
02
0Z31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Post Processing Netlist2
2Z31-1021h px� 
I

Phase %s%s
101*constraints2
9 2
FinalizationZ18-101h px� 
j

Phase %s%s
101*constraints2
9.1 2-
+Finalizing Design Cores and Updating ShapesZ18-101h px� 
g
%s*common2N
LPhase 9.1 Finalizing Design Cores and Updating Shapes | Checksum: 1926108f1
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2756.383 ; gain = 0.000 ; free physical = 8674 ; free virtual = 17778h px� 
]

Phase %s%s
101*constraints2
9.2 2 
Verifying Netlist ConnectivityZ18-101h px� 
O

Starting %s Task
103*constraints2
Connectivity CheckZ18-103h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2756.383 ; gain = 0.000 ; free physical = 8674 ; free virtual = 17778h px� 
Z
%s*common2A
?Phase 9.2 Verifying Netlist Connectivity | Checksum: 1926108f1
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2756.383 ; gain = 0.000 ; free physical = 8674 ; free virtual = 17778h px� 
F
%s*common2-
+Phase 9 Finalization | Checksum: 1926108f1
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2756.383 ; gain = 0.000 ; free physical = 8674 ; free virtual = 17778h px� 
/
Opt_design Change Summary
*commonh px� 
/
=========================
*commonh px� 


*commonh px� 


*commonh px� 
�
z-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Retarget                     |              74  |              81  |                                              1  |
|  Constant propagation         |              24  |              56  |                                              1  |
|  Sweep                        |               0  |             164  |                                              6  |
|  BUFG optimization            |               0  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               0  |                                              2  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
P
%s*common27
5Ending Logic Optimization Task | Checksum: 1926108f1
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2756.383 ; gain = 0.000 ; free physical = 8674 ; free virtual = 17778h px� 
b
2Building netlist checker database with flags, 0x%s23991*constraints2
8Z18-11670h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2*
(Done building netlist checker database: 2
00:00:00.012

00:00:002

2756.3832
0.0002
86752
17778Z17-722h px� 
O

Starting %s Task
103*constraints2
Power OptimizationZ18-103h px� 
a
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.00Z34-132h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
=
Applying IDT optimizations ...
9*pwroptZ34-9h px� 
?
Applying ODC optimizations ...
10*pwroptZ34-10h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 


*pwropth px� 
S

Starting %s Task
103*constraints2
PowerOpt Patch EnablesZ18-103h px� 
�
�WRITE_MODE attribute of %s BRAM(s) out of a total of %s has been updated to save power.
    Run report_power_opt to get a complete listing of the BRAMs updated.
129*pwropt2
02
34Z34-162h px� 
R
+Structural ODC has moved %s WE to EN ports
155*pwropt2
0Z34-201h px� 
s
CNumber of BRAM Ports augmented: %s newly gated: %s Total Ports: %s
65*pwropt2
22
02
68Z34-65h px� 
T
%s*common2;
9Ending PowerOpt Patch Enables Task | Checksum: 1765abd22
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.12 ; elapsed = 00:00:00.13 . Memory (MB): peak = 3162.754 ; gain = 0.000 ; free physical = 8491 ; free virtual = 17595h px� 
P
%s*common27
5Ending Power Optimization Task | Checksum: 1765abd22
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:05 ; elapsed = 00:00:03 . Memory (MB): peak = 3162.754 ; gain = 406.371 ; free physical = 8491 ; free virtual = 17595h px� 
J

Starting %s Task
103*constraints2
Final CleanupZ18-103h px� 
K
%s*common22
0Ending Final Cleanup Task | Checksum: 1765abd22
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 3162.754 ; gain = 0.000 ; free physical = 8491 ; free virtual = 17595h px� 
P

Starting %s Task
103*constraints2
Netlist ObfuscationZ18-103h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.012

00:00:002

3162.7542
0.0002
84912
17595Z17-722h px� 
Q
%s*common28
6Ending Netlist Obfuscation Task | Checksum: 21a31e654
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 3162.754 ; gain = 0.000 ; free physical = 8491 ; free virtual = 17595h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
412
1182
162
0Z4-41h px� 
J
%s completed successfully
29*	vivadotcl2

opt_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
opt_design: 2

00:00:102

00:00:072

3162.7542	
461.1642
84912
17595Z17-722h px� 
�
%s4*runtcl2�
�Executing : report_drc -file red_pitaya_ps_1_wrapper_drc_opted.rpt -pb red_pitaya_ps_1_wrapper_drc_opted.pb -rpx red_pitaya_ps_1_wrapper_drc_opted.rpx
h px� 
�
Command: %s
53*	vivadotcl2�
�report_drc -file red_pitaya_ps_1_wrapper_drc_opted.rpt -pb red_pitaya_ps_1_wrapper_drc_opted.pb -rpx red_pitaya_ps_1_wrapper_drc_opted.rpxZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
>
Running DRC with %s threads
24*drc2
8Z23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
^/data/devel/redpitaya/vivado/adc_dac/adc_dac.runs/impl_1/red_pitaya_ps_1_wrapper_drc_opted.rpt^/data/devel/redpitaya/vivado/adc_dac/adc_dac.runs/impl_1/red_pitaya_ps_1_wrapper_drc_opted.rpt8Z2-168h px� 
J
%s completed successfully
29*	vivadotcl2

report_drcZ4-42h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PlaceDB: 2
00:00:00.062
00:00:00.022

3186.7662
0.0002
84902
17594Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

3186.7662
0.0002
84882
17592Z17-722h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.112
00:00:00.042

3186.7662
0.0002
84852
17589Z17-722h px� 
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
00:00:00.182
00:00:00.062

3186.7662
0.0002
84802
17584Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Netlist Cache: 2

00:00:002

00:00:002

3186.7662
0.0002
84802
17584Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Device Cache: 2
00:00:00.032
00:00:00.012

3186.7662
0.0002
84792
17583Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write Physdb Complete: 2
00:00:00.282
00:00:00.092

3186.7662
0.0002
84792
17583Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2Z
X/data/devel/redpitaya/vivado/adc_dac/adc_dac.runs/impl_1/red_pitaya_ps_1_wrapper_opt.dcpZ17-1381h px� 


End Record