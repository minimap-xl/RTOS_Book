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

-- IP VLNV: xilinx.com:ip:axi_fifo_mm_s:4.1
-- IP Revision: 12

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY axi_fifo_mm_s_v4_1_12;
USE axi_fifo_mm_s_v4_1_12.axi_fifo_mm_s;

ENTITY red_pitaya_ps_1_data_fifo_0 IS
  PORT (
    interrupt : OUT STD_LOGIC;
    s_axi_aclk : IN STD_LOGIC;
    s_axi_aresetn : IN STD_LOGIC;
    s_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_awvalid : IN STD_LOGIC;
    s_axi_awready : OUT STD_LOGIC;
    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wvalid : IN STD_LOGIC;
    s_axi_wready : OUT STD_LOGIC;
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC;
    s_axi_bready : IN STD_LOGIC;
    s_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_arvalid : IN STD_LOGIC;
    s_axi_arready : OUT STD_LOGIC;
    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rvalid : OUT STD_LOGIC;
    s_axi_rready : IN STD_LOGIC;
    s_axi4_arid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_axi4_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi4_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi4_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi4_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi4_arlock : IN STD_LOGIC;
    s_axi4_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi4_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi4_arvalid : IN STD_LOGIC;
    s_axi4_arready : OUT STD_LOGIC;
    s_axi4_rid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_axi4_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi4_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi4_rlast : OUT STD_LOGIC;
    s_axi4_rvalid : OUT STD_LOGIC;
    s_axi4_rready : IN STD_LOGIC;
    s2mm_prmry_reset_out_n : OUT STD_LOGIC;
    axi_str_rxd_tvalid : IN STD_LOGIC;
    axi_str_rxd_tready : OUT STD_LOGIC;
    axi_str_rxd_tlast : IN STD_LOGIC;
    axi_str_rxd_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END red_pitaya_ps_1_data_fifo_0;

ARCHITECTURE red_pitaya_ps_1_data_fifo_0_arch OF red_pitaya_ps_1_data_fifo_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF red_pitaya_ps_1_data_fifo_0_arch: ARCHITECTURE IS "yes";
  COMPONENT axi_fifo_mm_s IS
    GENERIC (
      C_FAMILY : STRING;
      C_S_AXI_ID_WIDTH : INTEGER;
      C_S_AXI_ADDR_WIDTH : INTEGER;
      C_S_AXI_DATA_WIDTH : INTEGER;
      C_S_AXI4_DATA_WIDTH : INTEGER;
      C_TX_FIFO_DEPTH : INTEGER;
      C_RX_FIFO_DEPTH : INTEGER;
      C_TX_FIFO_PF_THRESHOLD : INTEGER;
      C_TX_FIFO_PE_THRESHOLD : INTEGER;
      C_RX_FIFO_PF_THRESHOLD : INTEGER;
      C_RX_FIFO_PE_THRESHOLD : INTEGER;
      C_USE_TX_CUT_THROUGH : INTEGER;
      C_DATA_INTERFACE_TYPE : INTEGER;
      C_BASEADDR : STD_LOGIC_VECTOR(31 DOWNTO 0);
      C_HIGHADDR : STD_LOGIC_VECTOR(31 DOWNTO 0);
      C_AXI4_BASEADDR : STD_LOGIC_VECTOR(31 DOWNTO 0);
      C_AXI4_HIGHADDR : STD_LOGIC_VECTOR(31 DOWNTO 0);
      C_HAS_AXIS_TID : INTEGER;
      C_HAS_AXIS_TDEST : INTEGER;
      C_HAS_AXIS_TUSER : INTEGER;
      C_HAS_AXIS_TSTRB : INTEGER;
      C_HAS_AXIS_TKEEP : INTEGER;
      C_AXIS_TID_WIDTH : INTEGER;
      C_AXIS_TDEST_WIDTH : INTEGER;
      C_AXIS_TUSER_WIDTH : INTEGER;
      C_USE_RX_CUT_THROUGH : INTEGER;
      C_USE_TX_DATA : INTEGER;
      C_USE_TX_CTRL : INTEGER;
      C_USE_RX_DATA : INTEGER
    );
    PORT (
      interrupt : OUT STD_LOGIC;
      s_axi_aclk : IN STD_LOGIC;
      s_axi_aresetn : IN STD_LOGIC;
      s_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_awvalid : IN STD_LOGIC;
      s_axi_awready : OUT STD_LOGIC;
      s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_wvalid : IN STD_LOGIC;
      s_axi_wready : OUT STD_LOGIC;
      s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_bvalid : OUT STD_LOGIC;
      s_axi_bready : IN STD_LOGIC;
      s_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_arvalid : IN STD_LOGIC;
      s_axi_arready : OUT STD_LOGIC;
      s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_rvalid : OUT STD_LOGIC;
      s_axi_rready : IN STD_LOGIC;
      s_axi4_awid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      s_axi4_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi4_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi4_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi4_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi4_awlock : IN STD_LOGIC;
      s_axi4_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi4_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi4_awvalid : IN STD_LOGIC;
      s_axi4_awready : OUT STD_LOGIC;
      s_axi4_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi4_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi4_wlast : IN STD_LOGIC;
      s_axi4_wvalid : IN STD_LOGIC;
      s_axi4_wready : OUT STD_LOGIC;
      s_axi4_bid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      s_axi4_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi4_bvalid : OUT STD_LOGIC;
      s_axi4_bready : IN STD_LOGIC;
      s_axi4_arid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      s_axi4_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi4_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi4_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi4_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi4_arlock : IN STD_LOGIC;
      s_axi4_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi4_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi4_arvalid : IN STD_LOGIC;
      s_axi4_arready : OUT STD_LOGIC;
      s_axi4_rid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      s_axi4_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi4_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi4_rlast : OUT STD_LOGIC;
      s_axi4_rvalid : OUT STD_LOGIC;
      s_axi4_rready : IN STD_LOGIC;
      mm2s_prmry_reset_out_n : OUT STD_LOGIC;
      axi_str_txd_tvalid : OUT STD_LOGIC;
      axi_str_txd_tready : IN STD_LOGIC;
      axi_str_txd_tlast : OUT STD_LOGIC;
      axi_str_txd_tkeep : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      axi_str_txd_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      axi_str_txd_tstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      axi_str_txd_tdest : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      axi_str_txd_tid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      axi_str_txd_tuser : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      mm2s_cntrl_reset_out_n : OUT STD_LOGIC;
      axi_str_txc_tvalid : OUT STD_LOGIC;
      axi_str_txc_tready : IN STD_LOGIC;
      axi_str_txc_tlast : OUT STD_LOGIC;
      axi_str_txc_tkeep : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      axi_str_txc_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      axi_str_txc_tstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      axi_str_txc_tdest : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      axi_str_txc_tid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      axi_str_txc_tuser : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s2mm_prmry_reset_out_n : OUT STD_LOGIC;
      axi_str_rxd_tvalid : IN STD_LOGIC;
      axi_str_rxd_tready : OUT STD_LOGIC;
      axi_str_rxd_tlast : IN STD_LOGIC;
      axi_str_rxd_tkeep : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axi_str_rxd_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      axi_str_rxd_tstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axi_str_rxd_tdest : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axi_str_rxd_tid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axi_str_rxd_tuser : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT axi_fifo_mm_s;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF axi_str_rxd_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_STR_RXD TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF axi_str_rxd_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_STR_RXD TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF axi_str_rxd_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_STR_RXD TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axi_str_rxd_tvalid: SIGNAL IS "XIL_INTERFACENAME AXI_STR_RXD, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN red_pitaya_ps_1_red_pitaya_ps_0_FCLK_CLK0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF axi_str_rxd_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_STR_RXD TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s2mm_prmry_reset_out_n: SIGNAL IS "XIL_INTERFACENAME rst_axi_str_rxd, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF s2mm_prmry_reset_out_n: SIGNAL IS "xilinx.com:signal:reset:1.0 rst_axi_str_rxd RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi4_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_FULL RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi4_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_FULL RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi4_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_FULL RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi4_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_FULL RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi4_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_FULL RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi4_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_FULL RID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi4_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi4_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi4_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi4_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi4_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi4_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi4_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi4_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi4_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi4_arid: SIGNAL IS "XIL_INTERFACENAME S_AXI_FULL, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 12, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN red_pitaya_ps_1_red_pitaya_ps_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi4_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_awaddr: SIGNAL IS "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN red_pitaya_ps_1_red_pitaya_ps_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME rst_s_axi, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 rst_s_axi RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_aclk: SIGNAL IS "XIL_INTERFACENAME aclk_s_axi, ASSOCIATED_BUSIF S_AXI:S_AXI_FULL:AXI_STR_TXD:AXI_STR_TXC:AXI_STR_RXD, ASSOCIATED_RESET s_axi_aresetn:mm2s_prmry_reset_out_n:mm2s_cntrl_reset_out_n:s2mm_prmry_reset_out_n, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN red_pitaya_ps_1_red_pitaya_ps_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 aclk_s_axi CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF interrupt: SIGNAL IS "XIL_INTERFACENAME interrupt_intf, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 interrupt_intf INTERRUPT";
BEGIN
  U0 : axi_fifo_mm_s
    GENERIC MAP (
      C_FAMILY => "zynq",
      C_S_AXI_ID_WIDTH => 12,
      C_S_AXI_ADDR_WIDTH => 32,
      C_S_AXI_DATA_WIDTH => 32,
      C_S_AXI4_DATA_WIDTH => 32,
      C_TX_FIFO_DEPTH => 512,
      C_RX_FIFO_DEPTH => 32768,
      C_TX_FIFO_PF_THRESHOLD => 507,
      C_TX_FIFO_PE_THRESHOLD => 2,
      C_RX_FIFO_PF_THRESHOLD => 10,
      C_RX_FIFO_PE_THRESHOLD => 2,
      C_USE_TX_CUT_THROUGH => 0,
      C_DATA_INTERFACE_TYPE => 1,
      C_BASEADDR => X"43C00000",
      C_HIGHADDR => X"43C0FFFF",
      C_AXI4_BASEADDR => X"43C10000",
      C_AXI4_HIGHADDR => X"43C1FFFF",
      C_HAS_AXIS_TID => 0,
      C_HAS_AXIS_TDEST => 0,
      C_HAS_AXIS_TUSER => 0,
      C_HAS_AXIS_TSTRB => 0,
      C_HAS_AXIS_TKEEP => 0,
      C_AXIS_TID_WIDTH => 4,
      C_AXIS_TDEST_WIDTH => 4,
      C_AXIS_TUSER_WIDTH => 4,
      C_USE_RX_CUT_THROUGH => 0,
      C_USE_TX_DATA => 0,
      C_USE_TX_CTRL => 0,
      C_USE_RX_DATA => 1
    )
    PORT MAP (
      interrupt => interrupt,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr => s_axi_awaddr,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awready => s_axi_awready,
      s_axi_wdata => s_axi_wdata,
      s_axi_wstrb => s_axi_wstrb,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wready => s_axi_wready,
      s_axi_bresp => s_axi_bresp,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_bready => s_axi_bready,
      s_axi_araddr => s_axi_araddr,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arready => s_axi_arready,
      s_axi_rdata => s_axi_rdata,
      s_axi_rresp => s_axi_rresp,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_rready => s_axi_rready,
      s_axi4_awid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 12)),
      s_axi4_awaddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      s_axi4_awlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      s_axi4_awsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_axi4_awburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      s_axi4_awlock => '0',
      s_axi4_awcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_axi4_awprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_axi4_awvalid => '0',
      s_axi4_wdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      s_axi4_wstrb => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_axi4_wlast => '0',
      s_axi4_wvalid => '0',
      s_axi4_bready => '0',
      s_axi4_arid => s_axi4_arid,
      s_axi4_araddr => s_axi4_araddr,
      s_axi4_arlen => s_axi4_arlen,
      s_axi4_arsize => s_axi4_arsize,
      s_axi4_arburst => s_axi4_arburst,
      s_axi4_arlock => s_axi4_arlock,
      s_axi4_arcache => s_axi4_arcache,
      s_axi4_arprot => s_axi4_arprot,
      s_axi4_arvalid => s_axi4_arvalid,
      s_axi4_arready => s_axi4_arready,
      s_axi4_rid => s_axi4_rid,
      s_axi4_rdata => s_axi4_rdata,
      s_axi4_rresp => s_axi4_rresp,
      s_axi4_rlast => s_axi4_rlast,
      s_axi4_rvalid => s_axi4_rvalid,
      s_axi4_rready => s_axi4_rready,
      axi_str_txd_tready => '0',
      axi_str_txc_tready => '0',
      s2mm_prmry_reset_out_n => s2mm_prmry_reset_out_n,
      axi_str_rxd_tvalid => axi_str_rxd_tvalid,
      axi_str_rxd_tready => axi_str_rxd_tready,
      axi_str_rxd_tlast => axi_str_rxd_tlast,
      axi_str_rxd_tkeep => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      axi_str_rxd_tdata => axi_str_rxd_tdata,
      axi_str_rxd_tstrb => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      axi_str_rxd_tdest => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      axi_str_rxd_tid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      axi_str_rxd_tuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4))
    );
END red_pitaya_ps_1_data_fifo_0_arch;
