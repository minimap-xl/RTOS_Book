-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Fri Feb 28 11:16:26 2020
-- Host        : spilds.rfx.local running 64-bit Ubuntu 14.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/mdsplus/devel/anacleto/projects/rfx_nioadc/edit/red_pitaya/rfx_nioadc_freq_0.1.srcs/sources_1/bd/red_pitaya_ps_1/ip/red_pitaya_ps_1_axis_red_pitaya_adc_0_0/red_pitaya_ps_1_axis_red_pitaya_adc_0_0_sim_netlist.vhdl
-- Design      : red_pitaya_ps_1_axis_red_pitaya_adc_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity red_pitaya_ps_1_axis_red_pitaya_adc_0_0_axis_red_pitaya_adc is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 27 downto 0 );
    adc_dat_a : in STD_LOGIC_VECTOR ( 13 downto 0 );
    aclk : in STD_LOGIC;
    adc_dat_b : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of red_pitaya_ps_1_axis_red_pitaya_adc_0_0_axis_red_pitaya_adc : entity is "axis_red_pitaya_adc";
end red_pitaya_ps_1_axis_red_pitaya_adc_0_0_axis_red_pitaya_adc;

architecture STRUCTURE of red_pitaya_ps_1_axis_red_pitaya_adc_0_0_axis_red_pitaya_adc is
  signal \int_dat_a_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \int_dat_a_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \int_dat_b_reg_reg_n_0_[9]\ : STD_LOGIC;
begin
\int_dat_a_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_a(0),
      Q => \int_dat_a_reg_reg_n_0_[0]\,
      R => '0'
    );
\int_dat_a_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_a(10),
      Q => \int_dat_a_reg_reg_n_0_[10]\,
      R => '0'
    );
\int_dat_a_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_a(11),
      Q => \int_dat_a_reg_reg_n_0_[11]\,
      R => '0'
    );
\int_dat_a_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_a(12),
      Q => \int_dat_a_reg_reg_n_0_[12]\,
      R => '0'
    );
\int_dat_a_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_a(13),
      Q => m_axis_tdata(13),
      R => '0'
    );
\int_dat_a_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_a(1),
      Q => \int_dat_a_reg_reg_n_0_[1]\,
      R => '0'
    );
\int_dat_a_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_a(2),
      Q => \int_dat_a_reg_reg_n_0_[2]\,
      R => '0'
    );
\int_dat_a_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_a(3),
      Q => \int_dat_a_reg_reg_n_0_[3]\,
      R => '0'
    );
\int_dat_a_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_a(4),
      Q => \int_dat_a_reg_reg_n_0_[4]\,
      R => '0'
    );
\int_dat_a_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_a(5),
      Q => \int_dat_a_reg_reg_n_0_[5]\,
      R => '0'
    );
\int_dat_a_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_a(6),
      Q => \int_dat_a_reg_reg_n_0_[6]\,
      R => '0'
    );
\int_dat_a_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_a(7),
      Q => \int_dat_a_reg_reg_n_0_[7]\,
      R => '0'
    );
\int_dat_a_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_a(8),
      Q => \int_dat_a_reg_reg_n_0_[8]\,
      R => '0'
    );
\int_dat_a_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_a(9),
      Q => \int_dat_a_reg_reg_n_0_[9]\,
      R => '0'
    );
\int_dat_b_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_b(0),
      Q => \int_dat_b_reg_reg_n_0_[0]\,
      R => '0'
    );
\int_dat_b_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_b(10),
      Q => \int_dat_b_reg_reg_n_0_[10]\,
      R => '0'
    );
\int_dat_b_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_b(11),
      Q => \int_dat_b_reg_reg_n_0_[11]\,
      R => '0'
    );
\int_dat_b_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_b(12),
      Q => \int_dat_b_reg_reg_n_0_[12]\,
      R => '0'
    );
\int_dat_b_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_b(13),
      Q => m_axis_tdata(27),
      R => '0'
    );
\int_dat_b_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_b(1),
      Q => \int_dat_b_reg_reg_n_0_[1]\,
      R => '0'
    );
\int_dat_b_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_b(2),
      Q => \int_dat_b_reg_reg_n_0_[2]\,
      R => '0'
    );
\int_dat_b_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_b(3),
      Q => \int_dat_b_reg_reg_n_0_[3]\,
      R => '0'
    );
\int_dat_b_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_b(4),
      Q => \int_dat_b_reg_reg_n_0_[4]\,
      R => '0'
    );
\int_dat_b_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_b(5),
      Q => \int_dat_b_reg_reg_n_0_[5]\,
      R => '0'
    );
\int_dat_b_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_b(6),
      Q => \int_dat_b_reg_reg_n_0_[6]\,
      R => '0'
    );
\int_dat_b_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_b(7),
      Q => \int_dat_b_reg_reg_n_0_[7]\,
      R => '0'
    );
\int_dat_b_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_b(8),
      Q => \int_dat_b_reg_reg_n_0_[8]\,
      R => '0'
    );
\int_dat_b_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => adc_dat_b(9),
      Q => \int_dat_b_reg_reg_n_0_[9]\,
      R => '0'
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_a_reg_reg_n_0_[0]\,
      O => m_axis_tdata(0)
    );
\m_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_a_reg_reg_n_0_[10]\,
      O => m_axis_tdata(10)
    );
\m_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_a_reg_reg_n_0_[11]\,
      O => m_axis_tdata(11)
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_a_reg_reg_n_0_[12]\,
      O => m_axis_tdata(12)
    );
\m_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_b_reg_reg_n_0_[0]\,
      O => m_axis_tdata(14)
    );
\m_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_b_reg_reg_n_0_[1]\,
      O => m_axis_tdata(15)
    );
\m_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_b_reg_reg_n_0_[2]\,
      O => m_axis_tdata(16)
    );
\m_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_b_reg_reg_n_0_[3]\,
      O => m_axis_tdata(17)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_a_reg_reg_n_0_[1]\,
      O => m_axis_tdata(1)
    );
\m_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_b_reg_reg_n_0_[4]\,
      O => m_axis_tdata(18)
    );
\m_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_b_reg_reg_n_0_[5]\,
      O => m_axis_tdata(19)
    );
\m_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_b_reg_reg_n_0_[6]\,
      O => m_axis_tdata(20)
    );
\m_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_b_reg_reg_n_0_[7]\,
      O => m_axis_tdata(21)
    );
\m_axis_tdata[24]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_b_reg_reg_n_0_[8]\,
      O => m_axis_tdata(22)
    );
\m_axis_tdata[25]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_b_reg_reg_n_0_[9]\,
      O => m_axis_tdata(23)
    );
\m_axis_tdata[26]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_b_reg_reg_n_0_[10]\,
      O => m_axis_tdata(24)
    );
\m_axis_tdata[27]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_b_reg_reg_n_0_[11]\,
      O => m_axis_tdata(25)
    );
\m_axis_tdata[28]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_b_reg_reg_n_0_[12]\,
      O => m_axis_tdata(26)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_a_reg_reg_n_0_[2]\,
      O => m_axis_tdata(2)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_a_reg_reg_n_0_[3]\,
      O => m_axis_tdata(3)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_a_reg_reg_n_0_[4]\,
      O => m_axis_tdata(4)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_a_reg_reg_n_0_[5]\,
      O => m_axis_tdata(5)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_a_reg_reg_n_0_[6]\,
      O => m_axis_tdata(6)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_a_reg_reg_n_0_[7]\,
      O => m_axis_tdata(7)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_a_reg_reg_n_0_[8]\,
      O => m_axis_tdata(8)
    );
\m_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_dat_a_reg_reg_n_0_[9]\,
      O => m_axis_tdata(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity red_pitaya_ps_1_axis_red_pitaya_adc_0_0 is
  port (
    aclk : in STD_LOGIC;
    adc_csn : out STD_LOGIC;
    adc_dat_a : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_dat_b : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of red_pitaya_ps_1_axis_red_pitaya_adc_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of red_pitaya_ps_1_axis_red_pitaya_adc_0_0 : entity is "red_pitaya_ps_1_axis_red_pitaya_adc_0_0,axis_red_pitaya_adc,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of red_pitaya_ps_1_axis_red_pitaya_adc_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of red_pitaya_ps_1_axis_red_pitaya_adc_0_0 : entity is "axis_red_pitaya_adc,Vivado 2017.4";
end red_pitaya_ps_1_axis_red_pitaya_adc_0_0;

architecture STRUCTURE of red_pitaya_ps_1_axis_red_pitaya_adc_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF M_AXIS, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN red_pitaya_ps_1_red_pitaya_ps_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN red_pitaya_ps_1_red_pitaya_ps_0_FCLK_CLK0, LAYERED_METADATA undef";
begin
  adc_csn <= \<const1>\;
  m_axis_tdata(31) <= \^m_axis_tdata\(29);
  m_axis_tdata(30) <= \^m_axis_tdata\(29);
  m_axis_tdata(29 downto 16) <= \^m_axis_tdata\(29 downto 16);
  m_axis_tdata(15) <= \^m_axis_tdata\(13);
  m_axis_tdata(14) <= \^m_axis_tdata\(13);
  m_axis_tdata(13 downto 0) <= \^m_axis_tdata\(13 downto 0);
  m_axis_tvalid <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.red_pitaya_ps_1_axis_red_pitaya_adc_0_0_axis_red_pitaya_adc
     port map (
      aclk => aclk,
      adc_dat_a(13 downto 0) => adc_dat_a(13 downto 0),
      adc_dat_b(13 downto 0) => adc_dat_b(13 downto 0),
      m_axis_tdata(27 downto 14) => \^m_axis_tdata\(29 downto 16),
      m_axis_tdata(13 downto 0) => \^m_axis_tdata\(13 downto 0)
    );
end STRUCTURE;
