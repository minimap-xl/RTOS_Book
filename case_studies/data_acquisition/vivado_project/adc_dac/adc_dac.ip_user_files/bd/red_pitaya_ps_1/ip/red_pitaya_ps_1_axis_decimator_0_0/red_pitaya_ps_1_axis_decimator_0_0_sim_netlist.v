// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri Feb 28 11:16:29 2020
// Host        : spilds.rfx.local running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/mdsplus/devel/anacleto/projects/rfx_nioadc/edit/red_pitaya/rfx_nioadc_freq_0.1.srcs/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_decimator_0_0/red_pitaya_ps_1_axis_decimator_0_0_sim_netlist.v
// Design      : red_pitaya_ps_1_axis_decimator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "red_pitaya_ps_1_axis_decimator_0_0,axis_decimator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_decimator,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module red_pitaya_ps_1_axis_decimator_0_0
   (aclk,
    aresetn,
    cfg_data,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF M_AXIS:S_AXIS, ASSOCIATED_RESET aresetn, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN red_pitaya_ps_1_red_pitaya_ps_0_FCLK_CLK0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *) input aresetn;
  input [31:0]cfg_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN red_pitaya_ps_1_red_pitaya_ps_0_FCLK_CLK0, LAYERED_METADATA undef" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN red_pitaya_ps_1_red_pitaya_ps_0_FCLK_CLK0, LAYERED_METADATA undef" *) output m_axis_tvalid;

  wire aclk;
  wire aresetn;
  wire [31:0]cfg_data;
  wire [31:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  red_pitaya_ps_1_axis_decimator_0_0_axis_decimator inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .cfg_data(cfg_data),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_decimator" *) 
module red_pitaya_ps_1_axis_decimator_0_0_axis_decimator
   (s_axis_tready,
    m_axis_tdata,
    m_axis_tvalid,
    s_axis_tvalid,
    aresetn,
    s_axis_tdata,
    aclk,
    m_axis_tready,
    cfg_data);
  output s_axis_tready;
  output [31:0]m_axis_tdata;
  output m_axis_tvalid;
  input s_axis_tvalid;
  input aresetn;
  input [31:0]s_axis_tdata;
  input aclk;
  input m_axis_tready;
  input [31:0]cfg_data;

  wire aclk;
  wire aresetn;
  wire [31:0]cfg_data;
  wire int_cntr_reg0;
  wire \int_cntr_reg[0]_i_1_n_0 ;
  wire \int_cntr_reg[0]_i_4_n_0 ;
  wire [31:0]int_cntr_reg_reg;
  wire \int_cntr_reg_reg[0]_i_3_n_0 ;
  wire \int_cntr_reg_reg[0]_i_3_n_1 ;
  wire \int_cntr_reg_reg[0]_i_3_n_2 ;
  wire \int_cntr_reg_reg[0]_i_3_n_3 ;
  wire \int_cntr_reg_reg[0]_i_3_n_4 ;
  wire \int_cntr_reg_reg[0]_i_3_n_5 ;
  wire \int_cntr_reg_reg[0]_i_3_n_6 ;
  wire \int_cntr_reg_reg[0]_i_3_n_7 ;
  wire \int_cntr_reg_reg[12]_i_1_n_0 ;
  wire \int_cntr_reg_reg[12]_i_1_n_1 ;
  wire \int_cntr_reg_reg[12]_i_1_n_2 ;
  wire \int_cntr_reg_reg[12]_i_1_n_3 ;
  wire \int_cntr_reg_reg[12]_i_1_n_4 ;
  wire \int_cntr_reg_reg[12]_i_1_n_5 ;
  wire \int_cntr_reg_reg[12]_i_1_n_6 ;
  wire \int_cntr_reg_reg[12]_i_1_n_7 ;
  wire \int_cntr_reg_reg[16]_i_1_n_0 ;
  wire \int_cntr_reg_reg[16]_i_1_n_1 ;
  wire \int_cntr_reg_reg[16]_i_1_n_2 ;
  wire \int_cntr_reg_reg[16]_i_1_n_3 ;
  wire \int_cntr_reg_reg[16]_i_1_n_4 ;
  wire \int_cntr_reg_reg[16]_i_1_n_5 ;
  wire \int_cntr_reg_reg[16]_i_1_n_6 ;
  wire \int_cntr_reg_reg[16]_i_1_n_7 ;
  wire \int_cntr_reg_reg[20]_i_1_n_0 ;
  wire \int_cntr_reg_reg[20]_i_1_n_1 ;
  wire \int_cntr_reg_reg[20]_i_1_n_2 ;
  wire \int_cntr_reg_reg[20]_i_1_n_3 ;
  wire \int_cntr_reg_reg[20]_i_1_n_4 ;
  wire \int_cntr_reg_reg[20]_i_1_n_5 ;
  wire \int_cntr_reg_reg[20]_i_1_n_6 ;
  wire \int_cntr_reg_reg[20]_i_1_n_7 ;
  wire \int_cntr_reg_reg[24]_i_1_n_0 ;
  wire \int_cntr_reg_reg[24]_i_1_n_1 ;
  wire \int_cntr_reg_reg[24]_i_1_n_2 ;
  wire \int_cntr_reg_reg[24]_i_1_n_3 ;
  wire \int_cntr_reg_reg[24]_i_1_n_4 ;
  wire \int_cntr_reg_reg[24]_i_1_n_5 ;
  wire \int_cntr_reg_reg[24]_i_1_n_6 ;
  wire \int_cntr_reg_reg[24]_i_1_n_7 ;
  wire \int_cntr_reg_reg[28]_i_1_n_1 ;
  wire \int_cntr_reg_reg[28]_i_1_n_2 ;
  wire \int_cntr_reg_reg[28]_i_1_n_3 ;
  wire \int_cntr_reg_reg[28]_i_1_n_4 ;
  wire \int_cntr_reg_reg[28]_i_1_n_5 ;
  wire \int_cntr_reg_reg[28]_i_1_n_6 ;
  wire \int_cntr_reg_reg[28]_i_1_n_7 ;
  wire \int_cntr_reg_reg[4]_i_1_n_0 ;
  wire \int_cntr_reg_reg[4]_i_1_n_1 ;
  wire \int_cntr_reg_reg[4]_i_1_n_2 ;
  wire \int_cntr_reg_reg[4]_i_1_n_3 ;
  wire \int_cntr_reg_reg[4]_i_1_n_4 ;
  wire \int_cntr_reg_reg[4]_i_1_n_5 ;
  wire \int_cntr_reg_reg[4]_i_1_n_6 ;
  wire \int_cntr_reg_reg[4]_i_1_n_7 ;
  wire \int_cntr_reg_reg[8]_i_1_n_0 ;
  wire \int_cntr_reg_reg[8]_i_1_n_1 ;
  wire \int_cntr_reg_reg[8]_i_1_n_2 ;
  wire \int_cntr_reg_reg[8]_i_1_n_3 ;
  wire \int_cntr_reg_reg[8]_i_1_n_4 ;
  wire \int_cntr_reg_reg[8]_i_1_n_5 ;
  wire \int_cntr_reg_reg[8]_i_1_n_6 ;
  wire \int_cntr_reg_reg[8]_i_1_n_7 ;
  wire int_comp_wire;
  wire int_comp_wire_carry__0_i_1_n_0;
  wire int_comp_wire_carry__0_i_2_n_0;
  wire int_comp_wire_carry__0_i_3_n_0;
  wire int_comp_wire_carry__0_i_4_n_0;
  wire int_comp_wire_carry__0_i_5_n_0;
  wire int_comp_wire_carry__0_i_6_n_0;
  wire int_comp_wire_carry__0_i_7_n_0;
  wire int_comp_wire_carry__0_i_8_n_0;
  wire int_comp_wire_carry__0_n_0;
  wire int_comp_wire_carry__0_n_1;
  wire int_comp_wire_carry__0_n_2;
  wire int_comp_wire_carry__0_n_3;
  wire int_comp_wire_carry__1_i_1_n_0;
  wire int_comp_wire_carry__1_i_2_n_0;
  wire int_comp_wire_carry__1_i_3_n_0;
  wire int_comp_wire_carry__1_i_4_n_0;
  wire int_comp_wire_carry__1_i_5_n_0;
  wire int_comp_wire_carry__1_i_6_n_0;
  wire int_comp_wire_carry__1_i_7_n_0;
  wire int_comp_wire_carry__1_i_8_n_0;
  wire int_comp_wire_carry__1_n_0;
  wire int_comp_wire_carry__1_n_1;
  wire int_comp_wire_carry__1_n_2;
  wire int_comp_wire_carry__1_n_3;
  wire int_comp_wire_carry__2_i_1_n_0;
  wire int_comp_wire_carry__2_i_2_n_0;
  wire int_comp_wire_carry__2_i_3_n_0;
  wire int_comp_wire_carry__2_i_4_n_0;
  wire int_comp_wire_carry__2_i_5_n_0;
  wire int_comp_wire_carry__2_i_6_n_0;
  wire int_comp_wire_carry__2_i_7_n_0;
  wire int_comp_wire_carry__2_i_8_n_0;
  wire int_comp_wire_carry__2_n_1;
  wire int_comp_wire_carry__2_n_2;
  wire int_comp_wire_carry__2_n_3;
  wire int_comp_wire_carry_i_1_n_0;
  wire int_comp_wire_carry_i_2_n_0;
  wire int_comp_wire_carry_i_3_n_0;
  wire int_comp_wire_carry_i_4_n_0;
  wire int_comp_wire_carry_i_5_n_0;
  wire int_comp_wire_carry_i_6_n_0;
  wire int_comp_wire_carry_i_7_n_0;
  wire int_comp_wire_carry_i_8_n_0;
  wire int_comp_wire_carry_n_0;
  wire int_comp_wire_carry_n_1;
  wire int_comp_wire_carry_n_2;
  wire int_comp_wire_carry_n_3;
  wire \int_tdata_reg[31]_i_2_n_0 ;
  wire int_tready_reg_i_1_n_0;
  wire int_tvalid_reg_i_1_n_0;
  wire [31:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire p_0_in;
  wire [31:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [3:3]\NLW_int_cntr_reg_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_int_comp_wire_carry_O_UNCONNECTED;
  wire [3:0]NLW_int_comp_wire_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_int_comp_wire_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_int_comp_wire_carry__2_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h40FF)) 
    \int_cntr_reg[0]_i_1 
       (.I0(int_comp_wire),
        .I1(s_axis_tready),
        .I2(s_axis_tvalid),
        .I3(aresetn),
        .O(\int_cntr_reg[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \int_cntr_reg[0]_i_2 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tready),
        .I2(int_comp_wire),
        .O(int_cntr_reg0));
  LUT1 #(
    .INIT(2'h1)) 
    \int_cntr_reg[0]_i_4 
       (.I0(int_cntr_reg_reg[0]),
        .O(\int_cntr_reg[0]_i_4_n_0 ));
  FDRE \int_cntr_reg_reg[0] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[0]_i_3_n_7 ),
        .Q(int_cntr_reg_reg[0]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  CARRY4 \int_cntr_reg_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\int_cntr_reg_reg[0]_i_3_n_0 ,\int_cntr_reg_reg[0]_i_3_n_1 ,\int_cntr_reg_reg[0]_i_3_n_2 ,\int_cntr_reg_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\int_cntr_reg_reg[0]_i_3_n_4 ,\int_cntr_reg_reg[0]_i_3_n_5 ,\int_cntr_reg_reg[0]_i_3_n_6 ,\int_cntr_reg_reg[0]_i_3_n_7 }),
        .S({int_cntr_reg_reg[3:1],\int_cntr_reg[0]_i_4_n_0 }));
  FDRE \int_cntr_reg_reg[10] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[8]_i_1_n_5 ),
        .Q(int_cntr_reg_reg[10]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[11] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[8]_i_1_n_4 ),
        .Q(int_cntr_reg_reg[11]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[12] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[12]_i_1_n_7 ),
        .Q(int_cntr_reg_reg[12]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  CARRY4 \int_cntr_reg_reg[12]_i_1 
       (.CI(\int_cntr_reg_reg[8]_i_1_n_0 ),
        .CO({\int_cntr_reg_reg[12]_i_1_n_0 ,\int_cntr_reg_reg[12]_i_1_n_1 ,\int_cntr_reg_reg[12]_i_1_n_2 ,\int_cntr_reg_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\int_cntr_reg_reg[12]_i_1_n_4 ,\int_cntr_reg_reg[12]_i_1_n_5 ,\int_cntr_reg_reg[12]_i_1_n_6 ,\int_cntr_reg_reg[12]_i_1_n_7 }),
        .S(int_cntr_reg_reg[15:12]));
  FDRE \int_cntr_reg_reg[13] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[12]_i_1_n_6 ),
        .Q(int_cntr_reg_reg[13]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[14] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[12]_i_1_n_5 ),
        .Q(int_cntr_reg_reg[14]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[15] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[12]_i_1_n_4 ),
        .Q(int_cntr_reg_reg[15]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[16] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[16]_i_1_n_7 ),
        .Q(int_cntr_reg_reg[16]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  CARRY4 \int_cntr_reg_reg[16]_i_1 
       (.CI(\int_cntr_reg_reg[12]_i_1_n_0 ),
        .CO({\int_cntr_reg_reg[16]_i_1_n_0 ,\int_cntr_reg_reg[16]_i_1_n_1 ,\int_cntr_reg_reg[16]_i_1_n_2 ,\int_cntr_reg_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\int_cntr_reg_reg[16]_i_1_n_4 ,\int_cntr_reg_reg[16]_i_1_n_5 ,\int_cntr_reg_reg[16]_i_1_n_6 ,\int_cntr_reg_reg[16]_i_1_n_7 }),
        .S(int_cntr_reg_reg[19:16]));
  FDRE \int_cntr_reg_reg[17] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[16]_i_1_n_6 ),
        .Q(int_cntr_reg_reg[17]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[18] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[16]_i_1_n_5 ),
        .Q(int_cntr_reg_reg[18]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[19] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[16]_i_1_n_4 ),
        .Q(int_cntr_reg_reg[19]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[1] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[0]_i_3_n_6 ),
        .Q(int_cntr_reg_reg[1]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[20] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[20]_i_1_n_7 ),
        .Q(int_cntr_reg_reg[20]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  CARRY4 \int_cntr_reg_reg[20]_i_1 
       (.CI(\int_cntr_reg_reg[16]_i_1_n_0 ),
        .CO({\int_cntr_reg_reg[20]_i_1_n_0 ,\int_cntr_reg_reg[20]_i_1_n_1 ,\int_cntr_reg_reg[20]_i_1_n_2 ,\int_cntr_reg_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\int_cntr_reg_reg[20]_i_1_n_4 ,\int_cntr_reg_reg[20]_i_1_n_5 ,\int_cntr_reg_reg[20]_i_1_n_6 ,\int_cntr_reg_reg[20]_i_1_n_7 }),
        .S(int_cntr_reg_reg[23:20]));
  FDRE \int_cntr_reg_reg[21] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[20]_i_1_n_6 ),
        .Q(int_cntr_reg_reg[21]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[22] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[20]_i_1_n_5 ),
        .Q(int_cntr_reg_reg[22]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[23] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[20]_i_1_n_4 ),
        .Q(int_cntr_reg_reg[23]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[24] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[24]_i_1_n_7 ),
        .Q(int_cntr_reg_reg[24]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  CARRY4 \int_cntr_reg_reg[24]_i_1 
       (.CI(\int_cntr_reg_reg[20]_i_1_n_0 ),
        .CO({\int_cntr_reg_reg[24]_i_1_n_0 ,\int_cntr_reg_reg[24]_i_1_n_1 ,\int_cntr_reg_reg[24]_i_1_n_2 ,\int_cntr_reg_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\int_cntr_reg_reg[24]_i_1_n_4 ,\int_cntr_reg_reg[24]_i_1_n_5 ,\int_cntr_reg_reg[24]_i_1_n_6 ,\int_cntr_reg_reg[24]_i_1_n_7 }),
        .S(int_cntr_reg_reg[27:24]));
  FDRE \int_cntr_reg_reg[25] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[24]_i_1_n_6 ),
        .Q(int_cntr_reg_reg[25]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[26] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[24]_i_1_n_5 ),
        .Q(int_cntr_reg_reg[26]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[27] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[24]_i_1_n_4 ),
        .Q(int_cntr_reg_reg[27]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[28] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[28]_i_1_n_7 ),
        .Q(int_cntr_reg_reg[28]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  CARRY4 \int_cntr_reg_reg[28]_i_1 
       (.CI(\int_cntr_reg_reg[24]_i_1_n_0 ),
        .CO({\NLW_int_cntr_reg_reg[28]_i_1_CO_UNCONNECTED [3],\int_cntr_reg_reg[28]_i_1_n_1 ,\int_cntr_reg_reg[28]_i_1_n_2 ,\int_cntr_reg_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\int_cntr_reg_reg[28]_i_1_n_4 ,\int_cntr_reg_reg[28]_i_1_n_5 ,\int_cntr_reg_reg[28]_i_1_n_6 ,\int_cntr_reg_reg[28]_i_1_n_7 }),
        .S(int_cntr_reg_reg[31:28]));
  FDRE \int_cntr_reg_reg[29] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[28]_i_1_n_6 ),
        .Q(int_cntr_reg_reg[29]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[2] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[0]_i_3_n_5 ),
        .Q(int_cntr_reg_reg[2]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[30] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[28]_i_1_n_5 ),
        .Q(int_cntr_reg_reg[30]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[31] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[28]_i_1_n_4 ),
        .Q(int_cntr_reg_reg[31]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[3] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[0]_i_3_n_4 ),
        .Q(int_cntr_reg_reg[3]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[4] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[4]_i_1_n_7 ),
        .Q(int_cntr_reg_reg[4]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  CARRY4 \int_cntr_reg_reg[4]_i_1 
       (.CI(\int_cntr_reg_reg[0]_i_3_n_0 ),
        .CO({\int_cntr_reg_reg[4]_i_1_n_0 ,\int_cntr_reg_reg[4]_i_1_n_1 ,\int_cntr_reg_reg[4]_i_1_n_2 ,\int_cntr_reg_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\int_cntr_reg_reg[4]_i_1_n_4 ,\int_cntr_reg_reg[4]_i_1_n_5 ,\int_cntr_reg_reg[4]_i_1_n_6 ,\int_cntr_reg_reg[4]_i_1_n_7 }),
        .S(int_cntr_reg_reg[7:4]));
  FDRE \int_cntr_reg_reg[5] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[4]_i_1_n_6 ),
        .Q(int_cntr_reg_reg[5]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[6] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[4]_i_1_n_5 ),
        .Q(int_cntr_reg_reg[6]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[7] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[4]_i_1_n_4 ),
        .Q(int_cntr_reg_reg[7]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[8] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[8]_i_1_n_7 ),
        .Q(int_cntr_reg_reg[8]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  CARRY4 \int_cntr_reg_reg[8]_i_1 
       (.CI(\int_cntr_reg_reg[4]_i_1_n_0 ),
        .CO({\int_cntr_reg_reg[8]_i_1_n_0 ,\int_cntr_reg_reg[8]_i_1_n_1 ,\int_cntr_reg_reg[8]_i_1_n_2 ,\int_cntr_reg_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\int_cntr_reg_reg[8]_i_1_n_4 ,\int_cntr_reg_reg[8]_i_1_n_5 ,\int_cntr_reg_reg[8]_i_1_n_6 ,\int_cntr_reg_reg[8]_i_1_n_7 }),
        .S(int_cntr_reg_reg[11:8]));
  FDRE \int_cntr_reg_reg[9] 
       (.C(aclk),
        .CE(int_cntr_reg0),
        .D(\int_cntr_reg_reg[8]_i_1_n_6 ),
        .Q(int_cntr_reg_reg[9]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  CARRY4 int_comp_wire_carry
       (.CI(1'b0),
        .CO({int_comp_wire_carry_n_0,int_comp_wire_carry_n_1,int_comp_wire_carry_n_2,int_comp_wire_carry_n_3}),
        .CYINIT(1'b0),
        .DI({int_comp_wire_carry_i_1_n_0,int_comp_wire_carry_i_2_n_0,int_comp_wire_carry_i_3_n_0,int_comp_wire_carry_i_4_n_0}),
        .O(NLW_int_comp_wire_carry_O_UNCONNECTED[3:0]),
        .S({int_comp_wire_carry_i_5_n_0,int_comp_wire_carry_i_6_n_0,int_comp_wire_carry_i_7_n_0,int_comp_wire_carry_i_8_n_0}));
  CARRY4 int_comp_wire_carry__0
       (.CI(int_comp_wire_carry_n_0),
        .CO({int_comp_wire_carry__0_n_0,int_comp_wire_carry__0_n_1,int_comp_wire_carry__0_n_2,int_comp_wire_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({int_comp_wire_carry__0_i_1_n_0,int_comp_wire_carry__0_i_2_n_0,int_comp_wire_carry__0_i_3_n_0,int_comp_wire_carry__0_i_4_n_0}),
        .O(NLW_int_comp_wire_carry__0_O_UNCONNECTED[3:0]),
        .S({int_comp_wire_carry__0_i_5_n_0,int_comp_wire_carry__0_i_6_n_0,int_comp_wire_carry__0_i_7_n_0,int_comp_wire_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    int_comp_wire_carry__0_i_1
       (.I0(cfg_data[14]),
        .I1(int_cntr_reg_reg[14]),
        .I2(int_cntr_reg_reg[15]),
        .I3(cfg_data[15]),
        .O(int_comp_wire_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    int_comp_wire_carry__0_i_2
       (.I0(cfg_data[12]),
        .I1(int_cntr_reg_reg[12]),
        .I2(int_cntr_reg_reg[13]),
        .I3(cfg_data[13]),
        .O(int_comp_wire_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    int_comp_wire_carry__0_i_3
       (.I0(cfg_data[10]),
        .I1(int_cntr_reg_reg[10]),
        .I2(int_cntr_reg_reg[11]),
        .I3(cfg_data[11]),
        .O(int_comp_wire_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    int_comp_wire_carry__0_i_4
       (.I0(cfg_data[8]),
        .I1(int_cntr_reg_reg[8]),
        .I2(int_cntr_reg_reg[9]),
        .I3(cfg_data[9]),
        .O(int_comp_wire_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    int_comp_wire_carry__0_i_5
       (.I0(cfg_data[14]),
        .I1(int_cntr_reg_reg[14]),
        .I2(cfg_data[15]),
        .I3(int_cntr_reg_reg[15]),
        .O(int_comp_wire_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    int_comp_wire_carry__0_i_6
       (.I0(cfg_data[12]),
        .I1(int_cntr_reg_reg[12]),
        .I2(cfg_data[13]),
        .I3(int_cntr_reg_reg[13]),
        .O(int_comp_wire_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    int_comp_wire_carry__0_i_7
       (.I0(cfg_data[10]),
        .I1(int_cntr_reg_reg[10]),
        .I2(cfg_data[11]),
        .I3(int_cntr_reg_reg[11]),
        .O(int_comp_wire_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    int_comp_wire_carry__0_i_8
       (.I0(cfg_data[8]),
        .I1(int_cntr_reg_reg[8]),
        .I2(cfg_data[9]),
        .I3(int_cntr_reg_reg[9]),
        .O(int_comp_wire_carry__0_i_8_n_0));
  CARRY4 int_comp_wire_carry__1
       (.CI(int_comp_wire_carry__0_n_0),
        .CO({int_comp_wire_carry__1_n_0,int_comp_wire_carry__1_n_1,int_comp_wire_carry__1_n_2,int_comp_wire_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({int_comp_wire_carry__1_i_1_n_0,int_comp_wire_carry__1_i_2_n_0,int_comp_wire_carry__1_i_3_n_0,int_comp_wire_carry__1_i_4_n_0}),
        .O(NLW_int_comp_wire_carry__1_O_UNCONNECTED[3:0]),
        .S({int_comp_wire_carry__1_i_5_n_0,int_comp_wire_carry__1_i_6_n_0,int_comp_wire_carry__1_i_7_n_0,int_comp_wire_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    int_comp_wire_carry__1_i_1
       (.I0(cfg_data[22]),
        .I1(int_cntr_reg_reg[22]),
        .I2(int_cntr_reg_reg[23]),
        .I3(cfg_data[23]),
        .O(int_comp_wire_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    int_comp_wire_carry__1_i_2
       (.I0(cfg_data[20]),
        .I1(int_cntr_reg_reg[20]),
        .I2(int_cntr_reg_reg[21]),
        .I3(cfg_data[21]),
        .O(int_comp_wire_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    int_comp_wire_carry__1_i_3
       (.I0(cfg_data[18]),
        .I1(int_cntr_reg_reg[18]),
        .I2(int_cntr_reg_reg[19]),
        .I3(cfg_data[19]),
        .O(int_comp_wire_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    int_comp_wire_carry__1_i_4
       (.I0(cfg_data[16]),
        .I1(int_cntr_reg_reg[16]),
        .I2(int_cntr_reg_reg[17]),
        .I3(cfg_data[17]),
        .O(int_comp_wire_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    int_comp_wire_carry__1_i_5
       (.I0(cfg_data[22]),
        .I1(int_cntr_reg_reg[22]),
        .I2(cfg_data[23]),
        .I3(int_cntr_reg_reg[23]),
        .O(int_comp_wire_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    int_comp_wire_carry__1_i_6
       (.I0(cfg_data[20]),
        .I1(int_cntr_reg_reg[20]),
        .I2(cfg_data[21]),
        .I3(int_cntr_reg_reg[21]),
        .O(int_comp_wire_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    int_comp_wire_carry__1_i_7
       (.I0(cfg_data[18]),
        .I1(int_cntr_reg_reg[18]),
        .I2(cfg_data[19]),
        .I3(int_cntr_reg_reg[19]),
        .O(int_comp_wire_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    int_comp_wire_carry__1_i_8
       (.I0(cfg_data[16]),
        .I1(int_cntr_reg_reg[16]),
        .I2(cfg_data[17]),
        .I3(int_cntr_reg_reg[17]),
        .O(int_comp_wire_carry__1_i_8_n_0));
  CARRY4 int_comp_wire_carry__2
       (.CI(int_comp_wire_carry__1_n_0),
        .CO({int_comp_wire,int_comp_wire_carry__2_n_1,int_comp_wire_carry__2_n_2,int_comp_wire_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({int_comp_wire_carry__2_i_1_n_0,int_comp_wire_carry__2_i_2_n_0,int_comp_wire_carry__2_i_3_n_0,int_comp_wire_carry__2_i_4_n_0}),
        .O(NLW_int_comp_wire_carry__2_O_UNCONNECTED[3:0]),
        .S({int_comp_wire_carry__2_i_5_n_0,int_comp_wire_carry__2_i_6_n_0,int_comp_wire_carry__2_i_7_n_0,int_comp_wire_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    int_comp_wire_carry__2_i_1
       (.I0(cfg_data[30]),
        .I1(int_cntr_reg_reg[30]),
        .I2(int_cntr_reg_reg[31]),
        .I3(cfg_data[31]),
        .O(int_comp_wire_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    int_comp_wire_carry__2_i_2
       (.I0(cfg_data[28]),
        .I1(int_cntr_reg_reg[28]),
        .I2(int_cntr_reg_reg[29]),
        .I3(cfg_data[29]),
        .O(int_comp_wire_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    int_comp_wire_carry__2_i_3
       (.I0(cfg_data[26]),
        .I1(int_cntr_reg_reg[26]),
        .I2(int_cntr_reg_reg[27]),
        .I3(cfg_data[27]),
        .O(int_comp_wire_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    int_comp_wire_carry__2_i_4
       (.I0(cfg_data[24]),
        .I1(int_cntr_reg_reg[24]),
        .I2(int_cntr_reg_reg[25]),
        .I3(cfg_data[25]),
        .O(int_comp_wire_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    int_comp_wire_carry__2_i_5
       (.I0(cfg_data[30]),
        .I1(int_cntr_reg_reg[30]),
        .I2(cfg_data[31]),
        .I3(int_cntr_reg_reg[31]),
        .O(int_comp_wire_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    int_comp_wire_carry__2_i_6
       (.I0(cfg_data[28]),
        .I1(int_cntr_reg_reg[28]),
        .I2(cfg_data[29]),
        .I3(int_cntr_reg_reg[29]),
        .O(int_comp_wire_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    int_comp_wire_carry__2_i_7
       (.I0(cfg_data[26]),
        .I1(int_cntr_reg_reg[26]),
        .I2(cfg_data[27]),
        .I3(int_cntr_reg_reg[27]),
        .O(int_comp_wire_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    int_comp_wire_carry__2_i_8
       (.I0(cfg_data[24]),
        .I1(int_cntr_reg_reg[24]),
        .I2(cfg_data[25]),
        .I3(int_cntr_reg_reg[25]),
        .O(int_comp_wire_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    int_comp_wire_carry_i_1
       (.I0(cfg_data[6]),
        .I1(int_cntr_reg_reg[6]),
        .I2(int_cntr_reg_reg[7]),
        .I3(cfg_data[7]),
        .O(int_comp_wire_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    int_comp_wire_carry_i_2
       (.I0(cfg_data[4]),
        .I1(int_cntr_reg_reg[4]),
        .I2(int_cntr_reg_reg[5]),
        .I3(cfg_data[5]),
        .O(int_comp_wire_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    int_comp_wire_carry_i_3
       (.I0(cfg_data[2]),
        .I1(int_cntr_reg_reg[2]),
        .I2(int_cntr_reg_reg[3]),
        .I3(cfg_data[3]),
        .O(int_comp_wire_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    int_comp_wire_carry_i_4
       (.I0(cfg_data[0]),
        .I1(int_cntr_reg_reg[0]),
        .I2(int_cntr_reg_reg[1]),
        .I3(cfg_data[1]),
        .O(int_comp_wire_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    int_comp_wire_carry_i_5
       (.I0(cfg_data[6]),
        .I1(int_cntr_reg_reg[6]),
        .I2(cfg_data[7]),
        .I3(int_cntr_reg_reg[7]),
        .O(int_comp_wire_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    int_comp_wire_carry_i_6
       (.I0(cfg_data[4]),
        .I1(int_cntr_reg_reg[4]),
        .I2(cfg_data[5]),
        .I3(int_cntr_reg_reg[5]),
        .O(int_comp_wire_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    int_comp_wire_carry_i_7
       (.I0(cfg_data[2]),
        .I1(int_cntr_reg_reg[2]),
        .I2(cfg_data[3]),
        .I3(int_cntr_reg_reg[3]),
        .O(int_comp_wire_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    int_comp_wire_carry_i_8
       (.I0(cfg_data[0]),
        .I1(int_cntr_reg_reg[0]),
        .I2(cfg_data[1]),
        .I3(int_cntr_reg_reg[1]),
        .O(int_comp_wire_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \int_tdata_reg[31]_i_1 
       (.I0(aresetn),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'h08)) 
    \int_tdata_reg[31]_i_2 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tready),
        .I2(int_comp_wire),
        .O(\int_tdata_reg[31]_i_2_n_0 ));
  FDRE \int_tdata_reg_reg[0] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(m_axis_tdata[0]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[10] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(m_axis_tdata[10]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[11] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(m_axis_tdata[11]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[12] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(m_axis_tdata[12]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[13] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(m_axis_tdata[13]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[14] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(m_axis_tdata[14]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[15] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(m_axis_tdata[15]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[16] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(m_axis_tdata[16]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[17] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(m_axis_tdata[17]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[18] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(m_axis_tdata[18]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[19] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(m_axis_tdata[19]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[1] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(m_axis_tdata[1]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[20] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(m_axis_tdata[20]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[21] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(m_axis_tdata[21]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[22] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(m_axis_tdata[22]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[23] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(m_axis_tdata[23]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[24] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(m_axis_tdata[24]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[25] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(m_axis_tdata[25]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[26] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(m_axis_tdata[26]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[27] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(m_axis_tdata[27]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[28] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(m_axis_tdata[28]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[29] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(m_axis_tdata[29]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[2] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(m_axis_tdata[2]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[30] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(m_axis_tdata[30]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[31] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(m_axis_tdata[31]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[3] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(m_axis_tdata[3]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[4] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(m_axis_tdata[4]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[5] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(m_axis_tdata[5]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[6] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(m_axis_tdata[6]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[7] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(m_axis_tdata[7]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[8] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(m_axis_tdata[8]),
        .R(p_0_in));
  FDRE \int_tdata_reg_reg[9] 
       (.C(aclk),
        .CE(\int_tdata_reg[31]_i_2_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(m_axis_tdata[9]),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'hE0)) 
    int_tready_reg_i_1
       (.I0(s_axis_tready),
        .I1(int_comp_wire),
        .I2(aresetn),
        .O(int_tready_reg_i_1_n_0));
  FDRE int_tready_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(int_tready_reg_i_1_n_0),
        .Q(s_axis_tready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000FF0008000800)) 
    int_tvalid_reg_i_1
       (.I0(s_axis_tvalid),
        .I1(s_axis_tready),
        .I2(int_comp_wire),
        .I3(aresetn),
        .I4(m_axis_tready),
        .I5(m_axis_tvalid),
        .O(int_tvalid_reg_i_1_n_0));
  FDRE int_tvalid_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(int_tvalid_reg_i_1_n_0),
        .Q(m_axis_tvalid),
        .R(1'b0));
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
