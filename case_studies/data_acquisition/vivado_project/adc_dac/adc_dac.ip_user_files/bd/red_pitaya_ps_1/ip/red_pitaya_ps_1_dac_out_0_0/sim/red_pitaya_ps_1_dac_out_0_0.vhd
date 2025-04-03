-- (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:dac_out:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY red_pitaya_ps_1_dac_out_0_0 IS
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_tvalid : IN STD_LOGIC;
    s_axis_tready : OUT STD_LOGIC;
    dac_rst : OUT STD_LOGIC;
    dac_clk : OUT STD_LOGIC;
    dac_sel : OUT STD_LOGIC;
    dac_dat : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    led : OUT STD_LOGIC
  );
END red_pitaya_ps_1_dac_out_0_0;

ARCHITECTURE red_pitaya_ps_1_dac_out_0_0_arch OF red_pitaya_ps_1_dac_out_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF red_pitaya_ps_1_dac_out_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT dac_out IS
    GENERIC (
      C_M_AXIS_DATA_WIDTH : INTEGER;
      C_S_AXIS_DATA_WIDTH : INTEGER;
      C_MAXVAL : INTEGER;
      C_MINVAL : INTEGER;
      C_LED_COUNTVAL : INTEGER;
      C_COUNTVAL : INTEGER;
      C_DAC_COUNTVAL : INTEGER
    );
    PORT (
      aclk : IN STD_LOGIC;
      s_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axis_tvalid : IN STD_LOGIC;
      s_axis_tready : OUT STD_LOGIC;
      dac_rst : OUT STD_LOGIC;
      dac_clk : OUT STD_LOGIC;
      dac_sel : OUT STD_LOGIC;
      dac_dat : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      led : OUT STD_LOGIC
    );
  END COMPONENT dac_out;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF dac_clk: SIGNAL IS "XIL_INTERFACENAME dac_clk, ASSOCIATED_RESET dac_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN red_pitaya_ps_1_dac_out_0_0_dac_clk";
  ATTRIBUTE X_INTERFACE_INFO OF dac_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 dac_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF dac_rst: SIGNAL IS "XIL_INTERFACENAME dac_rst, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF dac_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 dac_rst RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_tdata: SIGNAL IS "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN red_pitaya_ps_1_red_pitaya_ps_0_FCLK_CLK0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclk: SIGNAL IS "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axis, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN red_pitaya_ps_1_red_pitaya_ps_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 aclk CLK";
BEGIN
  U0 : dac_out
    GENERIC MAP (
      C_M_AXIS_DATA_WIDTH => 32,
      C_S_AXIS_DATA_WIDTH => 32,
      C_MAXVAL => 8000,
      C_MINVAL => 0,
      C_LED_COUNTVAL => 125000000,
      C_COUNTVAL => 10000,
      C_DAC_COUNTVAL => 62
    )
    PORT MAP (
      aclk => aclk,
      s_axis_tdata => s_axis_tdata,
      s_axis_tvalid => s_axis_tvalid,
      s_axis_tready => s_axis_tready,
      dac_rst => dac_rst,
      dac_clk => dac_clk,
      dac_sel => dac_sel,
      dac_dat => dac_dat,
      led => led
    );
END red_pitaya_ps_1_dac_out_0_0_arch;
