// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri Feb 28 11:16:26 2020
// Host        : spilds.rfx.local running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/mdsplus/devel/anacleto/projects/rfx_nioadc/edit/red_pitaya/rfx_nioadc_freq_0.1.srcs/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_red_pitaya_adc_0_0/red_pitaya_ps_1_axis_red_pitaya_adc_0_0_sim_netlist.v
// Design      : red_pitaya_ps_1_axis_red_pitaya_adc_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "red_pitaya_ps_1_axis_red_pitaya_adc_0_0,axis_red_pitaya_adc,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_red_pitaya_adc,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module red_pitaya_ps_1_axis_red_pitaya_adc_0_0
   (aclk,
    adc_csn,
    adc_dat_a,
    adc_dat_b,
    m_axis_tvalid,
    m_axis_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF M_AXIS, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN red_pitaya_ps_1_red_pitaya_ps_0_FCLK_CLK0" *) input aclk;
  output adc_csn;
  input [13:0]adc_dat_a;
  input [13:0]adc_dat_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN red_pitaya_ps_1_red_pitaya_ps_0_FCLK_CLK0, LAYERED_METADATA undef" *) output [31:0]m_axis_tdata;

  wire \<const1> ;
  wire aclk;
  wire [13:0]adc_dat_a;
  wire [13:0]adc_dat_b;
  wire [29:0]\^m_axis_tdata ;

  assign adc_csn = \<const1> ;
  assign m_axis_tdata[31] = \^m_axis_tdata [29];
  assign m_axis_tdata[30] = \^m_axis_tdata [29];
  assign m_axis_tdata[29:16] = \^m_axis_tdata [29:16];
  assign m_axis_tdata[15] = \^m_axis_tdata [13];
  assign m_axis_tdata[14] = \^m_axis_tdata [13];
  assign m_axis_tdata[13:0] = \^m_axis_tdata [13:0];
  assign m_axis_tvalid = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  red_pitaya_ps_1_axis_red_pitaya_adc_0_0_axis_red_pitaya_adc inst
       (.aclk(aclk),
        .adc_dat_a(adc_dat_a),
        .adc_dat_b(adc_dat_b),
        .m_axis_tdata({\^m_axis_tdata [29:16],\^m_axis_tdata [13:0]}));
endmodule

(* ORIG_REF_NAME = "axis_red_pitaya_adc" *) 
module red_pitaya_ps_1_axis_red_pitaya_adc_0_0_axis_red_pitaya_adc
   (m_axis_tdata,
    adc_dat_a,
    aclk,
    adc_dat_b);
  output [27:0]m_axis_tdata;
  input [13:0]adc_dat_a;
  input aclk;
  input [13:0]adc_dat_b;

  wire aclk;
  wire [13:0]adc_dat_a;
  wire [13:0]adc_dat_b;
  wire \int_dat_a_reg_reg_n_0_[0] ;
  wire \int_dat_a_reg_reg_n_0_[10] ;
  wire \int_dat_a_reg_reg_n_0_[11] ;
  wire \int_dat_a_reg_reg_n_0_[12] ;
  wire \int_dat_a_reg_reg_n_0_[1] ;
  wire \int_dat_a_reg_reg_n_0_[2] ;
  wire \int_dat_a_reg_reg_n_0_[3] ;
  wire \int_dat_a_reg_reg_n_0_[4] ;
  wire \int_dat_a_reg_reg_n_0_[5] ;
  wire \int_dat_a_reg_reg_n_0_[6] ;
  wire \int_dat_a_reg_reg_n_0_[7] ;
  wire \int_dat_a_reg_reg_n_0_[8] ;
  wire \int_dat_a_reg_reg_n_0_[9] ;
  wire \int_dat_b_reg_reg_n_0_[0] ;
  wire \int_dat_b_reg_reg_n_0_[10] ;
  wire \int_dat_b_reg_reg_n_0_[11] ;
  wire \int_dat_b_reg_reg_n_0_[12] ;
  wire \int_dat_b_reg_reg_n_0_[1] ;
  wire \int_dat_b_reg_reg_n_0_[2] ;
  wire \int_dat_b_reg_reg_n_0_[3] ;
  wire \int_dat_b_reg_reg_n_0_[4] ;
  wire \int_dat_b_reg_reg_n_0_[5] ;
  wire \int_dat_b_reg_reg_n_0_[6] ;
  wire \int_dat_b_reg_reg_n_0_[7] ;
  wire \int_dat_b_reg_reg_n_0_[8] ;
  wire \int_dat_b_reg_reg_n_0_[9] ;
  wire [27:0]m_axis_tdata;

  FDRE \int_dat_a_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_a[0]),
        .Q(\int_dat_a_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_a[10]),
        .Q(\int_dat_a_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_a[11]),
        .Q(\int_dat_a_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_a[12]),
        .Q(\int_dat_a_reg_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_a[13]),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_a[1]),
        .Q(\int_dat_a_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_a[2]),
        .Q(\int_dat_a_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_a[3]),
        .Q(\int_dat_a_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_a[4]),
        .Q(\int_dat_a_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_a[5]),
        .Q(\int_dat_a_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_a[6]),
        .Q(\int_dat_a_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_a[7]),
        .Q(\int_dat_a_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_a[8]),
        .Q(\int_dat_a_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_a[9]),
        .Q(\int_dat_a_reg_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_b[0]),
        .Q(\int_dat_b_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_b[10]),
        .Q(\int_dat_b_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_b[11]),
        .Q(\int_dat_b_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_b[12]),
        .Q(\int_dat_b_reg_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_b[13]),
        .Q(m_axis_tdata[27]),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_b[1]),
        .Q(\int_dat_b_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_b[2]),
        .Q(\int_dat_b_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_b[3]),
        .Q(\int_dat_b_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_b[4]),
        .Q(\int_dat_b_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_b[5]),
        .Q(\int_dat_b_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_b[6]),
        .Q(\int_dat_b_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_b[7]),
        .Q(\int_dat_b_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_b[8]),
        .Q(\int_dat_b_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \int_dat_b_reg_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(adc_dat_b[9]),
        .Q(\int_dat_b_reg_reg_n_0_[9] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(\int_dat_a_reg_reg_n_0_[0] ),
        .O(m_axis_tdata[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(\int_dat_a_reg_reg_n_0_[10] ),
        .O(m_axis_tdata[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(\int_dat_a_reg_reg_n_0_[11] ),
        .O(m_axis_tdata[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(\int_dat_a_reg_reg_n_0_[12] ),
        .O(m_axis_tdata[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(\int_dat_b_reg_reg_n_0_[0] ),
        .O(m_axis_tdata[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(\int_dat_b_reg_reg_n_0_[1] ),
        .O(m_axis_tdata[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(\int_dat_b_reg_reg_n_0_[2] ),
        .O(m_axis_tdata[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(\int_dat_b_reg_reg_n_0_[3] ),
        .O(m_axis_tdata[17]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(\int_dat_a_reg_reg_n_0_[1] ),
        .O(m_axis_tdata[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(\int_dat_b_reg_reg_n_0_[4] ),
        .O(m_axis_tdata[18]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(\int_dat_b_reg_reg_n_0_[5] ),
        .O(m_axis_tdata[19]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(\int_dat_b_reg_reg_n_0_[6] ),
        .O(m_axis_tdata[20]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(\int_dat_b_reg_reg_n_0_[7] ),
        .O(m_axis_tdata[21]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(\int_dat_b_reg_reg_n_0_[8] ),
        .O(m_axis_tdata[22]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(\int_dat_b_reg_reg_n_0_[9] ),
        .O(m_axis_tdata[23]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(\int_dat_b_reg_reg_n_0_[10] ),
        .O(m_axis_tdata[24]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(\int_dat_b_reg_reg_n_0_[11] ),
        .O(m_axis_tdata[25]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(\int_dat_b_reg_reg_n_0_[12] ),
        .O(m_axis_tdata[26]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(\int_dat_a_reg_reg_n_0_[2] ),
        .O(m_axis_tdata[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(\int_dat_a_reg_reg_n_0_[3] ),
        .O(m_axis_tdata[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(\int_dat_a_reg_reg_n_0_[4] ),
        .O(m_axis_tdata[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(\int_dat_a_reg_reg_n_0_[5] ),
        .O(m_axis_tdata[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(\int_dat_a_reg_reg_n_0_[6] ),
        .O(m_axis_tdata[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(\int_dat_a_reg_reg_n_0_[7] ),
        .O(m_axis_tdata[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(\int_dat_a_reg_reg_n_0_[8] ),
        .O(m_axis_tdata[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(\int_dat_a_reg_reg_n_0_[9] ),
        .O(m_axis_tdata[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
