// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri Feb 28 11:16:30 2020
// Host        : spilds.rfx.local running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top red_pitaya_ps_1_axis_packetizer_0_0 -prefix
//               red_pitaya_ps_1_axis_packetizer_0_0_ red_pitaya_ps_1_axis_packetizer_1_0_sim_netlist.v
// Design      : red_pitaya_ps_1_axis_packetizer_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module red_pitaya_ps_1_axis_packetizer_0_0_axis_packetizer
   (m_axis_tlast,
    m_axis_tvalid,
    s_axis_tready,
    m_axis_tready,
    s_axis_tvalid,
    aresetn,
    aclk,
    cfg_data);
  output m_axis_tlast;
  output m_axis_tvalid;
  output s_axis_tready;
  input m_axis_tready;
  input s_axis_tvalid;
  input aresetn;
  input aclk;
  input [31:0]cfg_data;

  wire aclk;
  wire aresetn;
  wire [31:0]cfg_data;
  wire int_cntr_reg03_out;
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
  wire int_enbl_reg;
  wire int_enbl_reg_i_1_n_0;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [3:3]\NLW_int_cntr_reg_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_int_comp_wire_carry_O_UNCONNECTED;
  wire [3:0]NLW_int_comp_wire_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_int_comp_wire_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_int_comp_wire_carry__2_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h4000FFFF)) 
    \int_cntr_reg[0]_i_1 
       (.I0(int_comp_wire),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(int_enbl_reg),
        .I4(aresetn),
        .O(\int_cntr_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \int_cntr_reg[0]_i_2 
       (.I0(int_enbl_reg),
        .I1(s_axis_tvalid),
        .I2(m_axis_tready),
        .I3(int_comp_wire),
        .O(int_cntr_reg03_out));
  LUT1 #(
    .INIT(2'h1)) 
    \int_cntr_reg[0]_i_4 
       (.I0(int_cntr_reg_reg[0]),
        .O(\int_cntr_reg[0]_i_4_n_0 ));
  FDRE \int_cntr_reg_reg[0] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
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
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[8]_i_1_n_5 ),
        .Q(int_cntr_reg_reg[10]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[11] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[8]_i_1_n_4 ),
        .Q(int_cntr_reg_reg[11]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[12] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
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
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[12]_i_1_n_6 ),
        .Q(int_cntr_reg_reg[13]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[14] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[12]_i_1_n_5 ),
        .Q(int_cntr_reg_reg[14]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[15] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[12]_i_1_n_4 ),
        .Q(int_cntr_reg_reg[15]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[16] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
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
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[16]_i_1_n_6 ),
        .Q(int_cntr_reg_reg[17]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[18] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[16]_i_1_n_5 ),
        .Q(int_cntr_reg_reg[18]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[19] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[16]_i_1_n_4 ),
        .Q(int_cntr_reg_reg[19]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[1] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[0]_i_3_n_6 ),
        .Q(int_cntr_reg_reg[1]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[20] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
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
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[20]_i_1_n_6 ),
        .Q(int_cntr_reg_reg[21]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[22] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[20]_i_1_n_5 ),
        .Q(int_cntr_reg_reg[22]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[23] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[20]_i_1_n_4 ),
        .Q(int_cntr_reg_reg[23]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[24] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
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
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[24]_i_1_n_6 ),
        .Q(int_cntr_reg_reg[25]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[26] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[24]_i_1_n_5 ),
        .Q(int_cntr_reg_reg[26]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[27] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[24]_i_1_n_4 ),
        .Q(int_cntr_reg_reg[27]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[28] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
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
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[28]_i_1_n_6 ),
        .Q(int_cntr_reg_reg[29]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[2] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[0]_i_3_n_5 ),
        .Q(int_cntr_reg_reg[2]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[30] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[28]_i_1_n_5 ),
        .Q(int_cntr_reg_reg[30]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[31] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[28]_i_1_n_4 ),
        .Q(int_cntr_reg_reg[31]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[3] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[0]_i_3_n_4 ),
        .Q(int_cntr_reg_reg[3]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[4] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
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
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[4]_i_1_n_6 ),
        .Q(int_cntr_reg_reg[5]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[6] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[4]_i_1_n_5 ),
        .Q(int_cntr_reg_reg[6]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[7] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
        .D(\int_cntr_reg_reg[4]_i_1_n_4 ),
        .Q(int_cntr_reg_reg[7]),
        .R(\int_cntr_reg[0]_i_1_n_0 ));
  FDRE \int_cntr_reg_reg[8] 
       (.C(aclk),
        .CE(int_cntr_reg03_out),
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
        .CE(int_cntr_reg03_out),
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    int_enbl_reg_i_1
       (.I0(aresetn),
        .I1(int_enbl_reg),
        .I2(int_comp_wire),
        .O(int_enbl_reg_i_1_n_0));
  FDRE int_enbl_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(int_enbl_reg_i_1_n_0),
        .Q(int_enbl_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axis_tlast_INST_0
       (.I0(int_enbl_reg),
        .I1(int_comp_wire),
        .O(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tvalid_INST_0
       (.I0(int_enbl_reg),
        .I1(s_axis_tvalid),
        .O(m_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    s_axis_tready_INST_0
       (.I0(int_enbl_reg),
        .I1(m_axis_tready),
        .O(s_axis_tready));
endmodule

(* CHECK_LICENSE_TYPE = "red_pitaya_ps_1_axis_packetizer_1_0,axis_packetizer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_packetizer,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module red_pitaya_ps_1_axis_packetizer_0_0
   (aclk,
    aresetn,
    cfg_data,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF M_AXIS:S_AXIS, ASSOCIATED_RESET aresetn, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN red_pitaya_ps_1_red_pitaya_ps_0_FCLK_CLK0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *) input aresetn;
  input [31:0]cfg_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN red_pitaya_ps_1_red_pitaya_ps_0_FCLK_CLK0, LAYERED_METADATA undef" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN red_pitaya_ps_1_red_pitaya_ps_0_FCLK_CLK0, LAYERED_METADATA undef" *) output m_axis_tlast;

  wire aclk;
  wire aresetn;
  wire [31:0]cfg_data;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign m_axis_tdata[31:0] = s_axis_tdata;
  red_pitaya_ps_1_axis_packetizer_0_0_axis_packetizer inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .cfg_data(cfg_data),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
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
