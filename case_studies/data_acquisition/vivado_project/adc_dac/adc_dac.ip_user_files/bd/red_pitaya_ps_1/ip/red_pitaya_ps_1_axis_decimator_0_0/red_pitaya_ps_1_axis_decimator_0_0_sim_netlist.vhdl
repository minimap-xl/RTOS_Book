-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Fri Feb 28 11:16:29 2020
-- Host        : spilds.rfx.local running 64-bit Ubuntu 14.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/mdsplus/devel/anacleto/projects/rfx_nioadc/edit/red_pitaya/rfx_nioadc_freq_0.1.srcs/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_decimator_0_0/red_pitaya_ps_1_axis_decimator_0_0_sim_netlist.vhdl
-- Design      : red_pitaya_ps_1_axis_decimator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity red_pitaya_ps_1_axis_decimator_0_0_axis_decimator is
  port (
    s_axis_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    cfg_data : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of red_pitaya_ps_1_axis_decimator_0_0_axis_decimator : entity is "axis_decimator";
end red_pitaya_ps_1_axis_decimator_0_0_axis_decimator;

architecture STRUCTURE of red_pitaya_ps_1_axis_decimator_0_0_axis_decimator is
  signal int_cntr_reg0 : STD_LOGIC;
  signal \int_cntr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_cntr_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal int_cntr_reg_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \int_cntr_reg_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \int_cntr_reg_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \int_cntr_reg_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \int_cntr_reg_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \int_cntr_reg_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \int_cntr_reg_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \int_cntr_reg_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \int_cntr_reg_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \int_cntr_reg_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \int_cntr_reg_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \int_cntr_reg_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \int_cntr_reg_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \int_cntr_reg_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \int_cntr_reg_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \int_cntr_reg_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \int_cntr_reg_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \int_cntr_reg_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \int_cntr_reg_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \int_cntr_reg_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \int_cntr_reg_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \int_cntr_reg_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \int_cntr_reg_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \int_cntr_reg_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \int_cntr_reg_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \int_cntr_reg_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \int_cntr_reg_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \int_cntr_reg_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \int_cntr_reg_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \int_cntr_reg_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \int_cntr_reg_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \int_cntr_reg_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \int_cntr_reg_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \int_cntr_reg_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \int_cntr_reg_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \int_cntr_reg_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \int_cntr_reg_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \int_cntr_reg_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \int_cntr_reg_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \int_cntr_reg_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \int_cntr_reg_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \int_cntr_reg_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \int_cntr_reg_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \int_cntr_reg_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \int_cntr_reg_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \int_cntr_reg_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \int_cntr_reg_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \int_cntr_reg_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \int_cntr_reg_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \int_cntr_reg_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \int_cntr_reg_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \int_cntr_reg_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \int_cntr_reg_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \int_cntr_reg_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \int_cntr_reg_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \int_cntr_reg_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \int_cntr_reg_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \int_cntr_reg_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \int_cntr_reg_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \int_cntr_reg_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \int_cntr_reg_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \int_cntr_reg_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \int_cntr_reg_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \int_cntr_reg_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal int_comp_wire : STD_LOGIC;
  signal \int_comp_wire_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__0_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__0_n_1\ : STD_LOGIC;
  signal \int_comp_wire_carry__0_n_2\ : STD_LOGIC;
  signal \int_comp_wire_carry__0_n_3\ : STD_LOGIC;
  signal \int_comp_wire_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__1_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__1_n_1\ : STD_LOGIC;
  signal \int_comp_wire_carry__1_n_2\ : STD_LOGIC;
  signal \int_comp_wire_carry__1_n_3\ : STD_LOGIC;
  signal \int_comp_wire_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \int_comp_wire_carry__2_n_1\ : STD_LOGIC;
  signal \int_comp_wire_carry__2_n_2\ : STD_LOGIC;
  signal \int_comp_wire_carry__2_n_3\ : STD_LOGIC;
  signal int_comp_wire_carry_i_1_n_0 : STD_LOGIC;
  signal int_comp_wire_carry_i_2_n_0 : STD_LOGIC;
  signal int_comp_wire_carry_i_3_n_0 : STD_LOGIC;
  signal int_comp_wire_carry_i_4_n_0 : STD_LOGIC;
  signal int_comp_wire_carry_i_5_n_0 : STD_LOGIC;
  signal int_comp_wire_carry_i_6_n_0 : STD_LOGIC;
  signal int_comp_wire_carry_i_7_n_0 : STD_LOGIC;
  signal int_comp_wire_carry_i_8_n_0 : STD_LOGIC;
  signal int_comp_wire_carry_n_0 : STD_LOGIC;
  signal int_comp_wire_carry_n_1 : STD_LOGIC;
  signal int_comp_wire_carry_n_2 : STD_LOGIC;
  signal int_comp_wire_carry_n_3 : STD_LOGIC;
  signal \int_tdata_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal int_tready_reg_i_1_n_0 : STD_LOGIC;
  signal int_tvalid_reg_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \^s_axis_tready\ : STD_LOGIC;
  signal \NLW_int_cntr_reg_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_int_comp_wire_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_int_comp_wire_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_int_comp_wire_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_int_comp_wire_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  m_axis_tvalid <= \^m_axis_tvalid\;
  s_axis_tready <= \^s_axis_tready\;
\int_cntr_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => int_comp_wire,
      I1 => \^s_axis_tready\,
      I2 => s_axis_tvalid,
      I3 => aresetn,
      O => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^s_axis_tready\,
      I2 => int_comp_wire,
      O => int_cntr_reg0
    );
\int_cntr_reg[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => int_cntr_reg_reg(0),
      O => \int_cntr_reg[0]_i_4_n_0\
    );
\int_cntr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[0]_i_3_n_7\,
      Q => int_cntr_reg_reg(0),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \int_cntr_reg_reg[0]_i_3_n_0\,
      CO(2) => \int_cntr_reg_reg[0]_i_3_n_1\,
      CO(1) => \int_cntr_reg_reg[0]_i_3_n_2\,
      CO(0) => \int_cntr_reg_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \int_cntr_reg_reg[0]_i_3_n_4\,
      O(2) => \int_cntr_reg_reg[0]_i_3_n_5\,
      O(1) => \int_cntr_reg_reg[0]_i_3_n_6\,
      O(0) => \int_cntr_reg_reg[0]_i_3_n_7\,
      S(3 downto 1) => int_cntr_reg_reg(3 downto 1),
      S(0) => \int_cntr_reg[0]_i_4_n_0\
    );
\int_cntr_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[8]_i_1_n_5\,
      Q => int_cntr_reg_reg(10),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[8]_i_1_n_4\,
      Q => int_cntr_reg_reg(11),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[12]_i_1_n_7\,
      Q => int_cntr_reg_reg(12),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_cntr_reg_reg[8]_i_1_n_0\,
      CO(3) => \int_cntr_reg_reg[12]_i_1_n_0\,
      CO(2) => \int_cntr_reg_reg[12]_i_1_n_1\,
      CO(1) => \int_cntr_reg_reg[12]_i_1_n_2\,
      CO(0) => \int_cntr_reg_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \int_cntr_reg_reg[12]_i_1_n_4\,
      O(2) => \int_cntr_reg_reg[12]_i_1_n_5\,
      O(1) => \int_cntr_reg_reg[12]_i_1_n_6\,
      O(0) => \int_cntr_reg_reg[12]_i_1_n_7\,
      S(3 downto 0) => int_cntr_reg_reg(15 downto 12)
    );
\int_cntr_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[12]_i_1_n_6\,
      Q => int_cntr_reg_reg(13),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[12]_i_1_n_5\,
      Q => int_cntr_reg_reg(14),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[12]_i_1_n_4\,
      Q => int_cntr_reg_reg(15),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[16]_i_1_n_7\,
      Q => int_cntr_reg_reg(16),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_cntr_reg_reg[12]_i_1_n_0\,
      CO(3) => \int_cntr_reg_reg[16]_i_1_n_0\,
      CO(2) => \int_cntr_reg_reg[16]_i_1_n_1\,
      CO(1) => \int_cntr_reg_reg[16]_i_1_n_2\,
      CO(0) => \int_cntr_reg_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \int_cntr_reg_reg[16]_i_1_n_4\,
      O(2) => \int_cntr_reg_reg[16]_i_1_n_5\,
      O(1) => \int_cntr_reg_reg[16]_i_1_n_6\,
      O(0) => \int_cntr_reg_reg[16]_i_1_n_7\,
      S(3 downto 0) => int_cntr_reg_reg(19 downto 16)
    );
\int_cntr_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[16]_i_1_n_6\,
      Q => int_cntr_reg_reg(17),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[16]_i_1_n_5\,
      Q => int_cntr_reg_reg(18),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[16]_i_1_n_4\,
      Q => int_cntr_reg_reg(19),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[0]_i_3_n_6\,
      Q => int_cntr_reg_reg(1),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[20]_i_1_n_7\,
      Q => int_cntr_reg_reg(20),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_cntr_reg_reg[16]_i_1_n_0\,
      CO(3) => \int_cntr_reg_reg[20]_i_1_n_0\,
      CO(2) => \int_cntr_reg_reg[20]_i_1_n_1\,
      CO(1) => \int_cntr_reg_reg[20]_i_1_n_2\,
      CO(0) => \int_cntr_reg_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \int_cntr_reg_reg[20]_i_1_n_4\,
      O(2) => \int_cntr_reg_reg[20]_i_1_n_5\,
      O(1) => \int_cntr_reg_reg[20]_i_1_n_6\,
      O(0) => \int_cntr_reg_reg[20]_i_1_n_7\,
      S(3 downto 0) => int_cntr_reg_reg(23 downto 20)
    );
\int_cntr_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[20]_i_1_n_6\,
      Q => int_cntr_reg_reg(21),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[20]_i_1_n_5\,
      Q => int_cntr_reg_reg(22),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[20]_i_1_n_4\,
      Q => int_cntr_reg_reg(23),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[24]_i_1_n_7\,
      Q => int_cntr_reg_reg(24),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_cntr_reg_reg[20]_i_1_n_0\,
      CO(3) => \int_cntr_reg_reg[24]_i_1_n_0\,
      CO(2) => \int_cntr_reg_reg[24]_i_1_n_1\,
      CO(1) => \int_cntr_reg_reg[24]_i_1_n_2\,
      CO(0) => \int_cntr_reg_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \int_cntr_reg_reg[24]_i_1_n_4\,
      O(2) => \int_cntr_reg_reg[24]_i_1_n_5\,
      O(1) => \int_cntr_reg_reg[24]_i_1_n_6\,
      O(0) => \int_cntr_reg_reg[24]_i_1_n_7\,
      S(3 downto 0) => int_cntr_reg_reg(27 downto 24)
    );
\int_cntr_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[24]_i_1_n_6\,
      Q => int_cntr_reg_reg(25),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[24]_i_1_n_5\,
      Q => int_cntr_reg_reg(26),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[24]_i_1_n_4\,
      Q => int_cntr_reg_reg(27),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[28]_i_1_n_7\,
      Q => int_cntr_reg_reg(28),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_cntr_reg_reg[24]_i_1_n_0\,
      CO(3) => \NLW_int_cntr_reg_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \int_cntr_reg_reg[28]_i_1_n_1\,
      CO(1) => \int_cntr_reg_reg[28]_i_1_n_2\,
      CO(0) => \int_cntr_reg_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \int_cntr_reg_reg[28]_i_1_n_4\,
      O(2) => \int_cntr_reg_reg[28]_i_1_n_5\,
      O(1) => \int_cntr_reg_reg[28]_i_1_n_6\,
      O(0) => \int_cntr_reg_reg[28]_i_1_n_7\,
      S(3 downto 0) => int_cntr_reg_reg(31 downto 28)
    );
\int_cntr_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[28]_i_1_n_6\,
      Q => int_cntr_reg_reg(29),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[0]_i_3_n_5\,
      Q => int_cntr_reg_reg(2),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[28]_i_1_n_5\,
      Q => int_cntr_reg_reg(30),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[28]_i_1_n_4\,
      Q => int_cntr_reg_reg(31),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[0]_i_3_n_4\,
      Q => int_cntr_reg_reg(3),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[4]_i_1_n_7\,
      Q => int_cntr_reg_reg(4),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_cntr_reg_reg[0]_i_3_n_0\,
      CO(3) => \int_cntr_reg_reg[4]_i_1_n_0\,
      CO(2) => \int_cntr_reg_reg[4]_i_1_n_1\,
      CO(1) => \int_cntr_reg_reg[4]_i_1_n_2\,
      CO(0) => \int_cntr_reg_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \int_cntr_reg_reg[4]_i_1_n_4\,
      O(2) => \int_cntr_reg_reg[4]_i_1_n_5\,
      O(1) => \int_cntr_reg_reg[4]_i_1_n_6\,
      O(0) => \int_cntr_reg_reg[4]_i_1_n_7\,
      S(3 downto 0) => int_cntr_reg_reg(7 downto 4)
    );
\int_cntr_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[4]_i_1_n_6\,
      Q => int_cntr_reg_reg(5),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[4]_i_1_n_5\,
      Q => int_cntr_reg_reg(6),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[4]_i_1_n_4\,
      Q => int_cntr_reg_reg(7),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[8]_i_1_n_7\,
      Q => int_cntr_reg_reg(8),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
\int_cntr_reg_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_cntr_reg_reg[4]_i_1_n_0\,
      CO(3) => \int_cntr_reg_reg[8]_i_1_n_0\,
      CO(2) => \int_cntr_reg_reg[8]_i_1_n_1\,
      CO(1) => \int_cntr_reg_reg[8]_i_1_n_2\,
      CO(0) => \int_cntr_reg_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \int_cntr_reg_reg[8]_i_1_n_4\,
      O(2) => \int_cntr_reg_reg[8]_i_1_n_5\,
      O(1) => \int_cntr_reg_reg[8]_i_1_n_6\,
      O(0) => \int_cntr_reg_reg[8]_i_1_n_7\,
      S(3 downto 0) => int_cntr_reg_reg(11 downto 8)
    );
\int_cntr_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => int_cntr_reg0,
      D => \int_cntr_reg_reg[8]_i_1_n_6\,
      Q => int_cntr_reg_reg(9),
      R => \int_cntr_reg[0]_i_1_n_0\
    );
int_comp_wire_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => int_comp_wire_carry_n_0,
      CO(2) => int_comp_wire_carry_n_1,
      CO(1) => int_comp_wire_carry_n_2,
      CO(0) => int_comp_wire_carry_n_3,
      CYINIT => '0',
      DI(3) => int_comp_wire_carry_i_1_n_0,
      DI(2) => int_comp_wire_carry_i_2_n_0,
      DI(1) => int_comp_wire_carry_i_3_n_0,
      DI(0) => int_comp_wire_carry_i_4_n_0,
      O(3 downto 0) => NLW_int_comp_wire_carry_O_UNCONNECTED(3 downto 0),
      S(3) => int_comp_wire_carry_i_5_n_0,
      S(2) => int_comp_wire_carry_i_6_n_0,
      S(1) => int_comp_wire_carry_i_7_n_0,
      S(0) => int_comp_wire_carry_i_8_n_0
    );
\int_comp_wire_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => int_comp_wire_carry_n_0,
      CO(3) => \int_comp_wire_carry__0_n_0\,
      CO(2) => \int_comp_wire_carry__0_n_1\,
      CO(1) => \int_comp_wire_carry__0_n_2\,
      CO(0) => \int_comp_wire_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \int_comp_wire_carry__0_i_1_n_0\,
      DI(2) => \int_comp_wire_carry__0_i_2_n_0\,
      DI(1) => \int_comp_wire_carry__0_i_3_n_0\,
      DI(0) => \int_comp_wire_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_int_comp_wire_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \int_comp_wire_carry__0_i_5_n_0\,
      S(2) => \int_comp_wire_carry__0_i_6_n_0\,
      S(1) => \int_comp_wire_carry__0_i_7_n_0\,
      S(0) => \int_comp_wire_carry__0_i_8_n_0\
    );
\int_comp_wire_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cfg_data(14),
      I1 => int_cntr_reg_reg(14),
      I2 => int_cntr_reg_reg(15),
      I3 => cfg_data(15),
      O => \int_comp_wire_carry__0_i_1_n_0\
    );
\int_comp_wire_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cfg_data(12),
      I1 => int_cntr_reg_reg(12),
      I2 => int_cntr_reg_reg(13),
      I3 => cfg_data(13),
      O => \int_comp_wire_carry__0_i_2_n_0\
    );
\int_comp_wire_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cfg_data(10),
      I1 => int_cntr_reg_reg(10),
      I2 => int_cntr_reg_reg(11),
      I3 => cfg_data(11),
      O => \int_comp_wire_carry__0_i_3_n_0\
    );
\int_comp_wire_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cfg_data(8),
      I1 => int_cntr_reg_reg(8),
      I2 => int_cntr_reg_reg(9),
      I3 => cfg_data(9),
      O => \int_comp_wire_carry__0_i_4_n_0\
    );
\int_comp_wire_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cfg_data(14),
      I1 => int_cntr_reg_reg(14),
      I2 => cfg_data(15),
      I3 => int_cntr_reg_reg(15),
      O => \int_comp_wire_carry__0_i_5_n_0\
    );
\int_comp_wire_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cfg_data(12),
      I1 => int_cntr_reg_reg(12),
      I2 => cfg_data(13),
      I3 => int_cntr_reg_reg(13),
      O => \int_comp_wire_carry__0_i_6_n_0\
    );
\int_comp_wire_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cfg_data(10),
      I1 => int_cntr_reg_reg(10),
      I2 => cfg_data(11),
      I3 => int_cntr_reg_reg(11),
      O => \int_comp_wire_carry__0_i_7_n_0\
    );
\int_comp_wire_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cfg_data(8),
      I1 => int_cntr_reg_reg(8),
      I2 => cfg_data(9),
      I3 => int_cntr_reg_reg(9),
      O => \int_comp_wire_carry__0_i_8_n_0\
    );
\int_comp_wire_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_comp_wire_carry__0_n_0\,
      CO(3) => \int_comp_wire_carry__1_n_0\,
      CO(2) => \int_comp_wire_carry__1_n_1\,
      CO(1) => \int_comp_wire_carry__1_n_2\,
      CO(0) => \int_comp_wire_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \int_comp_wire_carry__1_i_1_n_0\,
      DI(2) => \int_comp_wire_carry__1_i_2_n_0\,
      DI(1) => \int_comp_wire_carry__1_i_3_n_0\,
      DI(0) => \int_comp_wire_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_int_comp_wire_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \int_comp_wire_carry__1_i_5_n_0\,
      S(2) => \int_comp_wire_carry__1_i_6_n_0\,
      S(1) => \int_comp_wire_carry__1_i_7_n_0\,
      S(0) => \int_comp_wire_carry__1_i_8_n_0\
    );
\int_comp_wire_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cfg_data(22),
      I1 => int_cntr_reg_reg(22),
      I2 => int_cntr_reg_reg(23),
      I3 => cfg_data(23),
      O => \int_comp_wire_carry__1_i_1_n_0\
    );
\int_comp_wire_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cfg_data(20),
      I1 => int_cntr_reg_reg(20),
      I2 => int_cntr_reg_reg(21),
      I3 => cfg_data(21),
      O => \int_comp_wire_carry__1_i_2_n_0\
    );
\int_comp_wire_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cfg_data(18),
      I1 => int_cntr_reg_reg(18),
      I2 => int_cntr_reg_reg(19),
      I3 => cfg_data(19),
      O => \int_comp_wire_carry__1_i_3_n_0\
    );
\int_comp_wire_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cfg_data(16),
      I1 => int_cntr_reg_reg(16),
      I2 => int_cntr_reg_reg(17),
      I3 => cfg_data(17),
      O => \int_comp_wire_carry__1_i_4_n_0\
    );
\int_comp_wire_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cfg_data(22),
      I1 => int_cntr_reg_reg(22),
      I2 => cfg_data(23),
      I3 => int_cntr_reg_reg(23),
      O => \int_comp_wire_carry__1_i_5_n_0\
    );
\int_comp_wire_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cfg_data(20),
      I1 => int_cntr_reg_reg(20),
      I2 => cfg_data(21),
      I3 => int_cntr_reg_reg(21),
      O => \int_comp_wire_carry__1_i_6_n_0\
    );
\int_comp_wire_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cfg_data(18),
      I1 => int_cntr_reg_reg(18),
      I2 => cfg_data(19),
      I3 => int_cntr_reg_reg(19),
      O => \int_comp_wire_carry__1_i_7_n_0\
    );
\int_comp_wire_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cfg_data(16),
      I1 => int_cntr_reg_reg(16),
      I2 => cfg_data(17),
      I3 => int_cntr_reg_reg(17),
      O => \int_comp_wire_carry__1_i_8_n_0\
    );
\int_comp_wire_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_comp_wire_carry__1_n_0\,
      CO(3) => int_comp_wire,
      CO(2) => \int_comp_wire_carry__2_n_1\,
      CO(1) => \int_comp_wire_carry__2_n_2\,
      CO(0) => \int_comp_wire_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \int_comp_wire_carry__2_i_1_n_0\,
      DI(2) => \int_comp_wire_carry__2_i_2_n_0\,
      DI(1) => \int_comp_wire_carry__2_i_3_n_0\,
      DI(0) => \int_comp_wire_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_int_comp_wire_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \int_comp_wire_carry__2_i_5_n_0\,
      S(2) => \int_comp_wire_carry__2_i_6_n_0\,
      S(1) => \int_comp_wire_carry__2_i_7_n_0\,
      S(0) => \int_comp_wire_carry__2_i_8_n_0\
    );
\int_comp_wire_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cfg_data(30),
      I1 => int_cntr_reg_reg(30),
      I2 => int_cntr_reg_reg(31),
      I3 => cfg_data(31),
      O => \int_comp_wire_carry__2_i_1_n_0\
    );
\int_comp_wire_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cfg_data(28),
      I1 => int_cntr_reg_reg(28),
      I2 => int_cntr_reg_reg(29),
      I3 => cfg_data(29),
      O => \int_comp_wire_carry__2_i_2_n_0\
    );
\int_comp_wire_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cfg_data(26),
      I1 => int_cntr_reg_reg(26),
      I2 => int_cntr_reg_reg(27),
      I3 => cfg_data(27),
      O => \int_comp_wire_carry__2_i_3_n_0\
    );
\int_comp_wire_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cfg_data(24),
      I1 => int_cntr_reg_reg(24),
      I2 => int_cntr_reg_reg(25),
      I3 => cfg_data(25),
      O => \int_comp_wire_carry__2_i_4_n_0\
    );
\int_comp_wire_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cfg_data(30),
      I1 => int_cntr_reg_reg(30),
      I2 => cfg_data(31),
      I3 => int_cntr_reg_reg(31),
      O => \int_comp_wire_carry__2_i_5_n_0\
    );
\int_comp_wire_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cfg_data(28),
      I1 => int_cntr_reg_reg(28),
      I2 => cfg_data(29),
      I3 => int_cntr_reg_reg(29),
      O => \int_comp_wire_carry__2_i_6_n_0\
    );
\int_comp_wire_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cfg_data(26),
      I1 => int_cntr_reg_reg(26),
      I2 => cfg_data(27),
      I3 => int_cntr_reg_reg(27),
      O => \int_comp_wire_carry__2_i_7_n_0\
    );
\int_comp_wire_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cfg_data(24),
      I1 => int_cntr_reg_reg(24),
      I2 => cfg_data(25),
      I3 => int_cntr_reg_reg(25),
      O => \int_comp_wire_carry__2_i_8_n_0\
    );
int_comp_wire_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cfg_data(6),
      I1 => int_cntr_reg_reg(6),
      I2 => int_cntr_reg_reg(7),
      I3 => cfg_data(7),
      O => int_comp_wire_carry_i_1_n_0
    );
int_comp_wire_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cfg_data(4),
      I1 => int_cntr_reg_reg(4),
      I2 => int_cntr_reg_reg(5),
      I3 => cfg_data(5),
      O => int_comp_wire_carry_i_2_n_0
    );
int_comp_wire_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cfg_data(2),
      I1 => int_cntr_reg_reg(2),
      I2 => int_cntr_reg_reg(3),
      I3 => cfg_data(3),
      O => int_comp_wire_carry_i_3_n_0
    );
int_comp_wire_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cfg_data(0),
      I1 => int_cntr_reg_reg(0),
      I2 => int_cntr_reg_reg(1),
      I3 => cfg_data(1),
      O => int_comp_wire_carry_i_4_n_0
    );
int_comp_wire_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cfg_data(6),
      I1 => int_cntr_reg_reg(6),
      I2 => cfg_data(7),
      I3 => int_cntr_reg_reg(7),
      O => int_comp_wire_carry_i_5_n_0
    );
int_comp_wire_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cfg_data(4),
      I1 => int_cntr_reg_reg(4),
      I2 => cfg_data(5),
      I3 => int_cntr_reg_reg(5),
      O => int_comp_wire_carry_i_6_n_0
    );
int_comp_wire_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cfg_data(2),
      I1 => int_cntr_reg_reg(2),
      I2 => cfg_data(3),
      I3 => int_cntr_reg_reg(3),
      O => int_comp_wire_carry_i_7_n_0
    );
int_comp_wire_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cfg_data(0),
      I1 => int_cntr_reg_reg(0),
      I2 => cfg_data(1),
      I3 => int_cntr_reg_reg(1),
      O => int_comp_wire_carry_i_8_n_0
    );
\int_tdata_reg[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
\int_tdata_reg[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^s_axis_tready\,
      I2 => int_comp_wire,
      O => \int_tdata_reg[31]_i_2_n_0\
    );
\int_tdata_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(0),
      Q => m_axis_tdata(0),
      R => p_0_in
    );
\int_tdata_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(10),
      Q => m_axis_tdata(10),
      R => p_0_in
    );
\int_tdata_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(11),
      Q => m_axis_tdata(11),
      R => p_0_in
    );
\int_tdata_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(12),
      Q => m_axis_tdata(12),
      R => p_0_in
    );
\int_tdata_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(13),
      Q => m_axis_tdata(13),
      R => p_0_in
    );
\int_tdata_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(14),
      Q => m_axis_tdata(14),
      R => p_0_in
    );
\int_tdata_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(15),
      Q => m_axis_tdata(15),
      R => p_0_in
    );
\int_tdata_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(16),
      Q => m_axis_tdata(16),
      R => p_0_in
    );
\int_tdata_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(17),
      Q => m_axis_tdata(17),
      R => p_0_in
    );
\int_tdata_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(18),
      Q => m_axis_tdata(18),
      R => p_0_in
    );
\int_tdata_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(19),
      Q => m_axis_tdata(19),
      R => p_0_in
    );
\int_tdata_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(1),
      Q => m_axis_tdata(1),
      R => p_0_in
    );
\int_tdata_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(20),
      Q => m_axis_tdata(20),
      R => p_0_in
    );
\int_tdata_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(21),
      Q => m_axis_tdata(21),
      R => p_0_in
    );
\int_tdata_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(22),
      Q => m_axis_tdata(22),
      R => p_0_in
    );
\int_tdata_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(23),
      Q => m_axis_tdata(23),
      R => p_0_in
    );
\int_tdata_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(24),
      Q => m_axis_tdata(24),
      R => p_0_in
    );
\int_tdata_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(25),
      Q => m_axis_tdata(25),
      R => p_0_in
    );
\int_tdata_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(26),
      Q => m_axis_tdata(26),
      R => p_0_in
    );
\int_tdata_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(27),
      Q => m_axis_tdata(27),
      R => p_0_in
    );
\int_tdata_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(28),
      Q => m_axis_tdata(28),
      R => p_0_in
    );
\int_tdata_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(29),
      Q => m_axis_tdata(29),
      R => p_0_in
    );
\int_tdata_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(2),
      Q => m_axis_tdata(2),
      R => p_0_in
    );
\int_tdata_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(30),
      Q => m_axis_tdata(30),
      R => p_0_in
    );
\int_tdata_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(31),
      Q => m_axis_tdata(31),
      R => p_0_in
    );
\int_tdata_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(3),
      Q => m_axis_tdata(3),
      R => p_0_in
    );
\int_tdata_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(4),
      Q => m_axis_tdata(4),
      R => p_0_in
    );
\int_tdata_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(5),
      Q => m_axis_tdata(5),
      R => p_0_in
    );
\int_tdata_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(6),
      Q => m_axis_tdata(6),
      R => p_0_in
    );
\int_tdata_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(7),
      Q => m_axis_tdata(7),
      R => p_0_in
    );
\int_tdata_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(8),
      Q => m_axis_tdata(8),
      R => p_0_in
    );
\int_tdata_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \int_tdata_reg[31]_i_2_n_0\,
      D => s_axis_tdata(9),
      Q => m_axis_tdata(9),
      R => p_0_in
    );
int_tready_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => int_comp_wire,
      I2 => aresetn,
      O => int_tready_reg_i_1_n_0
    );
int_tready_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => int_tready_reg_i_1_n_0,
      Q => \^s_axis_tready\,
      R => '0'
    );
int_tvalid_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF0008000800"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^s_axis_tready\,
      I2 => int_comp_wire,
      I3 => aresetn,
      I4 => m_axis_tready,
      I5 => \^m_axis_tvalid\,
      O => int_tvalid_reg_i_1_n_0
    );
int_tvalid_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => int_tvalid_reg_i_1_n_0,
      Q => \^m_axis_tvalid\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity red_pitaya_ps_1_axis_decimator_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    cfg_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of red_pitaya_ps_1_axis_decimator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of red_pitaya_ps_1_axis_decimator_0_0 : entity is "red_pitaya_ps_1_axis_decimator_0_0,axis_decimator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of red_pitaya_ps_1_axis_decimator_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of red_pitaya_ps_1_axis_decimator_0_0 : entity is "axis_decimator,Vivado 2017.4";
end red_pitaya_ps_1_axis_decimator_0_0;

architecture STRUCTURE of red_pitaya_ps_1_axis_decimator_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF M_AXIS:S_AXIS, ASSOCIATED_RESET aresetn, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN red_pitaya_ps_1_red_pitaya_ps_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_PARAMETER of m_axis_tvalid : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN red_pitaya_ps_1_red_pitaya_ps_0_FCLK_CLK0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_PARAMETER of s_axis_tvalid : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN red_pitaya_ps_1_red_pitaya_ps_0_FCLK_CLK0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
begin
inst: entity work.red_pitaya_ps_1_axis_decimator_0_0_axis_decimator
     port map (
      aclk => aclk,
      aresetn => aresetn,
      cfg_data(31 downto 0) => cfg_data(31 downto 0),
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
