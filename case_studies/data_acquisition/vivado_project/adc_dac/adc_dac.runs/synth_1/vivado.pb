
>
Refreshing IP repositories
234*coregenZ19-234h px� 
v
 Loaded user IP repository '%s'.
1135*coregen2/
-/data/devel/redpitaya/vivado/red-pitaya-notesZ19-1700h px� 
t
"Loaded Vivado IP repository '%s'.
1332*coregen2+
)/data/Xilinx/Vivado/Vivado/2023.2/data/ipZ19-2313h px� 
r
Command: %s
53*	vivadotcl2A
?synth_design -top red_pitaya_ps_1_wrapper -part xc7z010clg400-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7z010Z17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7z010Z17-349h px� 
D
Loading part %s157*device2
xc7z010clg400-1Z21-403h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
4Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
O
#Helper process launched with PID %s4824*oasys2
106563Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 2044.965 ; gain = 401.715 ; free physical = 8903 ; free virtual = 18006
h px� 
�
synthesizing module '%s'%s4497*oasys2
red_pitaya_ps_1_wrapper2
 2o
k/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/hdl/red_pitaya_ps_1_wrapper.v2
138@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
red_pitaya_ps_12
 2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
20008@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2 
red_pitaya_ps_1_xlconstant_0_02
 2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_xlconstant_0_0/synth/red_pitaya_ps_1_xlconstant_0_0.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
xlconstant_v1_1_8_xlconstant2
 2|
x/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v2
688@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xlconstant_v1_1_8_xlconstant2
 2
02
12|
x/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v2
688@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
red_pitaya_ps_1_xlconstant_0_02
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_xlconstant_0_0/synth/red_pitaya_ps_1_xlconstant_0_0.v2
538@Z8-6155h px� 
�
synthesizing module '%s'638*oasys2
red_pitaya_ps_1_data_fifo_02�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_data_fifo_0/synth/red_pitaya_ps_1_data_fifo_0.vhd2
1058@Z8-638h px� 
M
%s
*synth25
3	Parameter C_FAMILY bound to: zynq - type: string 
h p
x
� 
T
%s
*synth2<
:	Parameter C_S_AXI_ID_WIDTH bound to: 12 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter C_S_AXI_ADDR_WIDTH bound to: 32 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter C_S_AXI_DATA_WIDTH bound to: 32 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_S_AXI4_DATA_WIDTH bound to: 32 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter C_TX_FIFO_DEPTH bound to: 512 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter C_RX_FIFO_DEPTH bound to: 32768 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter C_TX_CASCADE_HEIGHT bound to: 0 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter C_RX_CASCADE_HEIGHT bound to: 0 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter C_TX_FIFO_PF_THRESHOLD bound to: 507 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_TX_FIFO_PE_THRESHOLD bound to: 5 - type: integer 
h p
x
� 
\
%s
*synth2D
B	Parameter C_RX_FIFO_PF_THRESHOLD bound to: 1024 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_RX_FIFO_PE_THRESHOLD bound to: 5 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_USE_TX_CUT_THROUGH bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_DATA_INTERFACE_TYPE bound to: 1 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_TX_ENABLE_ECC bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_RX_ENABLE_ECC bound to: 0 - type: integer 
h p
x
� 
Z
%s
*synth2B
@	Parameter C_TX_HAS_ECC_ERR_INJECT bound to: 0 - type: integer 
h p
x
� 
Z
%s
*synth2B
@	Parameter C_RX_HAS_ECC_ERR_INJECT bound to: 0 - type: integer 
h p
x
� 
`
%s
*synth2H
F	Parameter C_BASEADDR bound to: 32'b01000011110000000000000000000000 
h p
x
� 
`
%s
*synth2H
F	Parameter C_HIGHADDR bound to: 32'b01000011110000001111111111111111 
h p
x
� 
e
%s
*synth2M
K	Parameter C_AXI4_BASEADDR bound to: 32'b01000011110000010000000000000000 
h p
x
� 
e
%s
*synth2M
K	Parameter C_AXI4_HIGHADDR bound to: 32'b01000011110000011111111111111111 
h p
x
� 
Q
%s
*synth29
7	Parameter C_HAS_AXIS_TID bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_HAS_AXIS_TDEST bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_HAS_AXIS_TUSER bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_HAS_AXIS_TSTRB bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_HAS_AXIS_TKEEP bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_AXIS_TID_WIDTH bound to: 4 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_AXIS_TDEST_WIDTH bound to: 4 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_AXIS_TUSER_WIDTH bound to: 4 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_USE_RX_CUT_THROUGH bound to: 0 - type: integer 
h p
x
� 
P
%s
*synth28
6	Parameter C_USE_TX_DATA bound to: 0 - type: integer 
h p
x
� 
P
%s
*synth28
6	Parameter C_USE_TX_CTRL bound to: 0 - type: integer 
h p
x
� 
P
%s
*synth28
6	Parameter C_USE_RX_DATA bound to: 1 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
axi_fifo_mm_s2|
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
47142
U02
axi_fifo_mm_s2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_data_fifo_0/synth/red_pitaya_ps_1_data_fifo_0.vhd2
2948@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
axi_fifo_mm_s2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
48788@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
axi_lite_ipif2�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
29488@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
slave_attachment2�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
23418@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
address_decoder2�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
17758@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
	pselect_f2�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	pselect_f2
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized02�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized02
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized12
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized22�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized22
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized32�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized32
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized42�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized42
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized52�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized52
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized62�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized62
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized72�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized72
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized82�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized82
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized92�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized92
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized102�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized102
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized112�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized112
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized122�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized122
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized132�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized132
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized142�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized142
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized152�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized152
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized162�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized162
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized172�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized172
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized182�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized182
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized192�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized192
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
address_decoder2
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
17758@Z8-256h px� 
�
default block is never used226*oasys2�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
25508@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
slave_attachment2
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
23418@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
axi_lite_ipif2
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
29488@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
axi_wrapper2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
24618@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
axi_write_wrapper2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
8088@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
axi_write_fsm2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
3188@Z8-638h px� 
�
default block is never used226*oasys2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
5178@Z8-226h px� 
�
default block is never used226*oasys2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
6138@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
axi_write_fsm2
02
12~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
3188@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
axi_write_wrapper2
02
12~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
8088@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
axi_read_wrapper2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
19678@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
axi_read_fsm2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
13108@Z8-638h px� 
�
default block is never used226*oasys2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
14978@Z8-226h px� 
�
default block is never used226*oasys2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
16108@Z8-226h px� 
�
default block is never used226*oasys2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
16568@Z8-226h px� 
�
default block is never used226*oasys2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
17348@Z8-226h px� 
�
default block is never used226*oasys2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
18068@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
axi_read_fsm2
02
12~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
13108@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
axi_read_wrapper2
02
12~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
19678@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
axi_wrapper2
02
12~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
24618@Z8-256h px� 
�
synthesizing module '%s'638*oasys2

ipic2axi_s2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
34928@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
fifo2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
30338@Z8-638h px� 
�
synthesizing module '%s'638*oasys2	
axis_fg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
27398@Z8-638h px� 
T
%s
*synth2<
:	Parameter CLOCKING_MODE bound to: COMMON - type: string 
h p
x
� 
U
%s
*synth2=
;	Parameter FIFO_MEMORY_TYPE bound to: BRAM - type: string 
h p
x
� 
Q
%s
*synth29
7	Parameter CASCADE_HEIGHT bound to: 0 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter PACKET_FIFO bound to: false - type: string 
h p
x
� 
Q
%s
*synth29
7	Parameter FIFO_DEPTH bound to: 32768 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter TDATA_WIDTH bound to: 32 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter TID_WIDTH bound to: 4 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter TDEST_WIDTH bound to: 4 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter TUSER_WIDTH bound to: 4 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ECC_MODE bound to: NO_ECC - type: string 
h p
x
� 
Q
%s
*synth29
7	Parameter RELATED_CLOCKS bound to: 0 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter USE_ADV_FEATURES bound to: 1606 - type: string 
h p
x
� 
W
%s
*synth2?
=	Parameter WR_DATA_COUNT_WIDTH bound to: 16 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter RD_DATA_COUNT_WIDTH bound to: 16 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter PROG_FULL_THRESH bound to: 1024 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter PROG_EMPTY_THRESH bound to: 5 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter CDC_SYNC_STAGES bound to: 2 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
xpm_fifo_axis2H
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
23562
	COMP_FIFO2
xpm_fifo_axis2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
28068@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_axis2
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
23568@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_cdc_sync_rst2
 2H
D/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
10598@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_cdc_sync_rst2
 2
02
12H
D/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
10598@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_base2
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_memory_base2
 2N
J/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
548@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_memory_base2
 2
02
12N
J/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
548@Z8-6155h px� 
�
default block is never used226*oasys2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
12148@Z8-226h px� 
�
default block is never used226*oasys2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
12818@Z8-226h px� 
�
default block is never used226*oasys2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
13038@Z8-226h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_reg_bit2
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
19148@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_reg_bit2
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
19148@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_counter_updn2
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_counter_updn2
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_rst2
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
16268@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_rst2
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
16268@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized02
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized02
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized12
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized12
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized22
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized22
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_base2
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
538@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_axis2
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
23568@Z8-6155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
axis_fg2
02
12~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
27398@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
fifo2
02
12~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
30338@Z8-256h px� 
\
%s
*synth2D
B	Parameter FIFO_MEMORY_TYPE bound to: distributed - type: string 
h p
x
� 
V
%s
*synth2>
<	Parameter FIFO_WRITE_DEPTH bound to: 8192 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter WRITE_DATA_WIDTH bound to: 22 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter READ_MODE bound to: fwft - type: string 
h p
x
� 
T
%s
*synth2<
:	Parameter FIFO_READ_LATENCY bound to: 1 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter FULL_RESET_VALUE bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter USE_ADV_FEATURES bound to: 0 - type: string 
h p
x
� 
S
%s
*synth2;
9	Parameter READ_DATA_WIDTH bound to: 22 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter WR_DATA_COUNT_WIDTH bound to: 1 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter PROG_FULL_THRESH bound to: 10 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter RD_DATA_COUNT_WIDTH bound to: 1 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter PROG_EMPTY_THRESH bound to: 10 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter DOUT_RESET_VALUE bound to: 0 - type: string 
h p
x
� 
O
%s
*synth27
5	Parameter ECC_MODE bound to: no_ecc - type: string 
h p
x
� 
N
%s
*synth26
4	Parameter WAKEUP_TIME bound to: 0 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
xpm_fifo_sync2H
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
19622
COMP_rx_len_fifo2
xpm_fifo_sync2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
45478@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_sync2
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
19628@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_base__parameterized02
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2!
xpm_memory_base__parameterized02
 2N
J/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
548@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
xpm_memory_base__parameterized02
 2
02
12N
J/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
548@Z8-6155h px� 
�
default block is never used226*oasys2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
12148@Z8-226h px� 
�
default block is never used226*oasys2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
12818@Z8-226h px� 
�
default block is never used226*oasys2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
13038@Z8-226h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized32
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized32
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized42
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized42
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized52
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized52
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_base__parameterized02
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
538@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_sync2
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
19628@Z8-6155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

ipic2axi_s2
02
12~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
34928@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
axi_fifo_mm_s2
02
12~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
48788@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
red_pitaya_ps_1_data_fifo_02
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_data_fifo_0/synth/red_pitaya_ps_1_data_fifo_0.vhd2
1058@Z8-256h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
s2mm_prmry_reset_out_n2
red_pitaya_ps_1_data_fifo_02
adc_data_fifo2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
22748@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
adc_data_fifo2
red_pitaya_ps_1_data_fifo_02
412
402i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
22748@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2*
(red_pitaya_ps_1_axis_clock_converter_0_02
 2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_clock_converter_0_0/synth/red_pitaya_ps_1_axis_clock_converter_0_0.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys23
1axis_clock_converter_v1_1_30_axis_clock_converter2
 2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/5362/hdl/axis_clock_converter_v1_1_vl_rfs.v2
9208@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2:
8axis_clock_converter_v1_1_30_axisc_async_clock_converter2
 2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/5362/hdl/axis_clock_converter_v1_1_vl_rfs.v2
3388@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_cdc_sync_rst__parameterized02
 2H
D/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
10598@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_cdc_sync_rst__parameterized02
 2
02
12H
D/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
10598@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_async2
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
21588@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_base__parameterized12
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2!
xpm_memory_base__parameterized12
 2N
J/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
548@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
xpm_memory_base__parameterized12
 2
02
12N
J/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
548@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_cdc_gray2
 2H
D/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
2838@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_cdc_gray2
 2
02
12H
D/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
2838@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_reg_vec2
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18928@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_reg_vec2
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18928@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_cdc_gray__parameterized02
 2H
D/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
2838@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_cdc_gray__parameterized02
 2
02
12H
D/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
2838@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_fifo_reg_vec__parameterized02
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18928@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_fifo_reg_vec__parameterized02
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18928@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_cdc_gray__parameterized12
 2H
D/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
2838@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_cdc_gray__parameterized12
 2
02
12H
D/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
2838@Z8-6155h px� 
�
default block is never used226*oasys2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
12148@Z8-226h px� 
�
default block is never used226*oasys2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
12818@Z8-226h px� 
�
default block is never used226*oasys2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
13038@Z8-226h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_rst__parameterized02
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
16268@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_cdc_sync_rst__parameterized12
 2H
D/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
10598@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_cdc_sync_rst__parameterized12
 2
02
12H
D/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
10598@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_rst__parameterized02
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
16268@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized62
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized62
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized72
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized72
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized82
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized82
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_base__parameterized12
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
538@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_async2
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
21588@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
8axis_clock_converter_v1_1_30_axisc_async_clock_converter2
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/5362/hdl/axis_clock_converter_v1_1_vl_rfs.v2
3388@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2-
+axis_infrastructure_v1_1_1_util_axis2vector2
 2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/434f/hdl/axis_infrastructure_v1_1_vl_rfs.v2
8058@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
+axis_infrastructure_v1_1_1_util_axis2vector2
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/434f/hdl/axis_infrastructure_v1_1_vl_rfs.v2
8058@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2-
+axis_infrastructure_v1_1_1_util_vector2axis2
 2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/434f/hdl/axis_infrastructure_v1_1_vl_rfs.v2
9868@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
+axis_infrastructure_v1_1_1_util_vector2axis2
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/434f/hdl/axis_infrastructure_v1_1_vl_rfs.v2
9868@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
1axis_clock_converter_v1_1_30_axis_clock_converter2
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/5362/hdl/axis_clock_converter_v1_1_vl_rfs.v2
9208@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
(red_pitaya_ps_1_axis_clock_converter_0_02
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_clock_converter_0_0/synth/red_pitaya_ps_1_axis_clock_converter_0_0.v2
538@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
s_axis_tready2*
(red_pitaya_ps_1_axis_clock_converter_0_02
axis_clock_converter_02i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
23158@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
axis_clock_converter_02*
(red_pitaya_ps_1_axis_clock_converter_0_02
102
92i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
23158@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2$
"red_pitaya_ps_1_axis_decimator_0_02
 2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_decimator_0_0/synth/red_pitaya_ps_1_axis_decimator_0_0.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
axis_decimator2
 2t
p/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/67e3/src/axis_decimator.v2
48@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
axis_decimator2
 2
02
12t
p/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/67e3/src/axis_decimator.v2
48@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
"red_pitaya_ps_1_axis_decimator_0_02
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_decimator_0_0/synth/red_pitaya_ps_1_axis_decimator_0_0.v2
538@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2%
#red_pitaya_ps_1_axis_packetizer_0_02
 2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_packetizer_0_0/synth/red_pitaya_ps_1_axis_packetizer_0_0.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
axis_packetizer2
 2u
q/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ffdc/src/axis_packetizer.v2
48@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
axis_packetizer2
 2
02
12u
q/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ffdc/src/axis_packetizer.v2
48@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
#red_pitaya_ps_1_axis_packetizer_0_02
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_packetizer_0_0/synth/red_pitaya_ps_1_axis_packetizer_0_0.v2
538@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
'red_pitaya_ps_1_axis_red_pitaya_adc_0_02
 2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_red_pitaya_adc_0_0/synth/red_pitaya_ps_1_axis_red_pitaya_adc_0_0.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
axis_red_pitaya_adc2
 2y
u/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/60c4/src/axis_red_pitaya_adc.v2
48@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
axis_red_pitaya_adc2
 2
02
12y
u/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/60c4/src/axis_red_pitaya_adc.v2
48@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
'red_pitaya_ps_1_axis_red_pitaya_adc_0_02
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_red_pitaya_adc_0_0/synth/red_pitaya_ps_1_axis_red_pitaya_adc_0_0.v2
538@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
adc_csn2)
'red_pitaya_ps_1_axis_red_pitaya_adc_0_02
axis_red_pitaya_adc_02i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
23468@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
axis_red_pitaya_adc_02)
'red_pitaya_ps_1_axis_red_pitaya_adc_0_02
62
52i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
23468@Z8-7023h px� 
�
synthesizing module '%s'638*oasys2!
red_pitaya_ps_1_util_ds_buf_0_02�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/synth/red_pitaya_ps_1_util_ds_buf_0_0.vhd2
648@Z8-638h px� 
Q
%s
*synth29
7	Parameter C_BUF_TYPE bound to: IBUFDS - type: string 
h p
x
� 
I
%s
*synth21
/	Parameter C_SIZE bound to: 1 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter C_BUFGCE_DIV bound to: 1 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_BUFG_GT_SYNC bound to: 0 - type: integer 
h p
x
� 
_
%s
*synth2G
E	Parameter C_SIM_DEVICE bound to: VERSAL_AI_CORE_ES1 - type: string 
h p
x
� 
H
%s
*synth20
.	Parameter C_OBUFDS_GTE5_ADV bound to: 2'b00 
h p
x
� 
K
%s
*synth23
1	Parameter C_REFCLK_ICNTL_TX bound to: 5'b00000 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
732
U02
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/synth/red_pitaya_ps_1_util_ds_buf_0_0.vhd2
2018@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
2528@Z8-638h px� 
�
,binding component instance '%s' to cell '%s'113*oasys2

IBUFDS_I2
IBUFDS2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
3778@Z8-113h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
util_ds_buf2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
2528@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
red_pitaya_ps_1_util_ds_buf_0_02
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/synth/red_pitaya_ps_1_util_ds_buf_0_0.vhd2
648@Z8-256h px� 
�
synthesizing module '%s'638*oasys2#
!red_pitaya_ps_1_axi_fifo_mm_s_0_12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axi_fifo_mm_s_0_1/synth/red_pitaya_ps_1_axi_fifo_mm_s_0_1.vhd2
1088@Z8-638h px� 
M
%s
*synth25
3	Parameter C_FAMILY bound to: zynq - type: string 
h p
x
� 
T
%s
*synth2<
:	Parameter C_S_AXI_ID_WIDTH bound to: 12 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter C_S_AXI_ADDR_WIDTH bound to: 32 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter C_S_AXI_DATA_WIDTH bound to: 32 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_S_AXI4_DATA_WIDTH bound to: 32 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter C_TX_FIFO_DEPTH bound to: 512 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter C_RX_FIFO_DEPTH bound to: 512 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter C_TX_CASCADE_HEIGHT bound to: 0 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter C_RX_CASCADE_HEIGHT bound to: 0 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter C_TX_FIFO_PF_THRESHOLD bound to: 507 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_TX_FIFO_PE_THRESHOLD bound to: 5 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter C_RX_FIFO_PF_THRESHOLD bound to: 507 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_RX_FIFO_PE_THRESHOLD bound to: 5 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_USE_TX_CUT_THROUGH bound to: 0 - type: integer 
h p
x
� 
X
%s
*synth2@
>	Parameter C_DATA_INTERFACE_TYPE bound to: 1 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_TX_ENABLE_ECC bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_RX_ENABLE_ECC bound to: 0 - type: integer 
h p
x
� 
Z
%s
*synth2B
@	Parameter C_TX_HAS_ECC_ERR_INJECT bound to: 0 - type: integer 
h p
x
� 
Z
%s
*synth2B
@	Parameter C_RX_HAS_ECC_ERR_INJECT bound to: 0 - type: integer 
h p
x
� 
`
%s
*synth2H
F	Parameter C_BASEADDR bound to: 32'b01000011110000100000000000000000 
h p
x
� 
`
%s
*synth2H
F	Parameter C_HIGHADDR bound to: 32'b01000011110000101111111111111111 
h p
x
� 
e
%s
*synth2M
K	Parameter C_AXI4_BASEADDR bound to: 32'b01000011110000110000000000000000 
h p
x
� 
e
%s
*synth2M
K	Parameter C_AXI4_HIGHADDR bound to: 32'b01000011110000111111111111111111 
h p
x
� 
Q
%s
*synth29
7	Parameter C_HAS_AXIS_TID bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_HAS_AXIS_TDEST bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_HAS_AXIS_TUSER bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_HAS_AXIS_TSTRB bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_HAS_AXIS_TKEEP bound to: 0 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_AXIS_TID_WIDTH bound to: 4 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_AXIS_TDEST_WIDTH bound to: 4 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_AXIS_TUSER_WIDTH bound to: 4 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_USE_RX_CUT_THROUGH bound to: 0 - type: integer 
h p
x
� 
P
%s
*synth28
6	Parameter C_USE_TX_DATA bound to: 1 - type: integer 
h p
x
� 
P
%s
*synth28
6	Parameter C_USE_TX_CTRL bound to: 0 - type: integer 
h p
x
� 
P
%s
*synth28
6	Parameter C_USE_RX_DATA bound to: 0 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
axi_fifo_mm_s2|
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
47142
U02
axi_fifo_mm_s2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axi_fifo_mm_s_0_1/synth/red_pitaya_ps_1_axi_fifo_mm_s_0_1.vhd2
3008@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
axi_fifo_mm_s__parameterized12~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
48788@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
axi_lite_ipif__parameterized02�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
29488@Z8-638h px� 
�
synthesizing module '%s'638*oasys2"
 slave_attachment__parameterized02�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
23418@Z8-638h px� 
�
synthesizing module '%s'638*oasys2!
address_decoder__parameterized02�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
17758@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2!
address_decoder__parameterized02
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
17758@Z8-256h px� 
�
default block is never used226*oasys2�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
25508@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2"
 slave_attachment__parameterized02
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
23418@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
axi_lite_ipif__parameterized02
02
12�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
29488@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
axi_wrapper__parameterized02~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
24618@Z8-638h px� 
�
synthesizing module '%s'638*oasys2"
 axi_read_wrapper__parameterized02~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
19678@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
axi_read_fsm__parameterized02~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
13108@Z8-638h px� 
�
default block is never used226*oasys2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
14978@Z8-226h px� 
�
default block is never used226*oasys2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
16108@Z8-226h px� 
�
default block is never used226*oasys2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
16568@Z8-226h px� 
�
default block is never used226*oasys2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
17348@Z8-226h px� 
�
default block is never used226*oasys2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
18068@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
axi_read_fsm__parameterized02
02
12~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
13108@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2"
 axi_read_wrapper__parameterized02
02
12~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
19678@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
axi_wrapper__parameterized02
02
12~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
24618@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
ipic2axi_s__parameterized02~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
34928@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
fifo__parameterized02~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
30338@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
axis_fg__parameterized02~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
27398@Z8-638h px� 
T
%s
*synth2<
:	Parameter CLOCKING_MODE bound to: COMMON - type: string 
h p
x
� 
U
%s
*synth2=
;	Parameter FIFO_MEMORY_TYPE bound to: BRAM - type: string 
h p
x
� 
Q
%s
*synth29
7	Parameter CASCADE_HEIGHT bound to: 0 - type: integer 
h p
x
� 
P
%s
*synth28
6	Parameter PACKET_FIFO bound to: true - type: string 
h p
x
� 
O
%s
*synth27
5	Parameter FIFO_DEPTH bound to: 512 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter TDATA_WIDTH bound to: 32 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter TID_WIDTH bound to: 4 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter TDEST_WIDTH bound to: 4 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter TUSER_WIDTH bound to: 4 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter ECC_MODE bound to: NO_ECC - type: string 
h p
x
� 
Q
%s
*synth29
7	Parameter RELATED_CLOCKS bound to: 0 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter USE_ADV_FEATURES bound to: 1606 - type: string 
h p
x
� 
W
%s
*synth2?
=	Parameter WR_DATA_COUNT_WIDTH bound to: 10 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter RD_DATA_COUNT_WIDTH bound to: 10 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter PROG_FULL_THRESH bound to: 507 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter PROG_EMPTY_THRESH bound to: 5 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter CDC_SYNC_STAGES bound to: 2 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
xpm_fifo_axis2H
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
23562
	COMP_FIFO2
xpm_fifo_axis2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
28068@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_axis__parameterized12
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
23568@Z8-6157h px� 
�
Synth Info: %s 4384*oasys2�
�[XPM_FIFO_AXIS 21-1] Almost full flag option is not enabled (USE_ADV_FEATURES[3] = 1'b0) but Packet FIFO mode requires almost_full to be enabled. XPM_FIFO_AXIS enables the Almost full flag automatically. You may ignore almost_full port if not required 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
25788@Z8-6059h px� 
�
Synth Info: %s 4384*oasys2�
�[XPM_FIFO_AXIS 21-1] Almost empty flag option is not enabled (USE_ADV_FEATURES[11] = 1'b0) but Packet FIFO mode requires almost_empty to be enabled. XPM_FIFO_AXIS enables the Almost empty flag automatically. You may ignore almost_empty port if not required 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
25818@Z8-6059h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_base__parameterized22
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized92
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized92
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2#
!xpm_counter_updn__parameterized102
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!xpm_counter_updn__parameterized102
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
xpm_memory_base__parameterized22
 2N
J/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
548@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
xpm_memory_base__parameterized22
 2
02
12N
J/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
548@Z8-6155h px� 
�
default block is never used226*oasys2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
12148@Z8-226h px� 
�
default block is never used226*oasys2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
12818@Z8-226h px� 
�
default block is never used226*oasys2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
13038@Z8-226h px� 
�
synthesizing module '%s'%s4497*oasys2#
!xpm_counter_updn__parameterized112
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!xpm_counter_updn__parameterized112
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2#
!xpm_counter_updn__parameterized122
 2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!xpm_counter_updn__parameterized122
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18668@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_base__parameterized22
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
538@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_axis__parameterized12
 2
02
12J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
23568@Z8-6155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
axis_fg__parameterized02
02
12~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
27398@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
fifo__parameterized02
02
12~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
30338@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ipic2axi_s__parameterized02
02
12~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
34928@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
axi_fifo_mm_s__parameterized12
02
12~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
48788@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2#
!red_pitaya_ps_1_axi_fifo_mm_s_0_12
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axi_fifo_mm_s_0_1/synth/red_pitaya_ps_1_axi_fifo_mm_s_0_1.vhd2
1088@Z8-256h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	interrupt2#
!red_pitaya_ps_1_axi_fifo_mm_s_0_12
dac_data_fifo2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
23568@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
mm2s_prmry_reset_out_n2#
!red_pitaya_ps_1_axi_fifo_mm_s_0_12
dac_data_fifo2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
23568@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
axi_str_txd_tlast2#
!red_pitaya_ps_1_axi_fifo_mm_s_0_12
dac_data_fifo2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
23568@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
dac_data_fifo2#
!red_pitaya_ps_1_axi_fifo_mm_s_0_12
442
412i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
23568@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
red_pitaya_ps_1_dac_out_0_02
 2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_dac_out_0_0/synth/red_pitaya_ps_1_dac_out_0_0.v2
538@Z8-6157h px� 
�
synthesizing module '%s'638*oasys2	
dac_out21
-/data/devel/redpitaya/vivado/src/dac_out.vhdl2
508@Z8-638h px� 
W
%s
*synth2?
=	Parameter C_M_AXIS_DATA_WIDTH bound to: 32 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_S_AXIS_DATA_WIDTH bound to: 32 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter C_MAXVAL bound to: 8000 - type: integer 
h p
x
� 
K
%s
*synth23
1	Parameter C_MINVAL bound to: 0 - type: integer 
h p
x
� 
Y
%s
*synth2A
?	Parameter C_LED_COUNTVAL bound to: 125000000 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_COUNTVAL bound to: 10000 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_DAC_COUNTVAL bound to: 62 - type: integer 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
dac_out2
02
121
-/data/devel/redpitaya/vivado/src/dac_out.vhdl2
508@Z8-256h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
red_pitaya_ps_1_dac_out_0_02
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_dac_out_0_0/synth/red_pitaya_ps_1_dac_out_0_0.v2
538@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
led2
red_pitaya_ps_1_dac_out_0_02
	dac_out_02i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
23988@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
	dac_out_02
red_pitaya_ps_1_dac_out_0_02
92
82i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
23988@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2&
$red_pitaya_ps_1_axi_cfg_register_0_12
 2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axi_cfg_register_0_1/synth/red_pitaya_ps_1_axi_cfg_register_0_1.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
axi_cfg_register2
 2v
r/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/5278/src/axi_cfg_register.v2
48@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
FDRE2
 2C
?/data/Xilinx/Vivado/Vivado/2023.2/scripts/rt/data/unisim_comp.v2	
410058@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FDRE2
 2
02
12C
?/data/Xilinx/Vivado/Vivado/2023.2/scripts/rt/data/unisim_comp.v2	
410058@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
axi_cfg_register2
 2
02
12v
r/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/5278/src/axi_cfg_register.v2
48@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
$red_pitaya_ps_1_axi_cfg_register_0_12
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axi_cfg_register_0_1/synth/red_pitaya_ps_1_axi_cfg_register_0_1.v2
538@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2&
$red_pitaya_ps_1_axi_cfg_register_0_02
 2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axi_cfg_register_0_0/synth/red_pitaya_ps_1_axi_cfg_register_0_0.v2
538@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
$red_pitaya_ps_1_axi_cfg_register_0_02
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axi_cfg_register_0_0/synth/red_pitaya_ps_1_axi_cfg_register_0_0.v2
538@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
red_pitaya_ps_1_red_pitaya_ps_02
 2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/synth/red_pitaya_ps_1_red_pitaya_ps_0.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2,
*processing_system7_v5_5_processing_system72
 2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/hdl/verilog/processing_system7_v5_5_processing_system7.v2
1528@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
BUFG2
 2C
?/data/Xilinx/Vivado/Vivado/2023.2/scripts/rt/data/unisim_comp.v2
19518@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFG2
 2
02
12C
?/data/Xilinx/Vivado/Vivado/2023.2/scripts/rt/data/unisim_comp.v2
19518@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BIBUF2
 2C
?/data/Xilinx/Vivado/Vivado/2023.2/scripts/rt/data/unisim_comp.v2
15988@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BIBUF2
 2
02
12C
?/data/Xilinx/Vivado/Vivado/2023.2/scripts/rt/data/unisim_comp.v2
15988@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
PS72
 2C
?/data/Xilinx/Vivado/Vivado/2023.2/scripts/rt/data/unisim_comp.v2

1118598@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PS72
 2
02
12C
?/data/Xilinx/Vivado/Vivado/2023.2/scripts/rt/data/unisim_comp.v2

1118598@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
*processing_system7_v5_5_processing_system72
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/hdl/verilog/processing_system7_v5_5_processing_system7.v2
1528@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_GP0_ARESETN2,
*processing_system7_v5_5_processing_system72
inst2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/synth/red_pitaya_ps_1_red_pitaya_ps_0.v2
4658@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_GP1_ARESETN2,
*processing_system7_v5_5_processing_system72
inst2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/synth/red_pitaya_ps_1_red_pitaya_ps_0.v2
4658@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_GP0_ARESETN2,
*processing_system7_v5_5_processing_system72
inst2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/synth/red_pitaya_ps_1_red_pitaya_ps_0.v2
4658@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_GP1_ARESETN2,
*processing_system7_v5_5_processing_system72
inst2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/synth/red_pitaya_ps_1_red_pitaya_ps_0.v2
4658@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_ACP_ARESETN2,
*processing_system7_v5_5_processing_system72
inst2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/synth/red_pitaya_ps_1_red_pitaya_ps_0.v2
4658@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP0_ARESETN2,
*processing_system7_v5_5_processing_system72
inst2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/synth/red_pitaya_ps_1_red_pitaya_ps_0.v2
4658@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP1_ARESETN2,
*processing_system7_v5_5_processing_system72
inst2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/synth/red_pitaya_ps_1_red_pitaya_ps_0.v2
4658@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP2_ARESETN2,
*processing_system7_v5_5_processing_system72
inst2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/synth/red_pitaya_ps_1_red_pitaya_ps_0.v2
4658@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP3_ARESETN2,
*processing_system7_v5_5_processing_system72
inst2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/synth/red_pitaya_ps_1_red_pitaya_ps_0.v2
4658@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	DMA0_RSTN2,
*processing_system7_v5_5_processing_system72
inst2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/synth/red_pitaya_ps_1_red_pitaya_ps_0.v2
4658@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	DMA1_RSTN2,
*processing_system7_v5_5_processing_system72
inst2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/synth/red_pitaya_ps_1_red_pitaya_ps_0.v2
4658@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	DMA2_RSTN2,
*processing_system7_v5_5_processing_system72
inst2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/synth/red_pitaya_ps_1_red_pitaya_ps_0.v2
4658@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	DMA3_RSTN2,
*processing_system7_v5_5_processing_system72
inst2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/synth/red_pitaya_ps_1_red_pitaya_ps_0.v2
4658@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
inst2,
*processing_system7_v5_5_processing_system72
6852
6722�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/synth/red_pitaya_ps_1_red_pitaya_ps_0.v2
4658@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
red_pitaya_ps_1_red_pitaya_ps_02
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/synth/red_pitaya_ps_1_red_pitaya_ps_0.v2
538@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
USB0_PORT_INDCTL2!
red_pitaya_ps_1_red_pitaya_ps_02
red_pitaya_ps2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
24498@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
USB0_VBUS_PWRSELECT2!
red_pitaya_ps_1_red_pitaya_ps_02
red_pitaya_ps2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
24498@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP0_ARREADY2!
red_pitaya_ps_1_red_pitaya_ps_02
red_pitaya_ps2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
24498@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP0_AWREADY2!
red_pitaya_ps_1_red_pitaya_ps_02
red_pitaya_ps2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
24498@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP0_BVALID2!
red_pitaya_ps_1_red_pitaya_ps_02
red_pitaya_ps2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
24498@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP0_RLAST2!
red_pitaya_ps_1_red_pitaya_ps_02
red_pitaya_ps2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
24498@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP0_RVALID2!
red_pitaya_ps_1_red_pitaya_ps_02
red_pitaya_ps2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
24498@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP0_WREADY2!
red_pitaya_ps_1_red_pitaya_ps_02
red_pitaya_ps2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
24498@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP0_BRESP2!
red_pitaya_ps_1_red_pitaya_ps_02
red_pitaya_ps2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
24498@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP0_RRESP2!
red_pitaya_ps_1_red_pitaya_ps_02
red_pitaya_ps2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
24498@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP0_BID2!
red_pitaya_ps_1_red_pitaya_ps_02
red_pitaya_ps2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
24498@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP0_RID2!
red_pitaya_ps_1_red_pitaya_ps_02
red_pitaya_ps2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
24498@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP0_RDATA2!
red_pitaya_ps_1_red_pitaya_ps_02
red_pitaya_ps2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
24498@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP0_RCOUNT2!
red_pitaya_ps_1_red_pitaya_ps_02
red_pitaya_ps2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
24498@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP0_WCOUNT2!
red_pitaya_ps_1_red_pitaya_ps_02
red_pitaya_ps2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
24498@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP0_RACOUNT2!
red_pitaya_ps_1_red_pitaya_ps_02
red_pitaya_ps2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
24498@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
S_AXI_HP0_WACOUNT2!
red_pitaya_ps_1_red_pitaya_ps_02
red_pitaya_ps2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
24498@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
red_pitaya_ps2!
red_pitaya_ps_1_red_pitaya_ps_02
1112
942i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
24498@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
 2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
27408@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
m00_couplers_imp_1GPZGNS2
 2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
138@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
red_pitaya_ps_1_auto_pc_02
 2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_auto_pc_0/synth/red_pitaya_ps_1_auto_pc_0.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys27
5axi_protocol_converter_v2_1_29_axi_protocol_converter2
 2�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
52858@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2$
"axi_protocol_converter_v2_1_29_b2s2
 2�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
47048@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2/
-axi_protocol_converter_v2_1_29_b2s_aw_channel2
 2�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
43608@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys23
1axi_protocol_converter_v2_1_29_b2s_cmd_translator2
 2�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
37208@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2-
+axi_protocol_converter_v2_1_29_b2s_incr_cmd2
 2�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
32168@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
+axi_protocol_converter_v2_1_29_b2s_incr_cmd2
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
32168@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2-
+axi_protocol_converter_v2_1_29_b2s_wrap_cmd2
 2�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
29828@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
+axi_protocol_converter_v2_1_29_b2s_wrap_cmd2
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
29828@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
1axi_protocol_converter_v2_1_29_b2s_cmd_translator2
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
37208@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2/
-axi_protocol_converter_v2_1_29_b2s_wr_cmd_fsm2
 2�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
33928@Z8-6157h px� 
�
default block is never used226*oasys2�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
34468@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
-axi_protocol_converter_v2_1_29_b2s_wr_cmd_fsm2
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
33928@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
-axi_protocol_converter_v2_1_29_b2s_aw_channel2
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
43608@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2.
,axi_protocol_converter_v2_1_29_b2s_b_channel2
 2�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
39068@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys20
.axi_protocol_converter_v2_1_29_b2s_simple_fifo2
 2�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
28528@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
.axi_protocol_converter_v2_1_29_b2s_simple_fifo2
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
28528@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2@
>axi_protocol_converter_v2_1_29_b2s_simple_fifo__parameterized02
 2�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
28528@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
>axi_protocol_converter_v2_1_29_b2s_simple_fifo__parameterized02
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
28528@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
,axi_protocol_converter_v2_1_29_b2s_b_channel2
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
39068@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2/
-axi_protocol_converter_v2_1_29_b2s_ar_channel2
 2�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
45168@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2/
-axi_protocol_converter_v2_1_29_b2s_rd_cmd_fsm2
 2�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
35468@Z8-6157h px� 
�
default block is never used226*oasys2�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
36088@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
-axi_protocol_converter_v2_1_29_b2s_rd_cmd_fsm2
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
35468@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
-axi_protocol_converter_v2_1_29_b2s_ar_channel2
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
45168@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2.
,axi_protocol_converter_v2_1_29_b2s_r_channel2
 2�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
41558@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2@
>axi_protocol_converter_v2_1_29_b2s_simple_fifo__parameterized12
 2�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
28528@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
>axi_protocol_converter_v2_1_29_b2s_simple_fifo__parameterized12
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
28528@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2@
>axi_protocol_converter_v2_1_29_b2s_simple_fifo__parameterized22
 2�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
28528@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
>axi_protocol_converter_v2_1_29_b2s_simple_fifo__parameterized22
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
28528@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
,axi_protocol_converter_v2_1_29_b2s_r_channel2
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
41558@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2/
-axi_register_slice_v2_1_29_axi_register_slice2
 2�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
37188@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2&
$axi_infrastructure_v1_1_0_axi2vector2
 2�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2
598@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
$axi_infrastructure_v1_1_0_axi2vector2
 2
02
12�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2
598@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2&
$axi_infrastructure_v1_1_0_vector2axi2
 2�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2
4738@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
$axi_infrastructure_v1_1_0_vector2axi2
 2
02
12�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2
4738@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys20
.axi_register_slice_v2_1_29_axic_register_slice2
 2�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
.axi_register_slice_v2_1_29_axic_register_slice2
 2
02
12�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2@
>axi_register_slice_v2_1_29_axic_register_slice__parameterized02
 2�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
>axi_register_slice_v2_1_29_axic_register_slice__parameterized02
 2
02
12�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2@
>axi_register_slice_v2_1_29_axic_register_slice__parameterized12
 2�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
>axi_register_slice_v2_1_29_axic_register_slice__parameterized12
 2
02
12�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2@
>axi_register_slice_v2_1_29_axic_register_slice__parameterized22
 2�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
>axi_register_slice_v2_1_29_axic_register_slice__parameterized22
 2
02
12�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
-axi_register_slice_v2_1_29_axi_register_slice2
 2
02
12�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
37188@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
aclk2x2/
-axi_register_slice_v2_1_29_axi_register_slice2
SI_REG2�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
48718@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
SI_REG2/
-axi_register_slice_v2_1_29_axi_register_slice2
932
922�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
48718@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2?
=axi_register_slice_v2_1_29_axi_register_slice__parameterized02
 2�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
37188@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys26
4axi_infrastructure_v1_1_0_axi2vector__parameterized02
 2�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2
598@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys26
4axi_infrastructure_v1_1_0_axi2vector__parameterized02
 2
02
12�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2
598@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys26
4axi_infrastructure_v1_1_0_vector2axi__parameterized02
 2�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2
4738@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys26
4axi_infrastructure_v1_1_0_vector2axi__parameterized02
 2
02
12�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2
4738@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2@
>axi_register_slice_v2_1_29_axic_register_slice__parameterized32
 2�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
>axi_register_slice_v2_1_29_axic_register_slice__parameterized32
 2
02
12�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2@
>axi_register_slice_v2_1_29_axic_register_slice__parameterized42
 2�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
>axi_register_slice_v2_1_29_axic_register_slice__parameterized42
 2
02
12�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2@
>axi_register_slice_v2_1_29_axic_register_slice__parameterized52
 2�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
>axi_register_slice_v2_1_29_axic_register_slice__parameterized52
 2
02
12�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2@
>axi_register_slice_v2_1_29_axic_register_slice__parameterized62
 2�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
>axi_register_slice_v2_1_29_axic_register_slice__parameterized62
 2
02
12�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
14928@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
=axi_register_slice_v2_1_29_axi_register_slice__parameterized02
 2
02
12�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
37188@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
aclk2x2/
-axi_register_slice_v2_1_29_axi_register_slice2
MI_REG2�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
51268@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
MI_REG2/
-axi_register_slice_v2_1_29_axi_register_slice2
932
922�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
51268@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
"axi_protocol_converter_v2_1_29_b2s2
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
47048@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys27
5axi_protocol_converter_v2_1_29_axi_protocol_converter2
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
52858@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
red_pitaya_ps_1_auto_pc_02
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_auto_pc_0/synth/red_pitaya_ps_1_auto_pc_0.v2
538@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awprot2
red_pitaya_ps_1_auto_pc_02	
auto_pc2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
2528@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arprot2
red_pitaya_ps_1_auto_pc_02	
auto_pc2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
2528@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2	
auto_pc2
red_pitaya_ps_1_auto_pc_02
602
582i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
2528@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m00_couplers_imp_1GPZGNS2
 2
02
12i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
138@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m01_couplers_imp_7N19922
 2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
3138@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
red_pitaya_ps_1_auto_pc_12
 2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_auto_pc_1/synth/red_pitaya_ps_1_auto_pc_1.v2
538@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
red_pitaya_ps_1_auto_pc_12
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_auto_pc_1/synth/red_pitaya_ps_1_auto_pc_1.v2
538@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awprot2
red_pitaya_ps_1_auto_pc_12	
auto_pc2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
5528@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arprot2
red_pitaya_ps_1_auto_pc_12	
auto_pc2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
5528@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2	
auto_pc2
red_pitaya_ps_1_auto_pc_12
602
582i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
5528@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m01_couplers_imp_7N19922
 2
02
12i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
3138@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m02_couplers_imp_CVFSQT2
 2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
6138@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m02_couplers_imp_CVFSQT2
 2
02
12i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
6138@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m03_couplers_imp_12TR9L72
 2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
7388@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
red_pitaya_ps_1_auto_pc_22
 2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_auto_pc_2/synth/red_pitaya_ps_1_auto_pc_2.v2
538@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
red_pitaya_ps_1_auto_pc_22
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_auto_pc_2/synth/red_pitaya_ps_1_auto_pc_2.v2
538@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awprot2
red_pitaya_ps_1_auto_pc_22	
auto_pc2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
9778@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arprot2
red_pitaya_ps_1_auto_pc_22	
auto_pc2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
9778@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2	
auto_pc2
red_pitaya_ps_1_auto_pc_22
602
582i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
9778@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m03_couplers_imp_12TR9L72
 2
02
12i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
7388@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m04_couplers_imp_JCMVVN2
 2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
10388@Z8-6157h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-61572
100Z17-14h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
red_pitaya_ps_1_auto_pc_32
 2
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_auto_pc_3/synth/red_pitaya_ps_1_auto_pc_3.v2
538@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awprot2
red_pitaya_ps_1_auto_pc_32	
auto_pc2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
12778@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arprot2
red_pitaya_ps_1_auto_pc_32	
auto_pc2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
12778@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2	
auto_pc2
red_pitaya_ps_1_auto_pc_32
602
582i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
12778@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m04_couplers_imp_JCMVVN2
 2
02
12i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
10388@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m05_couplers_imp_1Q7KAUL2
 2
02
12i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
13388@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m06_couplers_imp_1NC14FY2
 2
02
12i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
14848@Z8-6155h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-61552
100Z17-14h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awregion2
red_pitaya_ps_1_auto_pc_42	
auto_pc2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
49428@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arregion2
red_pitaya_ps_1_auto_pc_42	
auto_pc2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
49428@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2	
auto_pc2
red_pitaya_ps_1_auto_pc_42
792
772i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
49428@Z8-7023h px� 
�
-case statement is not full and has no default155*oasys2}
y/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v2
9828@Z8-155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
aclk2x2/
-axi_register_slice_v2_1_29_axi_register_slice2
reg_slice_mi2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
reg_slice_mi2/
-axi_register_slice_v2_1_29_axi_register_slice2
932
922|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7023h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
aclk2x2/
-axi_register_slice_v2_1_29_axi_register_slice2
reg_slice_mi2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
reg_slice_mi2/
-axi_register_slice_v2_1_29_axi_register_slice2
932
922|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7023h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
aclk2x2/
-axi_register_slice_v2_1_29_axi_register_slice2
reg_slice_mi2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
reg_slice_mi2/
-axi_register_slice_v2_1_29_axi_register_slice2
932
922|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7023h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
aclk2x2/
-axi_register_slice_v2_1_29_axi_register_slice2
reg_slice_mi2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
reg_slice_mi2/
-axi_register_slice_v2_1_29_axi_register_slice2
932
922|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7023h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
aclk2x2/
-axi_register_slice_v2_1_29_axi_register_slice2
reg_slice_mi2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
reg_slice_mi2/
-axi_register_slice_v2_1_29_axi_register_slice2
932
922|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7023h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
aclk2x2/
-axi_register_slice_v2_1_29_axi_register_slice2
reg_slice_mi2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
reg_slice_mi2/
-axi_register_slice_v2_1_29_axi_register_slice2
932
922|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7023h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
aclk2x2/
-axi_register_slice_v2_1_29_axi_register_slice2
reg_slice_mi2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
reg_slice_mi2/
-axi_register_slice_v2_1_29_axi_register_slice2
932
922|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7023h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
aclk2x2/
-axi_register_slice_v2_1_29_axi_register_slice2
reg_slice_mi2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
reg_slice_mi2/
-axi_register_slice_v2_1_29_axi_register_slice2
932
922|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7023h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
aclk2x2/
-axi_register_slice_v2_1_29_axi_register_slice2
reg_slice_mi2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
reg_slice_mi2/
-axi_register_slice_v2_1_29_axi_register_slice2
932
922|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
31168@Z8-7023h px� 
�
-case statement is not full and has no default155*oasys2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
36268@Z8-155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
602

m_axi_arid2
962
red_pitaya_ps_1_xbar_02i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
45528@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
722

m_axi_awid2
962
red_pitaya_ps_1_xbar_02i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
45648@Z8-689h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_araddr2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_arburst2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_arcache2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_arlen2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_arlock2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_arprot2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_arqos2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_arregion2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_arsize2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_arvalid2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_awaddr2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_awburst2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_awcache2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_awlen2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_awlock2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_awprot2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_awqos2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_awregion2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_awsize2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_awvalid2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_bready2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_rready2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_wdata2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_wlast2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_wstrb2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M06_AXI_wvalid2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M07_AXI_araddr2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M07_AXI_arburst2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M07_AXI_arcache2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M07_AXI_arlen2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M07_AXI_arlock2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M07_AXI_arprot2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M07_AXI_arqos2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M07_AXI_arregion2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M07_AXI_arsize2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M07_AXI_arvalid2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M07_AXI_awaddr2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M07_AXI_awburst2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M07_AXI_awcache2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M07_AXI_awlen2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M07_AXI_awlock2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M07_AXI_awprot2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
red_pitaya_ps_axi_periph2i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7071h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-70712
100Z17-14h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
red_pitaya_ps_axi_periph2,
*red_pitaya_ps_1_red_pitaya_ps_axi_periph_02
2312
1792i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
25448@Z8-7023h px� 
�
synthesizing module '%s'638*oasys2*
(red_pitaya_ps_1_rst_red_pitaya_ps_125M_02�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0/synth/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0.vhd2
748@Z8-638h px� 
M
%s
*synth25
3	Parameter C_FAMILY bound to: zynq - type: string 
h p
x
� 
R
%s
*synth2:
8	Parameter C_EXT_RST_WIDTH bound to: 4 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_AUX_RST_WIDTH bound to: 4 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter C_EXT_RESET_HIGH bound to: 1'b0 
h p
x
� 
F
%s
*synth2.
,	Parameter C_AUX_RESET_HIGH bound to: 1'b0 
h p
x
� 
P
%s
*synth28
6	Parameter C_NUM_BUS_RST bound to: 1 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_NUM_PERP_RST bound to: 1 - type: integer 
h p
x
� 
]
%s
*synth2E
C	Parameter C_NUM_INTERCONNECT_ARESETN bound to: 1 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_NUM_PERP_ARESETN bound to: 1 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
proc_sys_reset2�
~/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
12712
U02
proc_sys_reset2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0/synth/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0.vhd2
1298@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
proc_sys_reset2�
~/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
13308@Z8-638h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b1 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2
	FDRE_inst2
FDRE2�
~/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
13998@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b1 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2

FDRE_BSR2
FDRE2�
~/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
14158@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2

FDRE_BSR_N2
FDRE2�
~/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
14418@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b1 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2

FDRE_PER2
FDRE2�
~/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
14648@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2

FDRE_PER_N2
FDRE2�
~/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
14888@Z8-113h px� 
�
synthesizing module '%s'638*oasys2
lpf2�
~/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
8218@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
SRL162A
?/data/Xilinx/Vivado/Vivado/2023.2/scripts/rt/data/unisim_comp.v2
1337212
	POR_SRL_I2
SRL162�
~/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
8738@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

cdc_sync2x
t/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2
1068@Z8-638h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2"
 CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2x
t/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2
5148@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2'
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d22
FDR2x
t/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2
5458@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2'
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d32
FDR2x
t/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2
5548@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2'
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d42
FDR2x
t/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2
5648@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2'
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d52
FDR2x
t/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2
5748@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2'
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d62
FDR2x
t/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2
5848@Z8-113h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

cdc_sync2
02
12x
t/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2
1068@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
lpf2
02
12�
~/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
8218@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
sequence_psr2�
~/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
3048@Z8-638h px� 
�
synthesizing module '%s'638*oasys2	
upcnt_n2�
~/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
1268@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
upcnt_n2
02
12�
~/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
1268@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
sequence_psr2
02
12�
~/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
3048@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
proc_sys_reset2
02
12�
~/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
13308@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2*
(red_pitaya_ps_1_rst_red_pitaya_ps_125M_02
02
12�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0/synth/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0.vhd2
748@Z8-256h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
rst_red_pitaya_ps_125M2*
(red_pitaya_ps_1_rst_red_pitaya_ps_125M_02
102
72i
e/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/synth/red_pitaya_ps_1.v2
27248@Z8-7023h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
is_read_reg2�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
24478@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
is_write_reg2�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
24488@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2"
 gaxi_full_sm.pipeline_full_r_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
15688@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
gaxi_full_sm.araddr_reg_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
20878@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
grid.ar_id_r_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
23088@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2)
'gen_rd_b.gen_doutb_pipe.enb_pipe_reg[0]2N
J/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
30698@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
gdvld.data_valid_std_reg2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
5448@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
gen_fwft.empty_fwft_fb_reg2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
13988@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2)
'gen_rd_b.gen_doutb_pipe.enb_pipe_reg[0]2N
J/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
30698@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
gen_fwft.empty_fwft_fb_reg2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
13988@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_tx_channel_reset_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39538@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_txd_wr_data_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39558@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_txd_sb_wr_en_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39568@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_txd_wr_en_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39578@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_rxd_rd_en_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39588@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_ip2bus_data_mux_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39628@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_rd_decode_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39658@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_txd_dest_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39688@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_tx_ecc_ec_reset_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39698@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_tx_injsbiterr_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39708@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_tx_injdbiterr_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39718@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_rx_ecc_ec_reset_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39728@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
grxd.rx_ecc1_cntr_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
44618@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
grxd.rx_ecc2_cntr_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
44768@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
grxd.rx_partial_pkt_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
44928@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
grxd.sig_rxd_dbiterr_d1_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
43218@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2)
'gen_rd_b.gen_doutb_pipe.enb_pipe_reg[0]2N
J/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
30698@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
dest_out_bin_ff_reg2H
D/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
4178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
dest_out_bin_ff_reg2H
D/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
4178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
dest_out_bin_ff_reg2H
D/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
4178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
gdvld.data_valid_std_reg2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
5448@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
gen_fwft.empty_fwft_fb_reg2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
13988@Z8-6014h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
BUFG_O2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1108@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2

BUFGCE_O2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1158@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
BUFH_O2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1208@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2

BUFHCE_O2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1258@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
BUFG_FABRIC_O2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1298@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
OBUFDS_GTE5_O2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1348@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
OBUFDS_GTE5_OB2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1358@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
OBUFDS_GTE5_ADV_O2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1408@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
OBUFDS_GTE5_ADV_OB2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1418@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
OBUFDS_GTE3_O2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1478@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
OBUFDS_GTE3_OB2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1488@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
OBUFDS_GTE3_ADV_O2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1538@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
OBUFDS_GTE3_ADV_OB2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1548@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
OBUFDS_GTE4_O2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1608@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
OBUFDS_GTE4_OB2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1618@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
OBUFDS_GTE4_ADV_O2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1668@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
OBUFDS_GTE4_ADV_OB2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1678@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
IBUFDS_GTM_O2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1718@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
IBUFDS_GTM_ODIV22
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1728@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
OBUFDS_GTM_O2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1788@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
OBUFDS_GTM_OB2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1798@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
OBUFDS_GTM_ADV_O2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1868@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
OBUFDS_GTM_ADV_OB2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1878@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
IBUFDS_GTME5_O2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1908@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
IBUFDS_GTME5_ODIV22
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1918@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
OBUFDS_GTME5_O2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
1998@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
OBUFDS_GTME5_OB2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
2008@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
OBUFDS_GTME5_ADV_O2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
2068@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
OBUFDS_GTME5_ADV_OB2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
2078@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
	BUFG_GT_O2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
2178@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
	BUFG_PS_O2
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
2218@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
MBUFG_GT_O12
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
2338@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
MBUFG_GT_O22
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
2348@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
MBUFG_GT_O32
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
2358@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
MBUFG_GT_O42
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
2368@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
MBUFG_PS_O12
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
2418@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
MBUFG_PS_O22
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
2428@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
MBUFG_PS_O32
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
2438@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
MBUFG_PS_O42
util_ds_buf2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/util_ds_buf.vhd2
2448@Z8-3848h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
is_read_reg2�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
24478@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
is_write_reg2�
}/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
24488@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2"
 gaxi_full_sm.pipeline_full_r_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
15688@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
gaxi_full_sm.araddr_reg_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
20878@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
grid.ar_id_r_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
23088@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2)
'gen_rd_b.gen_doutb_pipe.enb_pipe_reg[0]2N
J/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
30698@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
gdvld.data_valid_std_reg2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
5448@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2/
-gen_pntr_flags_cc.gae_cc_std.ram_aempty_i_reg2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
9768@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
gen_fwft.empty_fwft_fb_reg2J
F/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
13988@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
gtxd.tx_ecc1_cntr_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
38518@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
gtxd.tx_ecc2_cntr_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
38668@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_rx_channel_reset_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39548@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_rxd_rd_en_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39588@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_ip2bus_data_mux_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39628@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_rd_decode_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39658@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_rd_rlen_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39668@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_tx_ecc_ec_reset_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
38508@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_rx_ecc_ec_reset_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39728@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_rx_injsbiterr_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39738@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
sig_rx_injdbiterr_reg2~
z/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ca01/hdl/axi_fifo_mm_s_v4_3_rfs.vhd2
39748@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
state_r1_reg2�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
35968@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
s_arlen_r_reg2�
�/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v2
35978@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
areset_d1_reg2}
y/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v2
7478@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
S_READY_i_reg2}
y/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v2
7868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2U
Sgen_multi_thread.gen_thread_loop[0].gen_debug_r_multi_thread.debug_r_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
43388@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2U
Sgen_multi_thread.gen_thread_loop[1].gen_debug_r_multi_thread.debug_r_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
43388@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2U
Sgen_multi_thread.gen_thread_loop[2].gen_debug_r_multi_thread.debug_r_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
43388@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2U
Sgen_multi_thread.gen_thread_loop[3].gen_debug_r_multi_thread.debug_r_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
43388@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2U
Sgen_multi_thread.gen_thread_loop[4].gen_debug_r_multi_thread.debug_r_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
43388@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2U
Sgen_multi_thread.gen_thread_loop[5].gen_debug_r_multi_thread.debug_r_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
43388@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2U
Sgen_multi_thread.gen_thread_loop[6].gen_debug_r_multi_thread.debug_r_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
43388@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2U
Sgen_multi_thread.gen_thread_loop[7].gen_debug_r_multi_thread.debug_r_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
43388@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2U
Sgen_multi_thread.gen_thread_loop[0].gen_debug_r_multi_thread.debug_r_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
43388@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2U
Sgen_multi_thread.gen_thread_loop[1].gen_debug_r_multi_thread.debug_r_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
43388@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2U
Sgen_multi_thread.gen_thread_loop[2].gen_debug_r_multi_thread.debug_r_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
43388@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2U
Sgen_multi_thread.gen_thread_loop[3].gen_debug_r_multi_thread.debug_r_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
43388@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2U
Sgen_multi_thread.gen_thread_loop[4].gen_debug_r_multi_thread.debug_r_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
43388@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2U
Sgen_multi_thread.gen_thread_loop[5].gen_debug_r_multi_thread.debug_r_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
43388@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2U
Sgen_multi_thread.gen_thread_loop[6].gen_debug_r_multi_thread.debug_r_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
43388@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2U
Sgen_multi_thread.gen_thread_loop[7].gen_debug_r_multi_thread.debug_r_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
43388@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
areset_d1_reg2}
y/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v2
7478@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
S_READY_i_reg2}
y/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v2
7868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
areset_d1_reg2}
y/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v2
7478@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
S_READY_i_reg2}
y/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v2
7868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
areset_d1_reg2}
y/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v2
7478@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
S_READY_i_reg2}
y/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v2
7868@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2E
Cgen_master_slots[0].gen_mi_write.gen_debug_w.debug_w_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
29918@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2E
Cgen_master_slots[1].gen_mi_write.gen_debug_w.debug_w_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
29918@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2E
Cgen_master_slots[3].gen_mi_write.gen_debug_w.debug_w_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
29918@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2E
Cgen_master_slots[4].gen_mi_write.gen_debug_w.debug_w_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
29918@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2E
Cgen_master_slots[5].gen_mi_write.gen_debug_w.debug_w_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
29918@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2E
Cgen_master_slots[6].gen_mi_write.gen_debug_w.debug_w_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
29918@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2E
Cgen_master_slots[7].gen_mi_write.gen_debug_w.debug_w_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
29918@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2E
Cgen_master_slots[8].gen_mi_write.gen_debug_w.debug_w_beat_cnt_i_reg2|
x/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v2
29918@Z8-6014h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2

prmry_aclk2

cdc_syncZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_resetn2

cdc_syncZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[1]2

cdc_syncZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[0]2

cdc_syncZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
scndry_resetn2

cdc_syncZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACLK2@
>axi_register_slice_v2_1_29_axic_register_slice__parameterized7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ARESET2@
>axi_register_slice_v2_1_29_axic_register_slice__parameterized7Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACLK2@
>axi_register_slice_v2_1_29_axic_register_slice__parameterized8Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ARESET2@
>axi_register_slice_v2_1_29_axic_register_slice__parameterized8Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_buser[0]26
4axi_infrastructure_v1_1_0_vector2axi__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_ruser[0]26
4axi_infrastructure_v1_1_0_vector2axi__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awuser[0]26
4axi_infrastructure_v1_1_0_axi2vector__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[11]26
4axi_infrastructure_v1_1_0_axi2vector__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[10]26
4axi_infrastructure_v1_1_0_axi2vector__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[9]26
4axi_infrastructure_v1_1_0_axi2vector__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[8]26
4axi_infrastructure_v1_1_0_axi2vector__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[7]26
4axi_infrastructure_v1_1_0_axi2vector__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[6]26
4axi_infrastructure_v1_1_0_axi2vector__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[5]26
4axi_infrastructure_v1_1_0_axi2vector__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[4]26
4axi_infrastructure_v1_1_0_axi2vector__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[3]26
4axi_infrastructure_v1_1_0_axi2vector__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[2]26
4axi_infrastructure_v1_1_0_axi2vector__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[1]26
4axi_infrastructure_v1_1_0_axi2vector__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[0]26
4axi_infrastructure_v1_1_0_axi2vector__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wuser[0]26
4axi_infrastructure_v1_1_0_axi2vector__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_aruser[0]26
4axi_infrastructure_v1_1_0_axi2vector__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
aclk2x2?
=axi_register_slice_v2_1_29_axi_register_slice__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACLK20
.axi_crossbar_v2_1_30_wdata_mux__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ARESET20
.axi_crossbar_v2_1_30_wdata_mux__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ASELECT[0]20
.axi_crossbar_v2_1_30_wdata_mux__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

S_AVALID20
.axi_crossbar_v2_1_30_wdata_mux__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACLK20
.axi_crossbar_v2_1_30_wdata_mux__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ARESET20
.axi_crossbar_v2_1_30_wdata_mux__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ASELECT[0]20
.axi_crossbar_v2_1_30_wdata_mux__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

S_AVALID20
.axi_crossbar_v2_1_30_wdata_mux__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACLK2A
?axi_register_slice_v2_1_29_axic_register_slice__parameterized12Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ARESET2A
?axi_register_slice_v2_1_29_axic_register_slice__parameterized12Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
aclk2x2?
=axi_register_slice_v2_1_29_axi_register_slice__parameterized3Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACLK2 
axi_crossbar_v2_1_30_wdata_muxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ARESET2 
axi_crossbar_v2_1_30_wdata_muxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ASELECT[0]2 
axi_crossbar_v2_1_30_wdata_muxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

S_AVALID2 
axi_crossbar_v2_1_30_wdata_muxZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ACLK2A
?axi_register_slice_v2_1_29_axic_register_slice__parameterized11Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ARESET2A
?axi_register_slice_v2_1_29_axic_register_slice__parameterized11Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
aclk2x2?
=axi_register_slice_v2_1_29_axi_register_slice__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ADDR[1]23
1axi_crossbar_v2_1_30_addr_decoder__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ADDR[0]23
1axi_crossbar_v2_1_30_addr_decoder__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ABURST[1]24
2axi_crossbar_v2_1_30_si_transactor__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ABURST[0]24
2axi_crossbar_v2_1_30_si_transactor__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ADDR[1]2#
!axi_crossbar_v2_1_30_addr_decoderZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ADDR[0]2#
!axi_crossbar_v2_1_30_addr_decoderZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ABURST[1]2$
"axi_crossbar_v2_1_30_si_transactorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ABURST[0]2$
"axi_crossbar_v2_1_30_si_transactorZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_WID[11]2
axi_crossbar_v2_1_30_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_WID[10]2
axi_crossbar_v2_1_30_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_WID[9]2
axi_crossbar_v2_1_30_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_WID[8]2
axi_crossbar_v2_1_30_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_WID[7]2
axi_crossbar_v2_1_30_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_WID[6]2
axi_crossbar_v2_1_30_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_WID[5]2
axi_crossbar_v2_1_30_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_WID[4]2
axi_crossbar_v2_1_30_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_WID[3]2
axi_crossbar_v2_1_30_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_WID[2]2
axi_crossbar_v2_1_30_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_WID[1]2
axi_crossbar_v2_1_30_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_AXI_WID[0]2
axi_crossbar_v2_1_30_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_awuser[0]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[11]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[10]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[9]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[8]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[7]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[6]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[5]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[4]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[3]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[2]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[1]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wid[0]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_wuser[0]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
s_axi_aruser[0]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_awready[2]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_wready[2]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_bid[35]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_bid[34]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_bid[33]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_bid[32]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_bid[31]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_bid[30]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_bid[29]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_bid[28]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_bid[27]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_bid[26]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_bid[25]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_bid[24]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_bresp[5]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_bresp[4]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_buser[7]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_buser[6]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_buser[5]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
m_axi_buser[4]2#
!axi_crossbar_v2_1_30_axi_crossbarZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 2351.559 ; gain = 708.309 ; free physical = 8584 ; free virtual = 17686
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 2351.559 ; gain = 708.309 ; free physical = 8584 ; free virtual = 17686
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 2351.559 ; gain = 708.309 ; free physical = 8584 ; free virtual = 17686
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:00.32

00:00:00.32

2351.5592
0.0002
85832
17686Z17-722h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
142Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
o
!Found multi-term driver net: %s.
512*netlist2(
&red_pitaya_ps_1_i/clock_in/U0/<const0>Z29-1115h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/red_pitaya_ps_1_red_pitaya_ps_0.xdc2(
$red_pitaya_ps_1_i/red_pitaya_ps/inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/red_pitaya_ps_1_red_pitaya_ps_0.xdc2(
$red_pitaya_ps_1_i/red_pitaya_ps/inst	8Z20-847h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_red_pitaya_ps_0/red_pitaya_ps_1_red_pitaya_ps_0.xdc2+
).Xil/red_pitaya_ps_1_wrapper_propImpl.xdcZ1-236h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0_board.xdc2/
+red_pitaya_ps_1_i/rst_red_pitaya_ps_125M/U0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0_board.xdc2/
+red_pitaya_ps_1_i/rst_red_pitaya_ps_125M/U0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0.xdc2/
+red_pitaya_ps_1_i/rst_red_pitaya_ps_125M/U0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0.xdc2/
+red_pitaya_ps_1_i/rst_red_pitaya_ps_125M/U0	8Z20-847h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0/red_pitaya_ps_1_rst_red_pitaya_ps_125M_0.xdc2+
).Xil/red_pitaya_ps_1_wrapper_propImpl.xdcZ1-236h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/red_pitaya_ps_1_util_ds_buf_0_0_board.xdc2!
red_pitaya_ps_1_i/clock_in/U0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/data/devel/redpitaya/vivado/adc_dac/adc_dac.gen/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_util_ds_buf_0_0/red_pitaya_ps_1_util_ds_buf_0_0_board.xdc2!
red_pitaya_ps_1_i/clock_in/U0	8Z20-847h px� 
z
Parsing XDC File [%s]
179*designutils29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
led_o29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
68@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
68@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led_o29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
638@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
638@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
led_o29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
648@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
648@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
trigger_in_029
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
668@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
668@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
trigger_in_029
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
678@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
678@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
trigger_in_029
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
698@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
698@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
clock29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
718@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
718@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
clock29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
728@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
728@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
adc_clk_i[*]29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
758@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
758@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
adc_clk_i[1]29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
768@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
768@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
adc_clk_i[0]29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
778@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
778@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
ext_clk29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
868@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
868@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
ext_clk29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
878@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
878@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
Led29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
898@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
898@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
Led29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
908@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
908@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
Led29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
918@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2
918@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils29
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project27
5/data/devel/redpitaya/vivado/redpitaya/red_pitaya.xdc2+
).Xil/red_pitaya_ps_1_wrapper_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2L
H/data/devel/redpitaya/vivado/adc_dac/adc_dac.runs/synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2L
H/data/devel/redpitaya/vivado/adc_dac/adc_dac.runs/synth_1/dont_touch.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2J
H/data/devel/redpitaya/vivado/adc_dac/adc_dac.runs/synth_1/dont_touch.xdc2+
).Xil/red_pitaya_ps_1_wrapper_propImpl.xdcZ1-236h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2L
J/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2+
).Xil/red_pitaya_ps_1_wrapper_propImpl.xdcZ1-236h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2M
K/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/tcl/xpm_fifo_rst.tcl2+
).Xil/red_pitaya_ps_1_wrapper_propImpl.xdcZ1-236h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2R
P/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/tcl/xpm_fifo_rst_axis.tcl2+
).Xil/red_pitaya_ps_1_wrapper_propImpl.xdcZ1-236h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2M
K/data/Xilinx/Vivado/Vivado/2023.2/data/ip/xpm/xpm_fifo/tcl/xpm_fifo_rst.tcl2+
).Xil/red_pitaya_ps_1_wrapper_propImpl.xdcZ1-236h px� 
[
2%s XPM XDC files have been applied to the design.
665*project2
13Z1-1714h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002
00:00:00.012

2433.4022
0.0002
85752
17677Z17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2i
g  A total of 13 instances were transformed.
  FDR => FDRE: 12 instances
  SRL16 => SRL16E: 1 instance 
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2
00:00:00.092
00:00:00.092

2433.4382
0.0002
85752
17677Z17-722h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:22 ; elapsed = 00:00:25 . Memory (MB): peak = 2433.438 ; gain = 790.188 ; free physical = 8576 ; free virtual = 17678
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7z010clg400-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:22 ; elapsed = 00:00:25 . Memory (MB): peak = 2433.438 ; gain = 790.188 ; free physical = 8576 ; free virtual = 17679
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:22 ; elapsed = 00:00:25 . Memory (MB): peak = 2433.438 ; gain = 790.188 ; free physical = 8576 ; free virtual = 17679
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
t
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
slave_attachmentZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2 
gaxi_full_sm.present_state_reg2
axi_write_fsmZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2 
gaxi_full_sm.present_state_reg2
axi_read_fsmZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
gen_fwft.curr_fwft_state_reg2
xpm_fifo_baseZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
gen_fwft.curr_fwft_state_reg2
xpm_fifo_base__parameterized0Z8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2 
gen_rst_ic.curr_wrst_state_reg2
xpm_fifo_rst__parameterized0Z8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2 
gen_rst_ic.curr_rrst_state_reg2
xpm_fifo_rst__parameterized0Z8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
gen_fwft.curr_fwft_state_reg2
xpm_fifo_base__parameterized1Z8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2"
 slave_attachment__parameterized0Z8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2 
gaxi_full_sm.present_state_reg2
axi_read_fsm__parameterized0Z8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
gen_fwft.curr_fwft_state_reg2
xpm_fifo_base__parameterized2Z8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2/
-axi_protocol_converter_v2_1_29_b2s_wr_cmd_fsmZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2/
-axi_protocol_converter_v2_1_29_b2s_rd_cmd_fsmZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2)
'axi_data_fifo_v2_1_28_axic_reg_srl_fifoZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
gen_axi.write_cs_reg2#
!axi_crossbar_v2_1_30_decerr_slaveZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 sm_idle |                             0010 |                               00
h p
x
� 
y
%s
*synth2a
_                 sm_read |                             1000 |                               01
h p
x
� 
y
%s
*synth2a
_                sm_write |                             0100 |                               10
h p
x
� 
y
%s
*synth2a
_                 sm_resp |                             0001 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2	
one-hot2
slave_attachmentZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_             wait_wraddr |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_                   os_wr |                               01 |                               10
h p
x
� 
y
%s
*synth2a
_              reg_wraddr |                               10 |                               01
h p
x
� 
y
%s
*synth2a
_                  wr_mem |                               11 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2 
gaxi_full_sm.present_state_reg2

sequential2
axi_write_fsmZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_             wait_rdaddr |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_                  rd_mem |                               01 |                               11
h p
x
� 
y
%s
*synth2a
_              reg_rdaddr |                               10 |                               01
h p
x
� 
y
%s
*synth2a
_                   os_rd |                               11 |                               10
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2 
gaxi_full_sm.present_state_reg2

sequential2
axi_read_fsmZ8-3354h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 invalid |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_            stage1_valid |                               01 |                               10
h p
x
� 
y
%s
*synth2a
_       both_stages_valid |                               10 |                               11
h p
x
� 
y
%s
*synth2a
_            stage2_valid |                               11 |                               01
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
gen_fwft.curr_fwft_state_reg2

sequential2
xpm_fifo_baseZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 invalid |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_            stage1_valid |                               01 |                               10
h p
x
� 
y
%s
*synth2a
_       both_stages_valid |                               10 |                               11
h p
x
� 
y
%s
*synth2a
_            stage2_valid |                               11 |                               01
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
gen_fwft.curr_fwft_state_reg2

sequential2
xpm_fifo_base__parameterized0Z8-3354h px� 
�
BImplemented safe state '%s' for state register '%s' in module '%s'4006*oasys2
default_state2 
gen_rst_ic.curr_wrst_state_reg2
xpm_fifo_rst__parameterized0Z8-5552h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 

%s
*synth2
*
h p
x
� 
y
%s
*synth2a
_               WRST_IDLE |                            00001 |                              000
h p
x
� 
y
%s
*synth2a
_                 WRST_IN |                            00010 |                              010
h p
x
� 
y
%s
*synth2a
_                WRST_OUT |                            00100 |                              111
h p
x
� 
y
%s
*synth2a
_               WRST_EXIT |                            01000 |                              110
h p
x
� 
y
%s
*synth2a
_            WRST_GO2IDLE |                            10000 |                              100
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2 
gen_rst_ic.curr_wrst_state_reg2	
one-hot2
xpm_fifo_rst__parameterized0Z8-3354h px� 
�
BImplemented safe state '%s' for state register '%s' in module '%s'4006*oasys2
default_state2 
gen_rst_ic.curr_rrst_state_reg2
xpm_fifo_rst__parameterized0Z8-5552h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 

%s
*synth2
*
h p
x
� 
y
%s
*synth2a
_               RRST_IDLE |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_                 RRST_IN |                               01 |                               10
h p
x
� 
y
%s
*synth2a
_                RRST_OUT |                               10 |                               11
h p
x
� 
y
%s
*synth2a
_               RRST_EXIT |                               11 |                               01
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2 
gen_rst_ic.curr_rrst_state_reg2

sequential2
xpm_fifo_rst__parameterized0Z8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 invalid |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_            stage1_valid |                               01 |                               10
h p
x
� 
y
%s
*synth2a
_       both_stages_valid |                               10 |                               11
h p
x
� 
y
%s
*synth2a
_            stage2_valid |                               11 |                               01
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
gen_fwft.curr_fwft_state_reg2

sequential2
xpm_fifo_base__parameterized1Z8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 sm_idle |                             0010 |                               00
h p
x
� 
y
%s
*synth2a
_                 sm_read |                             1000 |                               01
h p
x
� 
y
%s
*synth2a
_                sm_write |                             0100 |                               10
h p
x
� 
y
%s
*synth2a
_                 sm_resp |                             0001 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2	
one-hot2"
 slave_attachment__parameterized0Z8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_             wait_rdaddr |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_                  rd_mem |                               01 |                               11
h p
x
� 
y
%s
*synth2a
_              reg_rdaddr |                               10 |                               01
h p
x
� 
y
%s
*synth2a
_                   os_rd |                               11 |                               10
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2 
gaxi_full_sm.present_state_reg2

sequential2
axi_read_fsm__parameterized0Z8-3354h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 invalid |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_            stage1_valid |                               01 |                               10
h p
x
� 
y
%s
*synth2a
_       both_stages_valid |                               10 |                               11
h p
x
� 
y
%s
*synth2a
_            stage2_valid |                               11 |                               01
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
gen_fwft.curr_fwft_state_reg2

sequential2
xpm_fifo_base__parameterized2Z8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 SM_IDLE |                               01 |                               00
h p
x
� 
y
%s
*synth2a
_               SM_CMD_EN |                               11 |                               01
h p
x
� 
y
%s
*synth2a
_         SM_CMD_ACCEPTED |                               10 |                               10
h p
x
� 
y
%s
*synth2a
_            SM_DONE_WAIT |                               00 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2

sequential2/
-axi_protocol_converter_v2_1_29_b2s_wr_cmd_fsmZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 SM_IDLE |                               01 |                               00
h p
x
� 
y
%s
*synth2a
_               SM_CMD_EN |                               11 |                               01
h p
x
� 
y
%s
*synth2a
_         SM_CMD_ACCEPTED |                               10 |                               10
h p
x
� 
y
%s
*synth2a
_                 SM_DONE |                               00 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2

sequential2/
-axi_protocol_converter_v2_1_29_b2s_rd_cmd_fsmZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    ZERO |                             1000 |                               10
h p
x
� 
y
%s
*synth2a
_                     ONE |                             0010 |                               11
h p
x
� 
y
%s
*synth2a
_                     TWO |                             0001 |                               01
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                             0100 |                               00
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2	
one-hot2)
'axi_data_fifo_v2_1_28_axic_reg_srl_fifoZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_            P_WRITE_IDLE |                              001 |                               00
h p
x
� 
y
%s
*synth2a
_            P_WRITE_DATA |                              010 |                               01
h p
x
� 
y
%s
*synth2a
_            P_WRITE_RESP |                              100 |                               10
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
gen_axi.write_cs_reg2	
one-hot2#
!axi_crossbar_v2_1_30_decerr_slaveZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:26 ; elapsed = 00:00:29 . Memory (MB): peak = 2433.438 ; gain = 790.188 ; free physical = 8578 ; free virtual = 17681
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   31 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   22 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input   16 Bit       Adders := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   15 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input   15 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   3 Input   15 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input   14 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input   13 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input   12 Bit       Adders := 32    
h p
x
� 
F
%s
*synth2.
,	   4 Input   10 Bit       Adders := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    9 Bit       Adders := 11    
h p
x
� 
F
%s
*synth2.
,	   4 Input    9 Bit       Adders := 5     
h p
x
� 
F
%s
*synth2.
,	   3 Input    9 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 13    
h p
x
� 
F
%s
*synth2.
,	   4 Input    6 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   4 Input    5 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit       Adders := 16    
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 60    
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 15    
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit       Adders := 19    
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit       Adders := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit       Adders := 2     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input      6 Bit         XORs := 2     
h p
x
� 
H
%s
*synth20
.	   2 Input      5 Bit         XORs := 2     
h p
x
� 
H
%s
*synth20
.	   2 Input      1 Bit         XORs := 43    
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               75 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	               73 Bit    Registers := 16    
h p
x
� 
H
%s
*synth20
.	               53 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	               47 Bit    Registers := 24    
h p
x
� 
H
%s
*synth20
.	               33 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 10    
h p
x
� 
H
%s
*synth20
.	               22 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	               17 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	               15 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	               14 Bit    Registers := 23    
h p
x
� 
H
%s
*synth20
.	               13 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	               12 Bit    Registers := 58    
h p
x
� 
H
%s
*synth20
.	               11 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	               10 Bit    Registers := 6     
h p
x
� 
H
%s
*synth20
.	                9 Bit    Registers := 23    
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 15    
h p
x
� 
H
%s
*synth20
.	                7 Bit    Registers := 6     
h p
x
� 
H
%s
*synth20
.	                6 Bit    Registers := 13    
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 27    
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 47    
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 18    
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 66    
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 373   
h p
x
� 
&
%s
*synth2
+---RAMs : 
h p
x
� 
Z
%s
*synth2B
@	            1696K Bit	(32768 X 53 bit)          RAMs := 1     
h p
x
� 
X
%s
*synth2@
>	              26K Bit	(512 X 53 bit)          RAMs := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   73 Bit        Muxes := 16    
h p
x
� 
F
%s
*synth2.
,	   2 Input   72 Bit        Muxes := 16    
h p
x
� 
F
%s
*synth2.
,	   2 Input   64 Bit        Muxes := 16    
h p
x
� 
F
%s
*synth2.
,	   2 Input   47 Bit        Muxes := 24    
h p
x
� 
F
%s
*synth2.
,	   2 Input   33 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 35    
h p
x
� 
F
%s
*synth2.
,	  12 Input   32 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   22 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   3 Input   22 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   17 Bit        Muxes := 21    
h p
x
� 
F
%s
*synth2.
,	   3 Input   17 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  11 Input   17 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	   2 Input   15 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   14 Bit        Muxes := 9     
h p
x
� 
F
%s
*synth2.
,	   2 Input   12 Bit        Muxes := 24    
h p
x
� 
F
%s
*synth2.
,	   2 Input   11 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   3 Input   11 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    9 Bit        Muxes := 21    
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 9     
h p
x
� 
F
%s
*synth2.
,	   2 Input    7 Bit        Muxes := 15    
h p
x
� 
F
%s
*synth2.
,	   6 Input    7 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   7 Input    6 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 25    
h p
x
� 
F
%s
*synth2.
,	   6 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 100   
h p
x
� 
F
%s
*synth2.
,	   3 Input    4 Bit        Muxes := 17    
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 282   
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit        Muxes := 52    
h p
x
� 
F
%s
*synth2.
,	   5 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 420   
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 20    
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 25    
h p
x
� 
F
%s
*synth2.
,	  11 Input    1 Bit        Muxes := 10    
h p
x
� 
F
%s
*synth2.
,	  12 Input    1 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	  17 Input    1 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   6 Input    1 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 3     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 80 (col length:40)
BRAMs: 120 (col length: RAMB18 40 RAMB36 20)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2>
<U0/gaxif.COMP_AXI4/axi_wr_fsm/gaxi_bid_gen.axi_bid_array_regZ8-6014h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2M
Kinst/gen_axilite.gen_b2s_conv.axilite_b2s/SI_REG/aw.aw_pipe/m_payload_i_reg2
732
652�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
17268@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2M
Kinst/gen_axilite.gen_b2s_conv.axilite_b2s/SI_REG/ar.ar_pipe/m_payload_i_reg2
732
652�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
17268@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2M
Kinst/gen_axilite.gen_b2s_conv.axilite_b2s/SI_REG/aw.aw_pipe/m_payload_i_reg2
732
652�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
17268@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2M
Kinst/gen_axilite.gen_b2s_conv.axilite_b2s/SI_REG/ar.ar_pipe/m_payload_i_reg2
732
652�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
17268@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2M
Kinst/gen_axilite.gen_b2s_conv.axilite_b2s/SI_REG/aw.aw_pipe/m_payload_i_reg2
732
652�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
17268@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2M
Kinst/gen_axilite.gen_b2s_conv.axilite_b2s/SI_REG/ar.ar_pipe/m_payload_i_reg2
732
652�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
17268@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2M
Kinst/gen_axilite.gen_b2s_conv.axilite_b2s/SI_REG/aw.aw_pipe/m_payload_i_reg2
732
652�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
17268@Z8-3936h px�
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2M
Kinst/gen_axilite.gen_b2s_conv.axilite_b2s/SI_REG/ar.ar_pipe/m_payload_i_reg2
732
652�
~/data/devel/redpitaya/vivado/adc_dac/prova.gen/sources_1/bd/red_pitaya_ps_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v2
17268@Z8-3936h px�
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
iOptimized %s bits of RAM "%s" due to constant propagation. Old ram width %s bits, new ram width %s bits.
4187*oasys2
122"
 gen_wr_a.gen_word_narrow.mem_reg2
532
41Z8-5784h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2[
YU0/gaxif.COMP_AXI4/axi_wr_fsm/axi_wr_fsm/FSM_sequential_gaxi_full_sm.present_state_reg[1]2
red_pitaya_ps_1_data_fifo_0Z8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2[
YU0/gaxif.COMP_AXI4/axi_wr_fsm/axi_wr_fsm/FSM_sequential_gaxi_full_sm.present_state_reg[0]2
red_pitaya_ps_1_data_fifo_0Z8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
'wrouter_aw_fifo/FSM_onehot_state_reg[2]2#
!axi_crossbar_v2_1_30_wdata_routerZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2k
iEXT_LPF/ACTIVE_LOW_EXT.ACT_LO_EXT/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d52
proc_sys_resetZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2k
iEXT_LPF/ACTIVE_LOW_EXT.ACT_LO_EXT/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d62
proc_sys_resetZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2f
dEXT_LPF/ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to2
proc_sys_resetZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2k
iEXT_LPF/ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d22
proc_sys_resetZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2k
iEXT_LPF/ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d32
proc_sys_resetZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2k
iEXT_LPF/ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d42
proc_sys_resetZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2k
iEXT_LPF/ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d52
proc_sys_resetZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2k
iEXT_LPF/ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d62
proc_sys_resetZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	FDRE_inst2
proc_sys_resetZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
BSR_OUT_DFF[0].FDRE_BSR2
proc_sys_resetZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
PR_OUT_DFF[0].FDRE_PER2
proc_sys_resetZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:44 ; elapsed = 00:00:47 . Memory (MB): peak = 2433.438 ; gain = 790.188 ; free physical = 8566 ; free virtual = 17669
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
R
%s*synth2:
8
Block RAM: Preliminary Mapping Report (see note below)
h px� 
�
%s*synth2�
�+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h px� 
�
%s*synth2�
�|Module Name                                                                                                                                                        | RTL Object                       | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
h px� 
�
%s*synth2�
�+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h px� 
�
%s*synth2�
�|red_pitaya_ps_1_i/adc_data_fifo/\U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst   | gen_wr_a.gen_word_narrow.mem_reg | 32 K x 53(NO_CHANGE)   | W |   | 32 K x 53(NO_CHANGE)   |   | R | Port A and B     | 0      | 53     | 
h px� 
�
%s*synth2�
�|red_pitaya_ps_1_i/dac_data_fifo/\U0/COMP_IPIC2AXI_S/gtxd.COMP_TXD_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | 512 x 53(NO_CHANGE)    | W |   | 512 x 53(NO_CHANGE)    |   | R | Port A and B     | 0      | 1      | 
h px� 
�
%s*synth2�
�+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
h px� 
X
%s*synth2@
>
Distributed RAM: Preliminary Mapping Report (see note below)
h px� 
�
%s*synth2�
�+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+----------------+----------------------+----------------+
h px� 
�
%s*synth2�
�|Module Name                                                                                                                                                                               | RTL Object                                                   | Inference      | Size (Depth x Width) | Primitives     | 
h px� 
�
%s*synth2�
�+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+----------------+----------------------+----------------+
h px� 
�
%s*synth2�
�|red_pitaya_ps_1_i/adc_data_fifo/\U0/COMP_IPIC2AXI_S/grxd.COMP_rx_len_fifo /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst                                                            | gen_wr_a.gen_word_narrow.mem_reg                             | User Attribute | 8 K x 22             | RAM64M x 1024  | 
h px� 
�
%s*synth2�
�|red_pitaya_ps_1_i/axis_clock_converter_0/\inst/gen_async_conv.axisc_async_clock_converter_0/xpm_fifo_async_inst /\gnuram_async_fifo.xpm_fifo_base_inst /\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg                             | User Attribute | 32 x 32              | RAM32M x 6     | 
h px� 
�
%s*synth2�
�|red_pitaya_ps_1_i/dac_data_fifo                                                                                                                                                           | U0/gaxif.COMP_AXI4/axi_wr_fsm/gaxi_bid_gen.axi_bid_array_reg | Implied        | 4 x 12               | RAM32M x 2     | 
h px� 
�
%s*synth2�
�+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+----------------+----------------------+----------------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:49 ; elapsed = 00:00:52 . Memory (MB): peak = 2433.438 ; gain = 790.188 ; free physical = 8566 ; free virtual = 17669
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:52 ; elapsed = 00:00:56 . Memory (MB): peak = 2442.996 ; gain = 799.746 ; free physical = 8524 ; free virtual = 17627
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!
Block RAM: Final Mapping Report
h p
x
� 
�
%s
*synth2�
�+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h p
x
� 
�
%s
*synth2�
�|Module Name                                                                                                                                                        | RTL Object                       | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
h p
x
� 
�
%s
*synth2�
�+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h p
x
� 
�
%s
*synth2�
�|red_pitaya_ps_1_i/adc_data_fifo/\U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst   | gen_wr_a.gen_word_narrow.mem_reg | 32 K x 53(NO_CHANGE)   | W |   | 32 K x 53(NO_CHANGE)   |   | R | Port A and B     | 0      | 53     | 
h p
x
� 
�
%s
*synth2�
�|red_pitaya_ps_1_i/dac_data_fifo/\U0/COMP_IPIC2AXI_S/gtxd.COMP_TXD_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | 512 x 53(NO_CHANGE)    | W |   | 512 x 53(NO_CHANGE)    |   | R | Port A and B     | 0      | 1      | 
h p
x
� 
�
%s
*synth2�
�+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

h p
x
� 
A
%s
*synth2)
'
Distributed RAM: Final Mapping Report
h p
x
� 
�
%s
*synth2�
�+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+----------------+----------------------+----------------+
h p
x
� 
�
%s
*synth2�
�|Module Name                                                                                                                                                                               | RTL Object                                                   | Inference      | Size (Depth x Width) | Primitives     | 
h p
x
� 
�
%s
*synth2�
�+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+----------------+----------------------+----------------+
h p
x
� 
�
%s
*synth2�
�|red_pitaya_ps_1_i/adc_data_fifo/\U0/COMP_IPIC2AXI_S/grxd.COMP_rx_len_fifo /xpm_fifo_base_inst/\gen_sdpram.xpm_memory_base_inst                                                            | gen_wr_a.gen_word_narrow.mem_reg                             | User Attribute | 8 K x 22             | RAM64M x 1024  | 
h p
x
� 
�
%s
*synth2�
�|red_pitaya_ps_1_i/axis_clock_converter_0/\inst/gen_async_conv.axisc_async_clock_converter_0/xpm_fifo_async_inst /\gnuram_async_fifo.xpm_fifo_base_inst /\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg                             | User Attribute | 32 x 32              | RAM32M x 6     | 
h p
x
� 
�
%s
*synth2�
�|red_pitaya_ps_1_i/dac_data_fifo                                                                                                                                                           | U0/gaxif.COMP_AXI4/axi_wr_fsm/gaxi_bid_gen.axi_bid_array_reg | Implied        | 4 x 12               | RAM32M x 2     | 
h p
x
� 
�
%s
*synth2�
�+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+----------------+----------------------+----------------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�red_pitaya_ps_1_i/adc_data_fifo/U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_322
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�red_pitaya_ps_1_i/adc_data_fifo/U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_332
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�red_pitaya_ps_1_i/adc_data_fifo/U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_342
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�red_pitaya_ps_1_i/adc_data_fifo/U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_352
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�red_pitaya_ps_1_i/adc_data_fifo/U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_362
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�red_pitaya_ps_1_i/adc_data_fifo/U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_372
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�red_pitaya_ps_1_i/adc_data_fifo/U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_382
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�red_pitaya_ps_1_i/adc_data_fifo/U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_392
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�red_pitaya_ps_1_i/adc_data_fifo/U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_402
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�red_pitaya_ps_1_i/adc_data_fifo/U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_412
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�red_pitaya_ps_1_i/adc_data_fifo/U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_422
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�red_pitaya_ps_1_i/adc_data_fifo/U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_432
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�red_pitaya_ps_1_i/adc_data_fifo/U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_442
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�red_pitaya_ps_1_i/adc_data_fifo/U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_452
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�red_pitaya_ps_1_i/adc_data_fifo/U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_462
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�red_pitaya_ps_1_i/adc_data_fifo/U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_472
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�red_pitaya_ps_1_i/adc_data_fifo/U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_482
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�red_pitaya_ps_1_i/adc_data_fifo/U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_492
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�red_pitaya_ps_1_i/adc_data_fifo/U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_502
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�red_pitaya_ps_1_i/adc_data_fifo/U0/COMP_IPIC2AXI_S/grxd.COMP_RX_FIFO/gfifo_gen.COMP_AXIS_FG_FIFO/COMP_FIFO/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_0_512
BlockZ8-7052h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:57 ; elapsed = 00:01:01 . Memory (MB): peak = 2451.004 ; gain = 807.754 ; free physical = 8516 ; free virtual = 17618
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:01:01 ; elapsed = 00:01:05 . Memory (MB): peak = 2451.004 ; gain = 807.754 ; free physical = 8515 ; free virtual = 17618
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:01 ; elapsed = 00:01:05 . Memory (MB): peak = 2451.004 ; gain = 807.754 ; free physical = 8515 ; free virtual = 17618
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:02 ; elapsed = 00:01:06 . Memory (MB): peak = 2451.004 ; gain = 807.754 ; free physical = 8515 ; free virtual = 17618
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:02 ; elapsed = 00:01:06 . Memory (MB): peak = 2451.004 ; gain = 807.754 ; free physical = 8515 ; free virtual = 17618
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:02 ; elapsed = 00:01:06 . Memory (MB): peak = 2451.004 ; gain = 807.754 ; free physical = 8515 ; free virtual = 17618
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:02 ; elapsed = 00:01:06 . Memory (MB): peak = 2451.004 ; gain = 807.754 ; free physical = 8515 ; free virtual = 17618
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 
Dynamic Shift Register Report:
h p
x
� 
~
%s
*synth2f
d+------------+----------------+--------+------------+--------+---------+--------+--------+--------+
h p
x
� 

%s
*synth2g
e|Module Name | RTL Name       | Length | Data Width | SRL16E | SRLC32E | Mux F7 | Mux F8 | Mux F9 | 
h p
x
� 
~
%s
*synth2f
d+------------+----------------+--------+------------+--------+---------+--------+--------+--------+
h p
x
� 

%s
*synth2g
e|dsrl        | memory_reg[3]  | 20     | 20         | 20     | 0       | 0      | 0      | 0      | 
h p
x
� 

%s
*synth2g
e|dsrl__1     | memory_reg[3]  | 2      | 2          | 2      | 0       | 0      | 0      | 0      | 
h p
x
� 

%s
*synth2g
e|dsrl__2     | memory_reg[31] | 34     | 34         | 0      | 34      | 0      | 0      | 0      | 
h p
x
� 

%s
*synth2g
e|dsrl__3     | memory_reg[31] | 13     | 13         | 0      | 13      | 0      | 0      | 0      | 
h p
x
� 

%s
*synth2g
e+------------+----------------+--------+------------+--------+---------+--------+--------+--------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|      |Cell     |Count |
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|1     |BIBUF    |   130|
h px� 
4
%s*synth2
|2     |BUFG     |     2|
h px� 
4
%s*synth2
|3     |CARRY4   |   218|
h px� 
4
%s*synth2
|4     |LUT1     |   164|
h px� 
4
%s*synth2
|5     |LUT2     |   334|
h px� 
4
%s*synth2
|6     |LUT3     |  1093|
h px� 
4
%s*synth2
|7     |LUT4     |   522|
h px� 
4
%s*synth2
|8     |LUT5     |   513|
h px� 
4
%s*synth2
|9     |LUT6     |  1762|
h px� 
4
%s*synth2
|10    |MUXF7    |   402|
h px� 
4
%s*synth2
|11    |MUXF8    |   222|
h px� 
4
%s*synth2
|12    |PS7      |     1|
h px� 
4
%s*synth2
|13    |RAM32M   |     7|
h px� 
4
%s*synth2
|14    |RAM32X1D |     2|
h px� 
4
%s*synth2
|15    |RAM64M   |   896|
h px� 
4
%s*synth2
|16    |RAMB36E1 |    54|
h px� 
4
%s*synth2
|19    |SRL16    |     1|
h px� 
4
%s*synth2
|20    |SRL16E   |    81|
h px� 
4
%s*synth2
|21    |SRLC32E  |   179|
h px� 
4
%s*synth2
|22    |FDR      |     4|
h px� 
4
%s*synth2
|23    |FDRE     |  6499|
h px� 
4
%s*synth2
|24    |FDSE     |   135|
h px� 
4
%s*synth2
|25    |IBUF     |    28|
h px� 
4
%s*synth2
|26    |IBUFDS   |     1|
h px� 
4
%s*synth2
|27    |OBUF     |    19|
h px� 
4
%s*synth2
+------+---------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:02 ; elapsed = 00:01:06 . Memory (MB): peak = 2451.004 ; gain = 807.754 ; free physical = 8515 ; free virtual = 17618
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
b
%s
*synth2J
HSynthesis finished with 0 errors, 0 critical warnings and 965 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:57 ; elapsed = 00:01:00 . Memory (MB): peak = 2451.004 ; gain = 725.875 ; free physical = 8515 ; free virtual = 17618
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:01:02 ; elapsed = 00:01:06 . Memory (MB): peak = 2451.012 ; gain = 807.754 ; free physical = 8515 ; free virtual = 17618
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.182
00:00:00.192

2451.0122
0.0002
88012
17904Z17-722h px� 
V
-Analyzing %s Unisim elements for replacement
17*netlist2
1807Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
o
!Found multi-term driver net: %s.
512*netlist2(
&red_pitaya_ps_1_i/clock_in/U0/<const0>Z29-1115h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002
00:00:00.012

2494.8952
0.0002
88002
17903Z17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 910 instances were transformed.
  FDR => FDRE: 4 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 7 instances
  RAM32X1D => RAM32X1D (RAMD32(x2)): 2 instances
  RAM64M => RAM64M (RAMD64E(x4)): 896 instances
  SRL16 => SRL16E: 1 instance 
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

abc0ac41Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
4742
3832
162
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:01:122

00:01:152

2494.9302

1162.0472
88002
17902Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1956.688; main = 1638.185; forked = 338.978Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2>
<(MB): overall = 3434.160; main = 2494.898; forked = 1000.676Z17-2834h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.082
00:00:00.032

2518.9062
0.0002
88002
17902Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2W
U/data/devel/redpitaya/vivado/adc_dac/adc_dac.runs/synth_1/red_pitaya_ps_1_wrapper.dcpZ17-1381h px� 
�
%s4*runtcl2�
�Executing : report_utilization -file red_pitaya_ps_1_wrapper_utilization_synth.rpt -pb red_pitaya_ps_1_wrapper_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Mon Mar 31 15:46:30 2025Z17-206h px� 


End Record