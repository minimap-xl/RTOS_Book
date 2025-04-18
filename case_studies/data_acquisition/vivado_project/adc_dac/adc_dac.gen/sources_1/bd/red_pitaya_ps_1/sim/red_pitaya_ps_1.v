//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Mon Mar 31 15:35:03 2025
//Host        : aidevel running 64-bit unknown
//Command     : generate_target red_pitaya_ps_1.bd
//Design      : red_pitaya_ps_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m00_couplers_imp_1GPZGNS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m00_couplers_ARADDR;
  wire auto_pc_to_m00_couplers_ARREADY;
  wire auto_pc_to_m00_couplers_ARVALID;
  wire [31:0]auto_pc_to_m00_couplers_AWADDR;
  wire auto_pc_to_m00_couplers_AWREADY;
  wire auto_pc_to_m00_couplers_AWVALID;
  wire auto_pc_to_m00_couplers_BREADY;
  wire [1:0]auto_pc_to_m00_couplers_BRESP;
  wire auto_pc_to_m00_couplers_BVALID;
  wire [31:0]auto_pc_to_m00_couplers_RDATA;
  wire auto_pc_to_m00_couplers_RREADY;
  wire [1:0]auto_pc_to_m00_couplers_RRESP;
  wire auto_pc_to_m00_couplers_RVALID;
  wire [31:0]auto_pc_to_m00_couplers_WDATA;
  wire auto_pc_to_m00_couplers_WREADY;
  wire [3:0]auto_pc_to_m00_couplers_WSTRB;
  wire auto_pc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_pc_ARADDR;
  wire [1:0]m00_couplers_to_auto_pc_ARBURST;
  wire [3:0]m00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]m00_couplers_to_auto_pc_ARID;
  wire [7:0]m00_couplers_to_auto_pc_ARLEN;
  wire [0:0]m00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_pc_ARPROT;
  wire [3:0]m00_couplers_to_auto_pc_ARQOS;
  wire m00_couplers_to_auto_pc_ARREADY;
  wire [3:0]m00_couplers_to_auto_pc_ARREGION;
  wire [2:0]m00_couplers_to_auto_pc_ARSIZE;
  wire m00_couplers_to_auto_pc_ARVALID;
  wire [31:0]m00_couplers_to_auto_pc_AWADDR;
  wire [1:0]m00_couplers_to_auto_pc_AWBURST;
  wire [3:0]m00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]m00_couplers_to_auto_pc_AWID;
  wire [7:0]m00_couplers_to_auto_pc_AWLEN;
  wire [0:0]m00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_pc_AWPROT;
  wire [3:0]m00_couplers_to_auto_pc_AWQOS;
  wire m00_couplers_to_auto_pc_AWREADY;
  wire [3:0]m00_couplers_to_auto_pc_AWREGION;
  wire [2:0]m00_couplers_to_auto_pc_AWSIZE;
  wire m00_couplers_to_auto_pc_AWVALID;
  wire [11:0]m00_couplers_to_auto_pc_BID;
  wire m00_couplers_to_auto_pc_BREADY;
  wire [1:0]m00_couplers_to_auto_pc_BRESP;
  wire m00_couplers_to_auto_pc_BVALID;
  wire [31:0]m00_couplers_to_auto_pc_RDATA;
  wire [11:0]m00_couplers_to_auto_pc_RID;
  wire m00_couplers_to_auto_pc_RLAST;
  wire m00_couplers_to_auto_pc_RREADY;
  wire [1:0]m00_couplers_to_auto_pc_RRESP;
  wire m00_couplers_to_auto_pc_RVALID;
  wire [31:0]m00_couplers_to_auto_pc_WDATA;
  wire m00_couplers_to_auto_pc_WLAST;
  wire m00_couplers_to_auto_pc_WREADY;
  wire [3:0]m00_couplers_to_auto_pc_WSTRB;
  wire m00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = m00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = m00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign m00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign m00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  red_pitaya_ps_1_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_pc_BID),
        .s_axi_bready(m00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m00_couplers_to_auto_pc_RID),
        .s_axi_rlast(m00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_pc_WVALID));
endmodule

module m01_couplers_imp_7N1992
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m01_couplers_ARADDR;
  wire auto_pc_to_m01_couplers_ARREADY;
  wire auto_pc_to_m01_couplers_ARVALID;
  wire [31:0]auto_pc_to_m01_couplers_AWADDR;
  wire auto_pc_to_m01_couplers_AWREADY;
  wire auto_pc_to_m01_couplers_AWVALID;
  wire auto_pc_to_m01_couplers_BREADY;
  wire [1:0]auto_pc_to_m01_couplers_BRESP;
  wire auto_pc_to_m01_couplers_BVALID;
  wire [31:0]auto_pc_to_m01_couplers_RDATA;
  wire auto_pc_to_m01_couplers_RREADY;
  wire [1:0]auto_pc_to_m01_couplers_RRESP;
  wire auto_pc_to_m01_couplers_RVALID;
  wire [31:0]auto_pc_to_m01_couplers_WDATA;
  wire auto_pc_to_m01_couplers_WREADY;
  wire [3:0]auto_pc_to_m01_couplers_WSTRB;
  wire auto_pc_to_m01_couplers_WVALID;
  wire [31:0]m01_couplers_to_auto_pc_ARADDR;
  wire [1:0]m01_couplers_to_auto_pc_ARBURST;
  wire [3:0]m01_couplers_to_auto_pc_ARCACHE;
  wire [11:0]m01_couplers_to_auto_pc_ARID;
  wire [7:0]m01_couplers_to_auto_pc_ARLEN;
  wire [0:0]m01_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m01_couplers_to_auto_pc_ARPROT;
  wire [3:0]m01_couplers_to_auto_pc_ARQOS;
  wire m01_couplers_to_auto_pc_ARREADY;
  wire [3:0]m01_couplers_to_auto_pc_ARREGION;
  wire [2:0]m01_couplers_to_auto_pc_ARSIZE;
  wire m01_couplers_to_auto_pc_ARVALID;
  wire [31:0]m01_couplers_to_auto_pc_AWADDR;
  wire [1:0]m01_couplers_to_auto_pc_AWBURST;
  wire [3:0]m01_couplers_to_auto_pc_AWCACHE;
  wire [11:0]m01_couplers_to_auto_pc_AWID;
  wire [7:0]m01_couplers_to_auto_pc_AWLEN;
  wire [0:0]m01_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m01_couplers_to_auto_pc_AWPROT;
  wire [3:0]m01_couplers_to_auto_pc_AWQOS;
  wire m01_couplers_to_auto_pc_AWREADY;
  wire [3:0]m01_couplers_to_auto_pc_AWREGION;
  wire [2:0]m01_couplers_to_auto_pc_AWSIZE;
  wire m01_couplers_to_auto_pc_AWVALID;
  wire [11:0]m01_couplers_to_auto_pc_BID;
  wire m01_couplers_to_auto_pc_BREADY;
  wire [1:0]m01_couplers_to_auto_pc_BRESP;
  wire m01_couplers_to_auto_pc_BVALID;
  wire [31:0]m01_couplers_to_auto_pc_RDATA;
  wire [11:0]m01_couplers_to_auto_pc_RID;
  wire m01_couplers_to_auto_pc_RLAST;
  wire m01_couplers_to_auto_pc_RREADY;
  wire [1:0]m01_couplers_to_auto_pc_RRESP;
  wire m01_couplers_to_auto_pc_RVALID;
  wire [31:0]m01_couplers_to_auto_pc_WDATA;
  wire m01_couplers_to_auto_pc_WLAST;
  wire m01_couplers_to_auto_pc_WREADY;
  wire [3:0]m01_couplers_to_auto_pc_WSTRB;
  wire m01_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = m01_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = m01_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m01_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign m01_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m01_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m01_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m01_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign m01_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m01_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m01_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m01_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m01_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  red_pitaya_ps_1_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m01_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m01_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m01_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m01_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m01_couplers_WVALID),
        .s_axi_araddr(m01_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m01_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m01_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m01_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m01_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m01_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m01_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m01_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m01_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m01_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m01_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m01_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m01_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m01_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m01_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m01_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m01_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m01_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m01_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m01_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m01_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m01_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m01_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m01_couplers_to_auto_pc_BID),
        .s_axi_bready(m01_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m01_couplers_to_auto_pc_RID),
        .s_axi_rlast(m01_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m01_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m01_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m01_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_pc_WVALID));
endmodule

module m02_couplers_imp_CVFSQT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [11:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  input [31:0]M_AXI_rdata;
  input [11:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [1:0]m02_couplers_to_m02_couplers_ARBURST;
  wire [3:0]m02_couplers_to_m02_couplers_ARCACHE;
  wire [11:0]m02_couplers_to_m02_couplers_ARID;
  wire [7:0]m02_couplers_to_m02_couplers_ARLEN;
  wire [0:0]m02_couplers_to_m02_couplers_ARLOCK;
  wire [2:0]m02_couplers_to_m02_couplers_ARPROT;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [2:0]m02_couplers_to_m02_couplers_ARSIZE;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [11:0]m02_couplers_to_m02_couplers_RID;
  wire [0:0]m02_couplers_to_m02_couplers_RLAST;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m02_couplers_to_m02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m02_couplers_to_m02_couplers_ARCACHE;
  assign M_AXI_arid[11:0] = m02_couplers_to_m02_couplers_ARID;
  assign M_AXI_arlen[7:0] = m02_couplers_to_m02_couplers_ARLEN;
  assign M_AXI_arlock[0] = m02_couplers_to_m02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m02_couplers_to_m02_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m02_couplers_to_m02_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rid[11:0] = m02_couplers_to_m02_couplers_RID;
  assign S_AXI_rlast[0] = m02_couplers_to_m02_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m02_couplers_to_m02_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m02_couplers_to_m02_couplers_ARID = S_AXI_arid[11:0];
  assign m02_couplers_to_m02_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m02_couplers_to_m02_couplers_ARLOCK = S_AXI_arlock[0];
  assign m02_couplers_to_m02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RID = M_AXI_rid[11:0];
  assign m02_couplers_to_m02_couplers_RLAST = M_AXI_rlast[0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
endmodule

module m03_couplers_imp_12TR9L7
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m03_couplers_ARADDR;
  wire auto_pc_to_m03_couplers_ARREADY;
  wire auto_pc_to_m03_couplers_ARVALID;
  wire [31:0]auto_pc_to_m03_couplers_AWADDR;
  wire auto_pc_to_m03_couplers_AWREADY;
  wire auto_pc_to_m03_couplers_AWVALID;
  wire auto_pc_to_m03_couplers_BREADY;
  wire [1:0]auto_pc_to_m03_couplers_BRESP;
  wire auto_pc_to_m03_couplers_BVALID;
  wire [31:0]auto_pc_to_m03_couplers_RDATA;
  wire auto_pc_to_m03_couplers_RREADY;
  wire [1:0]auto_pc_to_m03_couplers_RRESP;
  wire auto_pc_to_m03_couplers_RVALID;
  wire [31:0]auto_pc_to_m03_couplers_WDATA;
  wire auto_pc_to_m03_couplers_WREADY;
  wire [3:0]auto_pc_to_m03_couplers_WSTRB;
  wire auto_pc_to_m03_couplers_WVALID;
  wire [31:0]m03_couplers_to_auto_pc_ARADDR;
  wire [1:0]m03_couplers_to_auto_pc_ARBURST;
  wire [3:0]m03_couplers_to_auto_pc_ARCACHE;
  wire [11:0]m03_couplers_to_auto_pc_ARID;
  wire [7:0]m03_couplers_to_auto_pc_ARLEN;
  wire [0:0]m03_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m03_couplers_to_auto_pc_ARPROT;
  wire [3:0]m03_couplers_to_auto_pc_ARQOS;
  wire m03_couplers_to_auto_pc_ARREADY;
  wire [3:0]m03_couplers_to_auto_pc_ARREGION;
  wire [2:0]m03_couplers_to_auto_pc_ARSIZE;
  wire m03_couplers_to_auto_pc_ARVALID;
  wire [31:0]m03_couplers_to_auto_pc_AWADDR;
  wire [1:0]m03_couplers_to_auto_pc_AWBURST;
  wire [3:0]m03_couplers_to_auto_pc_AWCACHE;
  wire [11:0]m03_couplers_to_auto_pc_AWID;
  wire [7:0]m03_couplers_to_auto_pc_AWLEN;
  wire [0:0]m03_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m03_couplers_to_auto_pc_AWPROT;
  wire [3:0]m03_couplers_to_auto_pc_AWQOS;
  wire m03_couplers_to_auto_pc_AWREADY;
  wire [3:0]m03_couplers_to_auto_pc_AWREGION;
  wire [2:0]m03_couplers_to_auto_pc_AWSIZE;
  wire m03_couplers_to_auto_pc_AWVALID;
  wire [11:0]m03_couplers_to_auto_pc_BID;
  wire m03_couplers_to_auto_pc_BREADY;
  wire [1:0]m03_couplers_to_auto_pc_BRESP;
  wire m03_couplers_to_auto_pc_BVALID;
  wire [31:0]m03_couplers_to_auto_pc_RDATA;
  wire [11:0]m03_couplers_to_auto_pc_RID;
  wire m03_couplers_to_auto_pc_RLAST;
  wire m03_couplers_to_auto_pc_RREADY;
  wire [1:0]m03_couplers_to_auto_pc_RRESP;
  wire m03_couplers_to_auto_pc_RVALID;
  wire [31:0]m03_couplers_to_auto_pc_WDATA;
  wire m03_couplers_to_auto_pc_WLAST;
  wire m03_couplers_to_auto_pc_WREADY;
  wire [3:0]m03_couplers_to_auto_pc_WSTRB;
  wire m03_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m03_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m03_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m03_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = m03_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = m03_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m03_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m03_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m03_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m03_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m03_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign m03_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m03_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m03_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m03_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m03_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m03_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m03_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m03_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign m03_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m03_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m03_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m03_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m03_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m03_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m03_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  red_pitaya_ps_1_auto_pc_2 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m03_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m03_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m03_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m03_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m03_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m03_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m03_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m03_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m03_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m03_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m03_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m03_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m03_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m03_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m03_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m03_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m03_couplers_WVALID),
        .s_axi_araddr(m03_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m03_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m03_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m03_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m03_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m03_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m03_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m03_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m03_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m03_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m03_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m03_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m03_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m03_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m03_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m03_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m03_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m03_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m03_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m03_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m03_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m03_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m03_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m03_couplers_to_auto_pc_BID),
        .s_axi_bready(m03_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m03_couplers_to_auto_pc_RID),
        .s_axi_rlast(m03_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m03_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m03_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m03_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_pc_WVALID));
endmodule

module m04_couplers_imp_JCMVVN
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m04_couplers_ARADDR;
  wire auto_pc_to_m04_couplers_ARREADY;
  wire auto_pc_to_m04_couplers_ARVALID;
  wire [31:0]auto_pc_to_m04_couplers_AWADDR;
  wire auto_pc_to_m04_couplers_AWREADY;
  wire auto_pc_to_m04_couplers_AWVALID;
  wire auto_pc_to_m04_couplers_BREADY;
  wire [1:0]auto_pc_to_m04_couplers_BRESP;
  wire auto_pc_to_m04_couplers_BVALID;
  wire [31:0]auto_pc_to_m04_couplers_RDATA;
  wire auto_pc_to_m04_couplers_RREADY;
  wire [1:0]auto_pc_to_m04_couplers_RRESP;
  wire auto_pc_to_m04_couplers_RVALID;
  wire [31:0]auto_pc_to_m04_couplers_WDATA;
  wire auto_pc_to_m04_couplers_WREADY;
  wire [3:0]auto_pc_to_m04_couplers_WSTRB;
  wire auto_pc_to_m04_couplers_WVALID;
  wire [31:0]m04_couplers_to_auto_pc_ARADDR;
  wire [1:0]m04_couplers_to_auto_pc_ARBURST;
  wire [3:0]m04_couplers_to_auto_pc_ARCACHE;
  wire [11:0]m04_couplers_to_auto_pc_ARID;
  wire [7:0]m04_couplers_to_auto_pc_ARLEN;
  wire [0:0]m04_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m04_couplers_to_auto_pc_ARPROT;
  wire [3:0]m04_couplers_to_auto_pc_ARQOS;
  wire m04_couplers_to_auto_pc_ARREADY;
  wire [3:0]m04_couplers_to_auto_pc_ARREGION;
  wire [2:0]m04_couplers_to_auto_pc_ARSIZE;
  wire m04_couplers_to_auto_pc_ARVALID;
  wire [31:0]m04_couplers_to_auto_pc_AWADDR;
  wire [1:0]m04_couplers_to_auto_pc_AWBURST;
  wire [3:0]m04_couplers_to_auto_pc_AWCACHE;
  wire [11:0]m04_couplers_to_auto_pc_AWID;
  wire [7:0]m04_couplers_to_auto_pc_AWLEN;
  wire [0:0]m04_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m04_couplers_to_auto_pc_AWPROT;
  wire [3:0]m04_couplers_to_auto_pc_AWQOS;
  wire m04_couplers_to_auto_pc_AWREADY;
  wire [3:0]m04_couplers_to_auto_pc_AWREGION;
  wire [2:0]m04_couplers_to_auto_pc_AWSIZE;
  wire m04_couplers_to_auto_pc_AWVALID;
  wire [11:0]m04_couplers_to_auto_pc_BID;
  wire m04_couplers_to_auto_pc_BREADY;
  wire [1:0]m04_couplers_to_auto_pc_BRESP;
  wire m04_couplers_to_auto_pc_BVALID;
  wire [31:0]m04_couplers_to_auto_pc_RDATA;
  wire [11:0]m04_couplers_to_auto_pc_RID;
  wire m04_couplers_to_auto_pc_RLAST;
  wire m04_couplers_to_auto_pc_RREADY;
  wire [1:0]m04_couplers_to_auto_pc_RRESP;
  wire m04_couplers_to_auto_pc_RVALID;
  wire [31:0]m04_couplers_to_auto_pc_WDATA;
  wire m04_couplers_to_auto_pc_WLAST;
  wire m04_couplers_to_auto_pc_WREADY;
  wire [3:0]m04_couplers_to_auto_pc_WSTRB;
  wire m04_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m04_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m04_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m04_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m04_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m04_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = m04_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m04_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = m04_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m04_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m04_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m04_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m04_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m04_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m04_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m04_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign m04_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m04_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m04_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m04_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m04_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m04_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m04_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m04_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign m04_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m04_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m04_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m04_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m04_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m04_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m04_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m04_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m04_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  red_pitaya_ps_1_auto_pc_3 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m04_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m04_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m04_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m04_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m04_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m04_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m04_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m04_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m04_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m04_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m04_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m04_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m04_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m04_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m04_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m04_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m04_couplers_WVALID),
        .s_axi_araddr(m04_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m04_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m04_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m04_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m04_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m04_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m04_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m04_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m04_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m04_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m04_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m04_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m04_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m04_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m04_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m04_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m04_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m04_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m04_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m04_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m04_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m04_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m04_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m04_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m04_couplers_to_auto_pc_BID),
        .s_axi_bready(m04_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m04_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m04_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m04_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m04_couplers_to_auto_pc_RID),
        .s_axi_rlast(m04_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m04_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m04_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m04_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m04_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m04_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m04_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m04_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m04_couplers_to_auto_pc_WVALID));
endmodule

module m05_couplers_imp_1Q7KAUL
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [11:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [11:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire [1:0]m05_couplers_to_m05_couplers_AWBURST;
  wire [3:0]m05_couplers_to_m05_couplers_AWCACHE;
  wire [11:0]m05_couplers_to_m05_couplers_AWID;
  wire [7:0]m05_couplers_to_m05_couplers_AWLEN;
  wire m05_couplers_to_m05_couplers_AWLOCK;
  wire [2:0]m05_couplers_to_m05_couplers_AWPROT;
  wire m05_couplers_to_m05_couplers_AWREADY;
  wire [2:0]m05_couplers_to_m05_couplers_AWSIZE;
  wire m05_couplers_to_m05_couplers_AWVALID;
  wire [11:0]m05_couplers_to_m05_couplers_BID;
  wire m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire m05_couplers_to_m05_couplers_WLAST;
  wire m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m05_couplers_to_m05_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m05_couplers_to_m05_couplers_AWCACHE;
  assign M_AXI_awid[11:0] = m05_couplers_to_m05_couplers_AWID;
  assign M_AXI_awlen[7:0] = m05_couplers_to_m05_couplers_AWLEN;
  assign M_AXI_awlock = m05_couplers_to_m05_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m05_couplers_to_m05_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m05_couplers_to_m05_couplers_AWSIZE;
  assign M_AXI_awvalid = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wlast = m05_couplers_to_m05_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_awready = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bid[11:0] = m05_couplers_to_m05_couplers_BID;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_wready = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m05_couplers_to_m05_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m05_couplers_to_m05_couplers_AWID = S_AXI_awid[11:0];
  assign m05_couplers_to_m05_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m05_couplers_to_m05_couplers_AWLOCK = S_AXI_awlock;
  assign m05_couplers_to_m05_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready;
  assign m05_couplers_to_m05_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_m05_couplers_BID = M_AXI_bid[11:0];
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready;
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WLAST = S_AXI_wlast;
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid;
endmodule

module m06_couplers_imp_1NC14FY
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arburst;
  output M_AXI_arcache;
  output M_AXI_arlen;
  output M_AXI_arlock;
  output M_AXI_arprot;
  output M_AXI_arqos;
  input M_AXI_arready;
  output M_AXI_arregion;
  output M_AXI_arsize;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awburst;
  output M_AXI_awcache;
  output M_AXI_awlen;
  output M_AXI_awlock;
  output M_AXI_awprot;
  output M_AXI_awqos;
  input M_AXI_awready;
  output M_AXI_awregion;
  output M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arburst;
  input S_AXI_arcache;
  input S_AXI_arlen;
  input S_AXI_arlock;
  input S_AXI_arprot;
  input S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arregion;
  input S_AXI_arsize;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awburst;
  input S_AXI_awcache;
  input S_AXI_awlen;
  input S_AXI_awlock;
  input S_AXI_awprot;
  input S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awregion;
  input S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m06_couplers_to_m06_couplers_ARADDR;
  wire m06_couplers_to_m06_couplers_ARBURST;
  wire m06_couplers_to_m06_couplers_ARCACHE;
  wire m06_couplers_to_m06_couplers_ARLEN;
  wire m06_couplers_to_m06_couplers_ARLOCK;
  wire m06_couplers_to_m06_couplers_ARPROT;
  wire m06_couplers_to_m06_couplers_ARQOS;
  wire m06_couplers_to_m06_couplers_ARREADY;
  wire m06_couplers_to_m06_couplers_ARREGION;
  wire m06_couplers_to_m06_couplers_ARSIZE;
  wire m06_couplers_to_m06_couplers_ARVALID;
  wire m06_couplers_to_m06_couplers_AWADDR;
  wire m06_couplers_to_m06_couplers_AWBURST;
  wire m06_couplers_to_m06_couplers_AWCACHE;
  wire m06_couplers_to_m06_couplers_AWLEN;
  wire m06_couplers_to_m06_couplers_AWLOCK;
  wire m06_couplers_to_m06_couplers_AWPROT;
  wire m06_couplers_to_m06_couplers_AWQOS;
  wire m06_couplers_to_m06_couplers_AWREADY;
  wire m06_couplers_to_m06_couplers_AWREGION;
  wire m06_couplers_to_m06_couplers_AWSIZE;
  wire m06_couplers_to_m06_couplers_AWVALID;
  wire m06_couplers_to_m06_couplers_BREADY;
  wire m06_couplers_to_m06_couplers_BRESP;
  wire m06_couplers_to_m06_couplers_BVALID;
  wire m06_couplers_to_m06_couplers_RDATA;
  wire m06_couplers_to_m06_couplers_RLAST;
  wire m06_couplers_to_m06_couplers_RREADY;
  wire m06_couplers_to_m06_couplers_RRESP;
  wire m06_couplers_to_m06_couplers_RVALID;
  wire m06_couplers_to_m06_couplers_WDATA;
  wire m06_couplers_to_m06_couplers_WLAST;
  wire m06_couplers_to_m06_couplers_WREADY;
  wire m06_couplers_to_m06_couplers_WSTRB;
  wire m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arburst = m06_couplers_to_m06_couplers_ARBURST;
  assign M_AXI_arcache = m06_couplers_to_m06_couplers_ARCACHE;
  assign M_AXI_arlen = m06_couplers_to_m06_couplers_ARLEN;
  assign M_AXI_arlock = m06_couplers_to_m06_couplers_ARLOCK;
  assign M_AXI_arprot = m06_couplers_to_m06_couplers_ARPROT;
  assign M_AXI_arqos = m06_couplers_to_m06_couplers_ARQOS;
  assign M_AXI_arregion = m06_couplers_to_m06_couplers_ARREGION;
  assign M_AXI_arsize = m06_couplers_to_m06_couplers_ARSIZE;
  assign M_AXI_arvalid = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awburst = m06_couplers_to_m06_couplers_AWBURST;
  assign M_AXI_awcache = m06_couplers_to_m06_couplers_AWCACHE;
  assign M_AXI_awlen = m06_couplers_to_m06_couplers_AWLEN;
  assign M_AXI_awlock = m06_couplers_to_m06_couplers_AWLOCK;
  assign M_AXI_awprot = m06_couplers_to_m06_couplers_AWPROT;
  assign M_AXI_awqos = m06_couplers_to_m06_couplers_AWQOS;
  assign M_AXI_awregion = m06_couplers_to_m06_couplers_AWREGION;
  assign M_AXI_awsize = m06_couplers_to_m06_couplers_AWSIZE;
  assign M_AXI_awvalid = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wlast = m06_couplers_to_m06_couplers_WLAST;
  assign M_AXI_wstrb = m06_couplers_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rlast = m06_couplers_to_m06_couplers_RLAST;
  assign S_AXI_rresp = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr;
  assign m06_couplers_to_m06_couplers_ARBURST = S_AXI_arburst;
  assign m06_couplers_to_m06_couplers_ARCACHE = S_AXI_arcache;
  assign m06_couplers_to_m06_couplers_ARLEN = S_AXI_arlen;
  assign m06_couplers_to_m06_couplers_ARLOCK = S_AXI_arlock;
  assign m06_couplers_to_m06_couplers_ARPROT = S_AXI_arprot;
  assign m06_couplers_to_m06_couplers_ARQOS = S_AXI_arqos;
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready;
  assign m06_couplers_to_m06_couplers_ARREGION = S_AXI_arregion;
  assign m06_couplers_to_m06_couplers_ARSIZE = S_AXI_arsize;
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr;
  assign m06_couplers_to_m06_couplers_AWBURST = S_AXI_awburst;
  assign m06_couplers_to_m06_couplers_AWCACHE = S_AXI_awcache;
  assign m06_couplers_to_m06_couplers_AWLEN = S_AXI_awlen;
  assign m06_couplers_to_m06_couplers_AWLOCK = S_AXI_awlock;
  assign m06_couplers_to_m06_couplers_AWPROT = S_AXI_awprot;
  assign m06_couplers_to_m06_couplers_AWQOS = S_AXI_awqos;
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready;
  assign m06_couplers_to_m06_couplers_AWREGION = S_AXI_awregion;
  assign m06_couplers_to_m06_couplers_AWSIZE = S_AXI_awsize;
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready;
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp;
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata;
  assign m06_couplers_to_m06_couplers_RLAST = M_AXI_rlast;
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready;
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp;
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata;
  assign m06_couplers_to_m06_couplers_WLAST = S_AXI_wlast;
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_m06_couplers_WSTRB = S_AXI_wstrb;
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid;
endmodule

module m07_couplers_imp_V603OW
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arburst;
  output M_AXI_arcache;
  output M_AXI_arlen;
  output M_AXI_arlock;
  output M_AXI_arprot;
  output M_AXI_arqos;
  input M_AXI_arready;
  output M_AXI_arregion;
  output M_AXI_arsize;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awburst;
  output M_AXI_awcache;
  output M_AXI_awlen;
  output M_AXI_awlock;
  output M_AXI_awprot;
  output M_AXI_awqos;
  input M_AXI_awready;
  output M_AXI_awregion;
  output M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arburst;
  input S_AXI_arcache;
  input S_AXI_arlen;
  input S_AXI_arlock;
  input S_AXI_arprot;
  input S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arregion;
  input S_AXI_arsize;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awburst;
  input S_AXI_awcache;
  input S_AXI_awlen;
  input S_AXI_awlock;
  input S_AXI_awprot;
  input S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awregion;
  input S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m07_couplers_to_m07_couplers_ARADDR;
  wire m07_couplers_to_m07_couplers_ARBURST;
  wire m07_couplers_to_m07_couplers_ARCACHE;
  wire m07_couplers_to_m07_couplers_ARLEN;
  wire m07_couplers_to_m07_couplers_ARLOCK;
  wire m07_couplers_to_m07_couplers_ARPROT;
  wire m07_couplers_to_m07_couplers_ARQOS;
  wire m07_couplers_to_m07_couplers_ARREADY;
  wire m07_couplers_to_m07_couplers_ARREGION;
  wire m07_couplers_to_m07_couplers_ARSIZE;
  wire m07_couplers_to_m07_couplers_ARVALID;
  wire m07_couplers_to_m07_couplers_AWADDR;
  wire m07_couplers_to_m07_couplers_AWBURST;
  wire m07_couplers_to_m07_couplers_AWCACHE;
  wire m07_couplers_to_m07_couplers_AWLEN;
  wire m07_couplers_to_m07_couplers_AWLOCK;
  wire m07_couplers_to_m07_couplers_AWPROT;
  wire m07_couplers_to_m07_couplers_AWQOS;
  wire m07_couplers_to_m07_couplers_AWREADY;
  wire m07_couplers_to_m07_couplers_AWREGION;
  wire m07_couplers_to_m07_couplers_AWSIZE;
  wire m07_couplers_to_m07_couplers_AWVALID;
  wire m07_couplers_to_m07_couplers_BREADY;
  wire m07_couplers_to_m07_couplers_BRESP;
  wire m07_couplers_to_m07_couplers_BVALID;
  wire m07_couplers_to_m07_couplers_RDATA;
  wire m07_couplers_to_m07_couplers_RLAST;
  wire m07_couplers_to_m07_couplers_RREADY;
  wire m07_couplers_to_m07_couplers_RRESP;
  wire m07_couplers_to_m07_couplers_RVALID;
  wire m07_couplers_to_m07_couplers_WDATA;
  wire m07_couplers_to_m07_couplers_WLAST;
  wire m07_couplers_to_m07_couplers_WREADY;
  wire m07_couplers_to_m07_couplers_WSTRB;
  wire m07_couplers_to_m07_couplers_WVALID;

  assign M_AXI_araddr = m07_couplers_to_m07_couplers_ARADDR;
  assign M_AXI_arburst = m07_couplers_to_m07_couplers_ARBURST;
  assign M_AXI_arcache = m07_couplers_to_m07_couplers_ARCACHE;
  assign M_AXI_arlen = m07_couplers_to_m07_couplers_ARLEN;
  assign M_AXI_arlock = m07_couplers_to_m07_couplers_ARLOCK;
  assign M_AXI_arprot = m07_couplers_to_m07_couplers_ARPROT;
  assign M_AXI_arqos = m07_couplers_to_m07_couplers_ARQOS;
  assign M_AXI_arregion = m07_couplers_to_m07_couplers_ARREGION;
  assign M_AXI_arsize = m07_couplers_to_m07_couplers_ARSIZE;
  assign M_AXI_arvalid = m07_couplers_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr = m07_couplers_to_m07_couplers_AWADDR;
  assign M_AXI_awburst = m07_couplers_to_m07_couplers_AWBURST;
  assign M_AXI_awcache = m07_couplers_to_m07_couplers_AWCACHE;
  assign M_AXI_awlen = m07_couplers_to_m07_couplers_AWLEN;
  assign M_AXI_awlock = m07_couplers_to_m07_couplers_AWLOCK;
  assign M_AXI_awprot = m07_couplers_to_m07_couplers_AWPROT;
  assign M_AXI_awqos = m07_couplers_to_m07_couplers_AWQOS;
  assign M_AXI_awregion = m07_couplers_to_m07_couplers_AWREGION;
  assign M_AXI_awsize = m07_couplers_to_m07_couplers_AWSIZE;
  assign M_AXI_awvalid = m07_couplers_to_m07_couplers_AWVALID;
  assign M_AXI_bready = m07_couplers_to_m07_couplers_BREADY;
  assign M_AXI_rready = m07_couplers_to_m07_couplers_RREADY;
  assign M_AXI_wdata = m07_couplers_to_m07_couplers_WDATA;
  assign M_AXI_wlast = m07_couplers_to_m07_couplers_WLAST;
  assign M_AXI_wstrb = m07_couplers_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = m07_couplers_to_m07_couplers_WVALID;
  assign S_AXI_arready = m07_couplers_to_m07_couplers_ARREADY;
  assign S_AXI_awready = m07_couplers_to_m07_couplers_AWREADY;
  assign S_AXI_bresp = m07_couplers_to_m07_couplers_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_m07_couplers_BVALID;
  assign S_AXI_rdata = m07_couplers_to_m07_couplers_RDATA;
  assign S_AXI_rlast = m07_couplers_to_m07_couplers_RLAST;
  assign S_AXI_rresp = m07_couplers_to_m07_couplers_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_m07_couplers_RVALID;
  assign S_AXI_wready = m07_couplers_to_m07_couplers_WREADY;
  assign m07_couplers_to_m07_couplers_ARADDR = S_AXI_araddr;
  assign m07_couplers_to_m07_couplers_ARBURST = S_AXI_arburst;
  assign m07_couplers_to_m07_couplers_ARCACHE = S_AXI_arcache;
  assign m07_couplers_to_m07_couplers_ARLEN = S_AXI_arlen;
  assign m07_couplers_to_m07_couplers_ARLOCK = S_AXI_arlock;
  assign m07_couplers_to_m07_couplers_ARPROT = S_AXI_arprot;
  assign m07_couplers_to_m07_couplers_ARQOS = S_AXI_arqos;
  assign m07_couplers_to_m07_couplers_ARREADY = M_AXI_arready;
  assign m07_couplers_to_m07_couplers_ARREGION = S_AXI_arregion;
  assign m07_couplers_to_m07_couplers_ARSIZE = S_AXI_arsize;
  assign m07_couplers_to_m07_couplers_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_m07_couplers_AWADDR = S_AXI_awaddr;
  assign m07_couplers_to_m07_couplers_AWBURST = S_AXI_awburst;
  assign m07_couplers_to_m07_couplers_AWCACHE = S_AXI_awcache;
  assign m07_couplers_to_m07_couplers_AWLEN = S_AXI_awlen;
  assign m07_couplers_to_m07_couplers_AWLOCK = S_AXI_awlock;
  assign m07_couplers_to_m07_couplers_AWPROT = S_AXI_awprot;
  assign m07_couplers_to_m07_couplers_AWQOS = S_AXI_awqos;
  assign m07_couplers_to_m07_couplers_AWREADY = M_AXI_awready;
  assign m07_couplers_to_m07_couplers_AWREGION = S_AXI_awregion;
  assign m07_couplers_to_m07_couplers_AWSIZE = S_AXI_awsize;
  assign m07_couplers_to_m07_couplers_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_m07_couplers_BREADY = S_AXI_bready;
  assign m07_couplers_to_m07_couplers_BRESP = M_AXI_bresp;
  assign m07_couplers_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign m07_couplers_to_m07_couplers_RDATA = M_AXI_rdata;
  assign m07_couplers_to_m07_couplers_RLAST = M_AXI_rlast;
  assign m07_couplers_to_m07_couplers_RREADY = S_AXI_rready;
  assign m07_couplers_to_m07_couplers_RRESP = M_AXI_rresp;
  assign m07_couplers_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign m07_couplers_to_m07_couplers_WDATA = S_AXI_wdata;
  assign m07_couplers_to_m07_couplers_WLAST = S_AXI_wlast;
  assign m07_couplers_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_m07_couplers_WSTRB = S_AXI_wstrb;
  assign m07_couplers_to_m07_couplers_WVALID = S_AXI_wvalid;
endmodule

(* CORE_GENERATION_INFO = "red_pitaya_ps_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=red_pitaya_ps_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=31,numReposBlks=21,numNonXlnxBlks=5,numHierBlks=10,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=20,da_clkrst_cnt=5,synth_mode=None}" *) (* HW_HANDOFF = "red_pitaya_ps_1.hwdef" *) 
module red_pitaya_ps_1
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    adc_cdcs_o,
    adc_clk_i_clk_n,
    adc_clk_i_clk_p,
    adc_dat_a,
    adc_dat_b,
    dac_clk_o,
    dac_dat_o,
    dac_rst_o,
    dac_sel_o,
    dac_wrt_o);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  output [0:0]adc_cdcs_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 adc_clk_i CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk_i, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]adc_clk_i_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 adc_clk_i CLK_P" *) input [0:0]adc_clk_i_clk_p;
  input [13:0]adc_dat_a;
  input [13:0]adc_dat_b;
  output dac_clk_o;
  output [13:0]dac_dat_o;
  output dac_rst_o;
  output dac_sel_o;
  output [0:0]dac_wrt_o;

  wire [0:0]CLK_IN_D_0_1_CLK_N;
  wire [0:0]CLK_IN_D_0_1_CLK_P;
  wire [0:0]adc_clk_stabilizer_dout;
  wire [13:0]adc_dat_a_0_1;
  wire [13:0]adc_dat_b_0_1;
  wire adc_data_fifo_interrupt;
  wire [31:0]axi_cfg_register_0_cfg_data;
  wire [31:0]axis_clock_converter_0_m_axis_tdata;
  wire axis_clock_converter_0_m_axis_tvalid;
  wire [31:0]axis_decimator_0_M_AXIS_TDATA;
  wire axis_decimator_0_M_AXIS_TREADY;
  wire axis_decimator_0_M_AXIS_TVALID;
  wire axis_decimator_0_s_axis_tready;
  wire [31:0]axis_packetizer_0_M_AXIS_TDATA;
  wire axis_packetizer_0_M_AXIS_TLAST;
  wire axis_packetizer_0_M_AXIS_TREADY;
  wire axis_packetizer_0_M_AXIS_TVALID;
  wire [31:0]axis_red_pitaya_adc_0_M_AXIS_TDATA;
  wire axis_red_pitaya_adc_0_M_AXIS_TVALID;
  wire [0:0]clock_in_IBUF_OUT;
  wire [31:0]dac_data_fifo_AXI_STR_TXD_TDATA;
  wire dac_data_fifo_AXI_STR_TXD_TREADY;
  wire dac_data_fifo_AXI_STR_TXD_TVALID;
  wire dac_out_0_dac_clk;
  wire [13:0]dac_out_0_dac_dat;
  wire dac_out_0_dac_rst;
  wire dac_out_0_dac_sel;
  wire [31:0]decimation_register_cfg_data;
  wire [14:0]red_pitaya_ps_DDR_ADDR;
  wire [2:0]red_pitaya_ps_DDR_BA;
  wire red_pitaya_ps_DDR_CAS_N;
  wire red_pitaya_ps_DDR_CKE;
  wire red_pitaya_ps_DDR_CK_N;
  wire red_pitaya_ps_DDR_CK_P;
  wire red_pitaya_ps_DDR_CS_N;
  wire [3:0]red_pitaya_ps_DDR_DM;
  wire [31:0]red_pitaya_ps_DDR_DQ;
  wire [3:0]red_pitaya_ps_DDR_DQS_N;
  wire [3:0]red_pitaya_ps_DDR_DQS_P;
  wire red_pitaya_ps_DDR_ODT;
  wire red_pitaya_ps_DDR_RAS_N;
  wire red_pitaya_ps_DDR_RESET_N;
  wire red_pitaya_ps_DDR_WE_N;
  wire red_pitaya_ps_FCLK_CLK0;
  wire red_pitaya_ps_FCLK_RESET0_N;
  wire red_pitaya_ps_FIXED_IO_DDR_VRN;
  wire red_pitaya_ps_FIXED_IO_DDR_VRP;
  wire [53:0]red_pitaya_ps_FIXED_IO_MIO;
  wire red_pitaya_ps_FIXED_IO_PS_CLK;
  wire red_pitaya_ps_FIXED_IO_PS_PORB;
  wire red_pitaya_ps_FIXED_IO_PS_SRSTB;
  wire [31:0]red_pitaya_ps_M_AXI_GP0_ARADDR;
  wire [1:0]red_pitaya_ps_M_AXI_GP0_ARBURST;
  wire [3:0]red_pitaya_ps_M_AXI_GP0_ARCACHE;
  wire [11:0]red_pitaya_ps_M_AXI_GP0_ARID;
  wire [3:0]red_pitaya_ps_M_AXI_GP0_ARLEN;
  wire [1:0]red_pitaya_ps_M_AXI_GP0_ARLOCK;
  wire [2:0]red_pitaya_ps_M_AXI_GP0_ARPROT;
  wire [3:0]red_pitaya_ps_M_AXI_GP0_ARQOS;
  wire red_pitaya_ps_M_AXI_GP0_ARREADY;
  wire [2:0]red_pitaya_ps_M_AXI_GP0_ARSIZE;
  wire red_pitaya_ps_M_AXI_GP0_ARVALID;
  wire [31:0]red_pitaya_ps_M_AXI_GP0_AWADDR;
  wire [1:0]red_pitaya_ps_M_AXI_GP0_AWBURST;
  wire [3:0]red_pitaya_ps_M_AXI_GP0_AWCACHE;
  wire [11:0]red_pitaya_ps_M_AXI_GP0_AWID;
  wire [3:0]red_pitaya_ps_M_AXI_GP0_AWLEN;
  wire [1:0]red_pitaya_ps_M_AXI_GP0_AWLOCK;
  wire [2:0]red_pitaya_ps_M_AXI_GP0_AWPROT;
  wire [3:0]red_pitaya_ps_M_AXI_GP0_AWQOS;
  wire red_pitaya_ps_M_AXI_GP0_AWREADY;
  wire [2:0]red_pitaya_ps_M_AXI_GP0_AWSIZE;
  wire red_pitaya_ps_M_AXI_GP0_AWVALID;
  wire [11:0]red_pitaya_ps_M_AXI_GP0_BID;
  wire red_pitaya_ps_M_AXI_GP0_BREADY;
  wire [1:0]red_pitaya_ps_M_AXI_GP0_BRESP;
  wire red_pitaya_ps_M_AXI_GP0_BVALID;
  wire [31:0]red_pitaya_ps_M_AXI_GP0_RDATA;
  wire [11:0]red_pitaya_ps_M_AXI_GP0_RID;
  wire red_pitaya_ps_M_AXI_GP0_RLAST;
  wire red_pitaya_ps_M_AXI_GP0_RREADY;
  wire [1:0]red_pitaya_ps_M_AXI_GP0_RRESP;
  wire red_pitaya_ps_M_AXI_GP0_RVALID;
  wire [31:0]red_pitaya_ps_M_AXI_GP0_WDATA;
  wire [11:0]red_pitaya_ps_M_AXI_GP0_WID;
  wire red_pitaya_ps_M_AXI_GP0_WLAST;
  wire red_pitaya_ps_M_AXI_GP0_WREADY;
  wire [3:0]red_pitaya_ps_M_AXI_GP0_WSTRB;
  wire red_pitaya_ps_M_AXI_GP0_WVALID;
  wire [31:0]red_pitaya_ps_axi_periph_M00_AXI_ARADDR;
  wire red_pitaya_ps_axi_periph_M00_AXI_ARREADY;
  wire red_pitaya_ps_axi_periph_M00_AXI_ARVALID;
  wire [31:0]red_pitaya_ps_axi_periph_M00_AXI_AWADDR;
  wire red_pitaya_ps_axi_periph_M00_AXI_AWREADY;
  wire red_pitaya_ps_axi_periph_M00_AXI_AWVALID;
  wire red_pitaya_ps_axi_periph_M00_AXI_BREADY;
  wire [1:0]red_pitaya_ps_axi_periph_M00_AXI_BRESP;
  wire red_pitaya_ps_axi_periph_M00_AXI_BVALID;
  wire [31:0]red_pitaya_ps_axi_periph_M00_AXI_RDATA;
  wire red_pitaya_ps_axi_periph_M00_AXI_RREADY;
  wire [1:0]red_pitaya_ps_axi_periph_M00_AXI_RRESP;
  wire red_pitaya_ps_axi_periph_M00_AXI_RVALID;
  wire [31:0]red_pitaya_ps_axi_periph_M00_AXI_WDATA;
  wire red_pitaya_ps_axi_periph_M00_AXI_WREADY;
  wire [3:0]red_pitaya_ps_axi_periph_M00_AXI_WSTRB;
  wire red_pitaya_ps_axi_periph_M00_AXI_WVALID;
  wire [31:0]red_pitaya_ps_axi_periph_M01_AXI_ARADDR;
  wire red_pitaya_ps_axi_periph_M01_AXI_ARREADY;
  wire red_pitaya_ps_axi_periph_M01_AXI_ARVALID;
  wire [31:0]red_pitaya_ps_axi_periph_M01_AXI_AWADDR;
  wire red_pitaya_ps_axi_periph_M01_AXI_AWREADY;
  wire red_pitaya_ps_axi_periph_M01_AXI_AWVALID;
  wire red_pitaya_ps_axi_periph_M01_AXI_BREADY;
  wire [1:0]red_pitaya_ps_axi_periph_M01_AXI_BRESP;
  wire red_pitaya_ps_axi_periph_M01_AXI_BVALID;
  wire [31:0]red_pitaya_ps_axi_periph_M01_AXI_RDATA;
  wire red_pitaya_ps_axi_periph_M01_AXI_RREADY;
  wire [1:0]red_pitaya_ps_axi_periph_M01_AXI_RRESP;
  wire red_pitaya_ps_axi_periph_M01_AXI_RVALID;
  wire [31:0]red_pitaya_ps_axi_periph_M01_AXI_WDATA;
  wire red_pitaya_ps_axi_periph_M01_AXI_WREADY;
  wire [3:0]red_pitaya_ps_axi_periph_M01_AXI_WSTRB;
  wire red_pitaya_ps_axi_periph_M01_AXI_WVALID;
  wire [31:0]red_pitaya_ps_axi_periph_M02_AXI_ARADDR;
  wire [1:0]red_pitaya_ps_axi_periph_M02_AXI_ARBURST;
  wire [3:0]red_pitaya_ps_axi_periph_M02_AXI_ARCACHE;
  wire [11:0]red_pitaya_ps_axi_periph_M02_AXI_ARID;
  wire [7:0]red_pitaya_ps_axi_periph_M02_AXI_ARLEN;
  wire [0:0]red_pitaya_ps_axi_periph_M02_AXI_ARLOCK;
  wire [2:0]red_pitaya_ps_axi_periph_M02_AXI_ARPROT;
  wire red_pitaya_ps_axi_periph_M02_AXI_ARREADY;
  wire [2:0]red_pitaya_ps_axi_periph_M02_AXI_ARSIZE;
  wire [0:0]red_pitaya_ps_axi_periph_M02_AXI_ARVALID;
  wire [31:0]red_pitaya_ps_axi_periph_M02_AXI_RDATA;
  wire [11:0]red_pitaya_ps_axi_periph_M02_AXI_RID;
  wire red_pitaya_ps_axi_periph_M02_AXI_RLAST;
  wire [0:0]red_pitaya_ps_axi_periph_M02_AXI_RREADY;
  wire [1:0]red_pitaya_ps_axi_periph_M02_AXI_RRESP;
  wire red_pitaya_ps_axi_periph_M02_AXI_RVALID;
  wire [31:0]red_pitaya_ps_axi_periph_M03_AXI_ARADDR;
  wire red_pitaya_ps_axi_periph_M03_AXI_ARREADY;
  wire red_pitaya_ps_axi_periph_M03_AXI_ARVALID;
  wire [31:0]red_pitaya_ps_axi_periph_M03_AXI_AWADDR;
  wire red_pitaya_ps_axi_periph_M03_AXI_AWREADY;
  wire red_pitaya_ps_axi_periph_M03_AXI_AWVALID;
  wire red_pitaya_ps_axi_periph_M03_AXI_BREADY;
  wire [1:0]red_pitaya_ps_axi_periph_M03_AXI_BRESP;
  wire red_pitaya_ps_axi_periph_M03_AXI_BVALID;
  wire [31:0]red_pitaya_ps_axi_periph_M03_AXI_RDATA;
  wire red_pitaya_ps_axi_periph_M03_AXI_RREADY;
  wire [1:0]red_pitaya_ps_axi_periph_M03_AXI_RRESP;
  wire red_pitaya_ps_axi_periph_M03_AXI_RVALID;
  wire [31:0]red_pitaya_ps_axi_periph_M03_AXI_WDATA;
  wire red_pitaya_ps_axi_periph_M03_AXI_WREADY;
  wire [3:0]red_pitaya_ps_axi_periph_M03_AXI_WSTRB;
  wire red_pitaya_ps_axi_periph_M03_AXI_WVALID;
  wire [31:0]red_pitaya_ps_axi_periph_M04_AXI_ARADDR;
  wire red_pitaya_ps_axi_periph_M04_AXI_ARREADY;
  wire red_pitaya_ps_axi_periph_M04_AXI_ARVALID;
  wire [31:0]red_pitaya_ps_axi_periph_M04_AXI_AWADDR;
  wire red_pitaya_ps_axi_periph_M04_AXI_AWREADY;
  wire red_pitaya_ps_axi_periph_M04_AXI_AWVALID;
  wire red_pitaya_ps_axi_periph_M04_AXI_BREADY;
  wire [1:0]red_pitaya_ps_axi_periph_M04_AXI_BRESP;
  wire red_pitaya_ps_axi_periph_M04_AXI_BVALID;
  wire [31:0]red_pitaya_ps_axi_periph_M04_AXI_RDATA;
  wire red_pitaya_ps_axi_periph_M04_AXI_RREADY;
  wire [1:0]red_pitaya_ps_axi_periph_M04_AXI_RRESP;
  wire red_pitaya_ps_axi_periph_M04_AXI_RVALID;
  wire [31:0]red_pitaya_ps_axi_periph_M04_AXI_WDATA;
  wire red_pitaya_ps_axi_periph_M04_AXI_WREADY;
  wire [3:0]red_pitaya_ps_axi_periph_M04_AXI_WSTRB;
  wire red_pitaya_ps_axi_periph_M04_AXI_WVALID;
  wire [31:0]red_pitaya_ps_axi_periph_M05_AXI_AWADDR;
  wire [1:0]red_pitaya_ps_axi_periph_M05_AXI_AWBURST;
  wire [3:0]red_pitaya_ps_axi_periph_M05_AXI_AWCACHE;
  wire [11:0]red_pitaya_ps_axi_periph_M05_AXI_AWID;
  wire [7:0]red_pitaya_ps_axi_periph_M05_AXI_AWLEN;
  wire red_pitaya_ps_axi_periph_M05_AXI_AWLOCK;
  wire [2:0]red_pitaya_ps_axi_periph_M05_AXI_AWPROT;
  wire red_pitaya_ps_axi_periph_M05_AXI_AWREADY;
  wire [2:0]red_pitaya_ps_axi_periph_M05_AXI_AWSIZE;
  wire red_pitaya_ps_axi_periph_M05_AXI_AWVALID;
  wire [11:0]red_pitaya_ps_axi_periph_M05_AXI_BID;
  wire red_pitaya_ps_axi_periph_M05_AXI_BREADY;
  wire [1:0]red_pitaya_ps_axi_periph_M05_AXI_BRESP;
  wire red_pitaya_ps_axi_periph_M05_AXI_BVALID;
  wire [31:0]red_pitaya_ps_axi_periph_M05_AXI_WDATA;
  wire red_pitaya_ps_axi_periph_M05_AXI_WLAST;
  wire red_pitaya_ps_axi_periph_M05_AXI_WREADY;
  wire [3:0]red_pitaya_ps_axi_periph_M05_AXI_WSTRB;
  wire red_pitaya_ps_axi_periph_M05_AXI_WVALID;
  wire [0:0]rst_red_pitaya_ps_125M_interconnect_aresetn;
  wire [0:0]rst_red_pitaya_ps_125M_peripheral_aresetn;
  wire [0:0]util_vector_logic_0_Res;
  wire [31:0]xlconstant_0_dout;

  assign CLK_IN_D_0_1_CLK_N = adc_clk_i_clk_n[0];
  assign CLK_IN_D_0_1_CLK_P = adc_clk_i_clk_p[0];
  assign adc_cdcs_o[0] = adc_clk_stabilizer_dout;
  assign adc_dat_a_0_1 = adc_dat_a[13:0];
  assign adc_dat_b_0_1 = adc_dat_b[13:0];
  assign dac_clk_o = dac_out_0_dac_clk;
  assign dac_dat_o[13:0] = dac_out_0_dac_dat;
  assign dac_rst_o = dac_out_0_dac_rst;
  assign dac_sel_o = dac_out_0_dac_sel;
  assign dac_wrt_o[0] = dac_out_0_dac_clk;
  red_pitaya_ps_1_xlconstant_0_0 adc_clk_stabilizer
       (.dout(adc_clk_stabilizer_dout));
  red_pitaya_ps_1_data_fifo_0 adc_data_fifo
       (.axi_str_rxd_tdata(axis_packetizer_0_M_AXIS_TDATA),
        .axi_str_rxd_tlast(axis_packetizer_0_M_AXIS_TLAST),
        .axi_str_rxd_tready(axis_packetizer_0_M_AXIS_TREADY),
        .axi_str_rxd_tvalid(axis_packetizer_0_M_AXIS_TVALID),
        .interrupt(adc_data_fifo_interrupt),
        .s_axi4_araddr(red_pitaya_ps_axi_periph_M02_AXI_ARADDR),
        .s_axi4_arburst(red_pitaya_ps_axi_periph_M02_AXI_ARBURST),
        .s_axi4_arcache(red_pitaya_ps_axi_periph_M02_AXI_ARCACHE),
        .s_axi4_arid(red_pitaya_ps_axi_periph_M02_AXI_ARID),
        .s_axi4_arlen(red_pitaya_ps_axi_periph_M02_AXI_ARLEN),
        .s_axi4_arlock(red_pitaya_ps_axi_periph_M02_AXI_ARLOCK),
        .s_axi4_arprot(red_pitaya_ps_axi_periph_M02_AXI_ARPROT),
        .s_axi4_arready(red_pitaya_ps_axi_periph_M02_AXI_ARREADY),
        .s_axi4_arsize(red_pitaya_ps_axi_periph_M02_AXI_ARSIZE),
        .s_axi4_arvalid(red_pitaya_ps_axi_periph_M02_AXI_ARVALID),
        .s_axi4_rdata(red_pitaya_ps_axi_periph_M02_AXI_RDATA),
        .s_axi4_rid(red_pitaya_ps_axi_periph_M02_AXI_RID),
        .s_axi4_rlast(red_pitaya_ps_axi_periph_M02_AXI_RLAST),
        .s_axi4_rready(red_pitaya_ps_axi_periph_M02_AXI_RREADY),
        .s_axi4_rresp(red_pitaya_ps_axi_periph_M02_AXI_RRESP),
        .s_axi4_rvalid(red_pitaya_ps_axi_periph_M02_AXI_RVALID),
        .s_axi_aclk(red_pitaya_ps_FCLK_CLK0),
        .s_axi_araddr(red_pitaya_ps_axi_periph_M01_AXI_ARADDR),
        .s_axi_aresetn(rst_red_pitaya_ps_125M_peripheral_aresetn),
        .s_axi_arready(red_pitaya_ps_axi_periph_M01_AXI_ARREADY),
        .s_axi_arvalid(red_pitaya_ps_axi_periph_M01_AXI_ARVALID),
        .s_axi_awaddr(red_pitaya_ps_axi_periph_M01_AXI_AWADDR),
        .s_axi_awready(red_pitaya_ps_axi_periph_M01_AXI_AWREADY),
        .s_axi_awvalid(red_pitaya_ps_axi_periph_M01_AXI_AWVALID),
        .s_axi_bready(red_pitaya_ps_axi_periph_M01_AXI_BREADY),
        .s_axi_bresp(red_pitaya_ps_axi_periph_M01_AXI_BRESP),
        .s_axi_bvalid(red_pitaya_ps_axi_periph_M01_AXI_BVALID),
        .s_axi_rdata(red_pitaya_ps_axi_periph_M01_AXI_RDATA),
        .s_axi_rready(red_pitaya_ps_axi_periph_M01_AXI_RREADY),
        .s_axi_rresp(red_pitaya_ps_axi_periph_M01_AXI_RRESP),
        .s_axi_rvalid(red_pitaya_ps_axi_periph_M01_AXI_RVALID),
        .s_axi_wdata(red_pitaya_ps_axi_periph_M01_AXI_WDATA),
        .s_axi_wready(red_pitaya_ps_axi_periph_M01_AXI_WREADY),
        .s_axi_wstrb(red_pitaya_ps_axi_periph_M01_AXI_WSTRB),
        .s_axi_wvalid(red_pitaya_ps_axi_periph_M01_AXI_WVALID));
  red_pitaya_ps_1_axis_clock_converter_0_0 axis_clock_converter_0
       (.m_axis_aclk(red_pitaya_ps_FCLK_CLK0),
        .m_axis_aresetn(rst_red_pitaya_ps_125M_peripheral_aresetn),
        .m_axis_tdata(axis_clock_converter_0_m_axis_tdata),
        .m_axis_tready(axis_decimator_0_s_axis_tready),
        .m_axis_tvalid(axis_clock_converter_0_m_axis_tvalid),
        .s_axis_aclk(clock_in_IBUF_OUT),
        .s_axis_aresetn(rst_red_pitaya_ps_125M_peripheral_aresetn),
        .s_axis_tdata(axis_red_pitaya_adc_0_M_AXIS_TDATA),
        .s_axis_tvalid(axis_red_pitaya_adc_0_M_AXIS_TVALID));
  red_pitaya_ps_1_axis_decimator_0_0 axis_decimator_0
       (.aclk(red_pitaya_ps_FCLK_CLK0),
        .aresetn(rst_red_pitaya_ps_125M_peripheral_aresetn),
        .cfg_data(decimation_register_cfg_data),
        .m_axis_tdata(axis_decimator_0_M_AXIS_TDATA),
        .m_axis_tready(axis_decimator_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_decimator_0_M_AXIS_TVALID),
        .s_axis_tdata(axis_clock_converter_0_m_axis_tdata),
        .s_axis_tready(axis_decimator_0_s_axis_tready),
        .s_axis_tvalid(util_vector_logic_0_Res));
  red_pitaya_ps_1_axis_packetizer_0_0 axis_packetizer_0
       (.aclk(red_pitaya_ps_FCLK_CLK0),
        .aresetn(rst_red_pitaya_ps_125M_peripheral_aresetn),
        .cfg_data(xlconstant_0_dout),
        .m_axis_tdata(axis_packetizer_0_M_AXIS_TDATA),
        .m_axis_tlast(axis_packetizer_0_M_AXIS_TLAST),
        .m_axis_tready(axis_packetizer_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_packetizer_0_M_AXIS_TVALID),
        .s_axis_tdata(axis_decimator_0_M_AXIS_TDATA),
        .s_axis_tready(axis_decimator_0_M_AXIS_TREADY),
        .s_axis_tvalid(axis_decimator_0_M_AXIS_TVALID));
  red_pitaya_ps_1_axis_red_pitaya_adc_0_0 axis_red_pitaya_adc_0
       (.aclk(clock_in_IBUF_OUT),
        .adc_dat_a(adc_dat_a_0_1),
        .adc_dat_b(adc_dat_b_0_1),
        .m_axis_tdata(axis_red_pitaya_adc_0_M_AXIS_TDATA),
        .m_axis_tvalid(axis_red_pitaya_adc_0_M_AXIS_TVALID));
  red_pitaya_ps_1_util_ds_buf_0_0 clock_in
       (.IBUF_DS_N(CLK_IN_D_0_1_CLK_N),
        .IBUF_DS_P(CLK_IN_D_0_1_CLK_P),
        .IBUF_OUT(clock_in_IBUF_OUT));
  red_pitaya_ps_1_axi_fifo_mm_s_0_1 dac_data_fifo
       (.axi_str_txd_tdata(dac_data_fifo_AXI_STR_TXD_TDATA),
        .axi_str_txd_tready(dac_data_fifo_AXI_STR_TXD_TREADY),
        .axi_str_txd_tvalid(dac_data_fifo_AXI_STR_TXD_TVALID),
        .s_axi4_awaddr(red_pitaya_ps_axi_periph_M05_AXI_AWADDR),
        .s_axi4_awburst(red_pitaya_ps_axi_periph_M05_AXI_AWBURST),
        .s_axi4_awcache(red_pitaya_ps_axi_periph_M05_AXI_AWCACHE),
        .s_axi4_awid(red_pitaya_ps_axi_periph_M05_AXI_AWID),
        .s_axi4_awlen(red_pitaya_ps_axi_periph_M05_AXI_AWLEN),
        .s_axi4_awlock(red_pitaya_ps_axi_periph_M05_AXI_AWLOCK),
        .s_axi4_awprot(red_pitaya_ps_axi_periph_M05_AXI_AWPROT),
        .s_axi4_awready(red_pitaya_ps_axi_periph_M05_AXI_AWREADY),
        .s_axi4_awsize(red_pitaya_ps_axi_periph_M05_AXI_AWSIZE),
        .s_axi4_awvalid(red_pitaya_ps_axi_periph_M05_AXI_AWVALID),
        .s_axi4_bid(red_pitaya_ps_axi_periph_M05_AXI_BID),
        .s_axi4_bready(red_pitaya_ps_axi_periph_M05_AXI_BREADY),
        .s_axi4_bresp(red_pitaya_ps_axi_periph_M05_AXI_BRESP),
        .s_axi4_bvalid(red_pitaya_ps_axi_periph_M05_AXI_BVALID),
        .s_axi4_wdata(red_pitaya_ps_axi_periph_M05_AXI_WDATA),
        .s_axi4_wlast(red_pitaya_ps_axi_periph_M05_AXI_WLAST),
        .s_axi4_wready(red_pitaya_ps_axi_periph_M05_AXI_WREADY),
        .s_axi4_wstrb(red_pitaya_ps_axi_periph_M05_AXI_WSTRB),
        .s_axi4_wvalid(red_pitaya_ps_axi_periph_M05_AXI_WVALID),
        .s_axi_aclk(red_pitaya_ps_FCLK_CLK0),
        .s_axi_araddr(red_pitaya_ps_axi_periph_M04_AXI_ARADDR),
        .s_axi_aresetn(rst_red_pitaya_ps_125M_peripheral_aresetn),
        .s_axi_arready(red_pitaya_ps_axi_periph_M04_AXI_ARREADY),
        .s_axi_arvalid(red_pitaya_ps_axi_periph_M04_AXI_ARVALID),
        .s_axi_awaddr(red_pitaya_ps_axi_periph_M04_AXI_AWADDR),
        .s_axi_awready(red_pitaya_ps_axi_periph_M04_AXI_AWREADY),
        .s_axi_awvalid(red_pitaya_ps_axi_periph_M04_AXI_AWVALID),
        .s_axi_bready(red_pitaya_ps_axi_periph_M04_AXI_BREADY),
        .s_axi_bresp(red_pitaya_ps_axi_periph_M04_AXI_BRESP),
        .s_axi_bvalid(red_pitaya_ps_axi_periph_M04_AXI_BVALID),
        .s_axi_rdata(red_pitaya_ps_axi_periph_M04_AXI_RDATA),
        .s_axi_rready(red_pitaya_ps_axi_periph_M04_AXI_RREADY),
        .s_axi_rresp(red_pitaya_ps_axi_periph_M04_AXI_RRESP),
        .s_axi_rvalid(red_pitaya_ps_axi_periph_M04_AXI_RVALID),
        .s_axi_wdata(red_pitaya_ps_axi_periph_M04_AXI_WDATA),
        .s_axi_wready(red_pitaya_ps_axi_periph_M04_AXI_WREADY),
        .s_axi_wstrb(red_pitaya_ps_axi_periph_M04_AXI_WSTRB),
        .s_axi_wvalid(red_pitaya_ps_axi_periph_M04_AXI_WVALID));
  red_pitaya_ps_1_dac_out_0_0 dac_out_0
       (.aclk(red_pitaya_ps_FCLK_CLK0),
        .dac_clk(dac_out_0_dac_clk),
        .dac_dat(dac_out_0_dac_dat),
        .dac_rst(dac_out_0_dac_rst),
        .dac_sel(dac_out_0_dac_sel),
        .s_axis_tdata(dac_data_fifo_AXI_STR_TXD_TDATA),
        .s_axis_tready(dac_data_fifo_AXI_STR_TXD_TREADY),
        .s_axis_tvalid(dac_data_fifo_AXI_STR_TXD_TVALID));
  red_pitaya_ps_1_axi_cfg_register_0_1 decimation_register
       (.aclk(red_pitaya_ps_FCLK_CLK0),
        .aresetn(rst_red_pitaya_ps_125M_peripheral_aresetn),
        .cfg_data(decimation_register_cfg_data),
        .s_axi_araddr(red_pitaya_ps_axi_periph_M00_AXI_ARADDR),
        .s_axi_arready(red_pitaya_ps_axi_periph_M00_AXI_ARREADY),
        .s_axi_arvalid(red_pitaya_ps_axi_periph_M00_AXI_ARVALID),
        .s_axi_awaddr(red_pitaya_ps_axi_periph_M00_AXI_AWADDR),
        .s_axi_awready(red_pitaya_ps_axi_periph_M00_AXI_AWREADY),
        .s_axi_awvalid(red_pitaya_ps_axi_periph_M00_AXI_AWVALID),
        .s_axi_bready(red_pitaya_ps_axi_periph_M00_AXI_BREADY),
        .s_axi_bresp(red_pitaya_ps_axi_periph_M00_AXI_BRESP),
        .s_axi_bvalid(red_pitaya_ps_axi_periph_M00_AXI_BVALID),
        .s_axi_rdata(red_pitaya_ps_axi_periph_M00_AXI_RDATA),
        .s_axi_rready(red_pitaya_ps_axi_periph_M00_AXI_RREADY),
        .s_axi_rresp(red_pitaya_ps_axi_periph_M00_AXI_RRESP),
        .s_axi_rvalid(red_pitaya_ps_axi_periph_M00_AXI_RVALID),
        .s_axi_wdata(red_pitaya_ps_axi_periph_M00_AXI_WDATA),
        .s_axi_wready(red_pitaya_ps_axi_periph_M00_AXI_WREADY),
        .s_axi_wstrb(red_pitaya_ps_axi_periph_M00_AXI_WSTRB),
        .s_axi_wvalid(red_pitaya_ps_axi_periph_M00_AXI_WVALID));
  red_pitaya_ps_1_axi_cfg_register_0_0 enable_register
       (.aclk(red_pitaya_ps_FCLK_CLK0),
        .aresetn(rst_red_pitaya_ps_125M_peripheral_aresetn),
        .cfg_data(axi_cfg_register_0_cfg_data),
        .s_axi_araddr(red_pitaya_ps_axi_periph_M03_AXI_ARADDR),
        .s_axi_arready(red_pitaya_ps_axi_periph_M03_AXI_ARREADY),
        .s_axi_arvalid(red_pitaya_ps_axi_periph_M03_AXI_ARVALID),
        .s_axi_awaddr(red_pitaya_ps_axi_periph_M03_AXI_AWADDR),
        .s_axi_awready(red_pitaya_ps_axi_periph_M03_AXI_AWREADY),
        .s_axi_awvalid(red_pitaya_ps_axi_periph_M03_AXI_AWVALID),
        .s_axi_bready(red_pitaya_ps_axi_periph_M03_AXI_BREADY),
        .s_axi_bresp(red_pitaya_ps_axi_periph_M03_AXI_BRESP),
        .s_axi_bvalid(red_pitaya_ps_axi_periph_M03_AXI_BVALID),
        .s_axi_rdata(red_pitaya_ps_axi_periph_M03_AXI_RDATA),
        .s_axi_rready(red_pitaya_ps_axi_periph_M03_AXI_RREADY),
        .s_axi_rresp(red_pitaya_ps_axi_periph_M03_AXI_RRESP),
        .s_axi_rvalid(red_pitaya_ps_axi_periph_M03_AXI_RVALID),
        .s_axi_wdata(red_pitaya_ps_axi_periph_M03_AXI_WDATA),
        .s_axi_wready(red_pitaya_ps_axi_periph_M03_AXI_WREADY),
        .s_axi_wstrb(red_pitaya_ps_axi_periph_M03_AXI_WSTRB),
        .s_axi_wvalid(red_pitaya_ps_axi_periph_M03_AXI_WVALID));
  red_pitaya_ps_1_red_pitaya_ps_0 red_pitaya_ps
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(red_pitaya_ps_FCLK_CLK0),
        .FCLK_RESET0_N(red_pitaya_ps_FCLK_RESET0_N),
        .IRQ_F2P(adc_data_fifo_interrupt),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(red_pitaya_ps_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(red_pitaya_ps_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(red_pitaya_ps_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(red_pitaya_ps_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(red_pitaya_ps_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(red_pitaya_ps_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(red_pitaya_ps_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(red_pitaya_ps_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(red_pitaya_ps_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(red_pitaya_ps_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(red_pitaya_ps_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(red_pitaya_ps_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(red_pitaya_ps_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(red_pitaya_ps_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(red_pitaya_ps_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(red_pitaya_ps_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(red_pitaya_ps_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(red_pitaya_ps_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(red_pitaya_ps_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(red_pitaya_ps_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(red_pitaya_ps_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(red_pitaya_ps_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(red_pitaya_ps_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(red_pitaya_ps_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(red_pitaya_ps_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(red_pitaya_ps_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(red_pitaya_ps_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(red_pitaya_ps_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(red_pitaya_ps_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(red_pitaya_ps_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(red_pitaya_ps_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(red_pitaya_ps_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(red_pitaya_ps_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(red_pitaya_ps_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(red_pitaya_ps_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(red_pitaya_ps_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(red_pitaya_ps_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(red_pitaya_ps_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(red_pitaya_ps_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_HP0_ACLK(red_pitaya_ps_FCLK_CLK0),
        .S_AXI_HP0_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARBURST({1'b0,1'b1}),
        .S_AXI_HP0_ARCACHE({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLOCK({1'b0,1'b0}),
        .S_AXI_HP0_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARSIZE({1'b0,1'b1,1'b0}),
        .S_AXI_HP0_ARVALID(1'b0),
        .S_AXI_HP0_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWBURST({1'b0,1'b1}),
        .S_AXI_HP0_AWCACHE({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWLOCK({1'b0,1'b0}),
        .S_AXI_HP0_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWSIZE({1'b0,1'b1,1'b0}),
        .S_AXI_HP0_AWVALID(1'b0),
        .S_AXI_HP0_BREADY(1'b0),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RREADY(1'b0),
        .S_AXI_HP0_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_WLAST(1'b0),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB({1'b1,1'b1,1'b1,1'b1}),
        .S_AXI_HP0_WVALID(1'b0),
        .USB0_VBUS_PWRFAULT(1'b0));
  red_pitaya_ps_1_red_pitaya_ps_axi_periph_0 red_pitaya_ps_axi_periph
       (.ACLK(red_pitaya_ps_FCLK_CLK0),
        .ARESETN(rst_red_pitaya_ps_125M_interconnect_aresetn),
        .M00_ACLK(red_pitaya_ps_FCLK_CLK0),
        .M00_ARESETN(rst_red_pitaya_ps_125M_peripheral_aresetn),
        .M00_AXI_araddr(red_pitaya_ps_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(red_pitaya_ps_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(red_pitaya_ps_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(red_pitaya_ps_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(red_pitaya_ps_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(red_pitaya_ps_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(red_pitaya_ps_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(red_pitaya_ps_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(red_pitaya_ps_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(red_pitaya_ps_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(red_pitaya_ps_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(red_pitaya_ps_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(red_pitaya_ps_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(red_pitaya_ps_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(red_pitaya_ps_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(red_pitaya_ps_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(red_pitaya_ps_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(red_pitaya_ps_FCLK_CLK0),
        .M01_ARESETN(rst_red_pitaya_ps_125M_peripheral_aresetn),
        .M01_AXI_araddr(red_pitaya_ps_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arready(red_pitaya_ps_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(red_pitaya_ps_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(red_pitaya_ps_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awready(red_pitaya_ps_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(red_pitaya_ps_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(red_pitaya_ps_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(red_pitaya_ps_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(red_pitaya_ps_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(red_pitaya_ps_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(red_pitaya_ps_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(red_pitaya_ps_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(red_pitaya_ps_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(red_pitaya_ps_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(red_pitaya_ps_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(red_pitaya_ps_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(red_pitaya_ps_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(red_pitaya_ps_FCLK_CLK0),
        .M02_ARESETN(rst_red_pitaya_ps_125M_peripheral_aresetn),
        .M02_AXI_araddr(red_pitaya_ps_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arburst(red_pitaya_ps_axi_periph_M02_AXI_ARBURST),
        .M02_AXI_arcache(red_pitaya_ps_axi_periph_M02_AXI_ARCACHE),
        .M02_AXI_arid(red_pitaya_ps_axi_periph_M02_AXI_ARID),
        .M02_AXI_arlen(red_pitaya_ps_axi_periph_M02_AXI_ARLEN),
        .M02_AXI_arlock(red_pitaya_ps_axi_periph_M02_AXI_ARLOCK),
        .M02_AXI_arprot(red_pitaya_ps_axi_periph_M02_AXI_ARPROT),
        .M02_AXI_arready(red_pitaya_ps_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arsize(red_pitaya_ps_axi_periph_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(red_pitaya_ps_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_rdata(red_pitaya_ps_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rid(red_pitaya_ps_axi_periph_M02_AXI_RID),
        .M02_AXI_rlast(red_pitaya_ps_axi_periph_M02_AXI_RLAST),
        .M02_AXI_rready(red_pitaya_ps_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(red_pitaya_ps_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(red_pitaya_ps_axi_periph_M02_AXI_RVALID),
        .M03_ACLK(red_pitaya_ps_FCLK_CLK0),
        .M03_ARESETN(rst_red_pitaya_ps_125M_peripheral_aresetn),
        .M03_AXI_araddr(red_pitaya_ps_axi_periph_M03_AXI_ARADDR),
        .M03_AXI_arready(red_pitaya_ps_axi_periph_M03_AXI_ARREADY),
        .M03_AXI_arvalid(red_pitaya_ps_axi_periph_M03_AXI_ARVALID),
        .M03_AXI_awaddr(red_pitaya_ps_axi_periph_M03_AXI_AWADDR),
        .M03_AXI_awready(red_pitaya_ps_axi_periph_M03_AXI_AWREADY),
        .M03_AXI_awvalid(red_pitaya_ps_axi_periph_M03_AXI_AWVALID),
        .M03_AXI_bready(red_pitaya_ps_axi_periph_M03_AXI_BREADY),
        .M03_AXI_bresp(red_pitaya_ps_axi_periph_M03_AXI_BRESP),
        .M03_AXI_bvalid(red_pitaya_ps_axi_periph_M03_AXI_BVALID),
        .M03_AXI_rdata(red_pitaya_ps_axi_periph_M03_AXI_RDATA),
        .M03_AXI_rready(red_pitaya_ps_axi_periph_M03_AXI_RREADY),
        .M03_AXI_rresp(red_pitaya_ps_axi_periph_M03_AXI_RRESP),
        .M03_AXI_rvalid(red_pitaya_ps_axi_periph_M03_AXI_RVALID),
        .M03_AXI_wdata(red_pitaya_ps_axi_periph_M03_AXI_WDATA),
        .M03_AXI_wready(red_pitaya_ps_axi_periph_M03_AXI_WREADY),
        .M03_AXI_wstrb(red_pitaya_ps_axi_periph_M03_AXI_WSTRB),
        .M03_AXI_wvalid(red_pitaya_ps_axi_periph_M03_AXI_WVALID),
        .M04_ACLK(red_pitaya_ps_FCLK_CLK0),
        .M04_ARESETN(rst_red_pitaya_ps_125M_peripheral_aresetn),
        .M04_AXI_araddr(red_pitaya_ps_axi_periph_M04_AXI_ARADDR),
        .M04_AXI_arready(red_pitaya_ps_axi_periph_M04_AXI_ARREADY),
        .M04_AXI_arvalid(red_pitaya_ps_axi_periph_M04_AXI_ARVALID),
        .M04_AXI_awaddr(red_pitaya_ps_axi_periph_M04_AXI_AWADDR),
        .M04_AXI_awready(red_pitaya_ps_axi_periph_M04_AXI_AWREADY),
        .M04_AXI_awvalid(red_pitaya_ps_axi_periph_M04_AXI_AWVALID),
        .M04_AXI_bready(red_pitaya_ps_axi_periph_M04_AXI_BREADY),
        .M04_AXI_bresp(red_pitaya_ps_axi_periph_M04_AXI_BRESP),
        .M04_AXI_bvalid(red_pitaya_ps_axi_periph_M04_AXI_BVALID),
        .M04_AXI_rdata(red_pitaya_ps_axi_periph_M04_AXI_RDATA),
        .M04_AXI_rready(red_pitaya_ps_axi_periph_M04_AXI_RREADY),
        .M04_AXI_rresp(red_pitaya_ps_axi_periph_M04_AXI_RRESP),
        .M04_AXI_rvalid(red_pitaya_ps_axi_periph_M04_AXI_RVALID),
        .M04_AXI_wdata(red_pitaya_ps_axi_periph_M04_AXI_WDATA),
        .M04_AXI_wready(red_pitaya_ps_axi_periph_M04_AXI_WREADY),
        .M04_AXI_wstrb(red_pitaya_ps_axi_periph_M04_AXI_WSTRB),
        .M04_AXI_wvalid(red_pitaya_ps_axi_periph_M04_AXI_WVALID),
        .M05_ACLK(red_pitaya_ps_FCLK_CLK0),
        .M05_ARESETN(rst_red_pitaya_ps_125M_peripheral_aresetn),
        .M05_AXI_awaddr(red_pitaya_ps_axi_periph_M05_AXI_AWADDR),
        .M05_AXI_awburst(red_pitaya_ps_axi_periph_M05_AXI_AWBURST),
        .M05_AXI_awcache(red_pitaya_ps_axi_periph_M05_AXI_AWCACHE),
        .M05_AXI_awid(red_pitaya_ps_axi_periph_M05_AXI_AWID),
        .M05_AXI_awlen(red_pitaya_ps_axi_periph_M05_AXI_AWLEN),
        .M05_AXI_awlock(red_pitaya_ps_axi_periph_M05_AXI_AWLOCK),
        .M05_AXI_awprot(red_pitaya_ps_axi_periph_M05_AXI_AWPROT),
        .M05_AXI_awready(red_pitaya_ps_axi_periph_M05_AXI_AWREADY),
        .M05_AXI_awsize(red_pitaya_ps_axi_periph_M05_AXI_AWSIZE),
        .M05_AXI_awvalid(red_pitaya_ps_axi_periph_M05_AXI_AWVALID),
        .M05_AXI_bid(red_pitaya_ps_axi_periph_M05_AXI_BID),
        .M05_AXI_bready(red_pitaya_ps_axi_periph_M05_AXI_BREADY),
        .M05_AXI_bresp(red_pitaya_ps_axi_periph_M05_AXI_BRESP),
        .M05_AXI_bvalid(red_pitaya_ps_axi_periph_M05_AXI_BVALID),
        .M05_AXI_wdata(red_pitaya_ps_axi_periph_M05_AXI_WDATA),
        .M05_AXI_wlast(red_pitaya_ps_axi_periph_M05_AXI_WLAST),
        .M05_AXI_wready(red_pitaya_ps_axi_periph_M05_AXI_WREADY),
        .M05_AXI_wstrb(red_pitaya_ps_axi_periph_M05_AXI_WSTRB),
        .M05_AXI_wvalid(red_pitaya_ps_axi_periph_M05_AXI_WVALID),
        .M06_ACLK(red_pitaya_ps_FCLK_CLK0),
        .M06_ARESETN(rst_red_pitaya_ps_125M_peripheral_aresetn),
        .M06_AXI_arready(1'b0),
        .M06_AXI_awready(1'b0),
        .M06_AXI_bresp(1'b0),
        .M06_AXI_bvalid(1'b0),
        .M06_AXI_rdata(1'b0),
        .M06_AXI_rlast(1'b0),
        .M06_AXI_rresp(1'b0),
        .M06_AXI_rvalid(1'b0),
        .M06_AXI_wready(1'b0),
        .M07_ACLK(red_pitaya_ps_FCLK_CLK0),
        .M07_ARESETN(rst_red_pitaya_ps_125M_peripheral_aresetn),
        .M07_AXI_arready(1'b0),
        .M07_AXI_awready(1'b0),
        .M07_AXI_bresp(1'b0),
        .M07_AXI_bvalid(1'b0),
        .M07_AXI_rdata(1'b0),
        .M07_AXI_rlast(1'b0),
        .M07_AXI_rresp(1'b0),
        .M07_AXI_rvalid(1'b0),
        .M07_AXI_wready(1'b0),
        .S00_ACLK(red_pitaya_ps_FCLK_CLK0),
        .S00_ARESETN(rst_red_pitaya_ps_125M_peripheral_aresetn),
        .S00_AXI_araddr(red_pitaya_ps_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(red_pitaya_ps_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(red_pitaya_ps_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(red_pitaya_ps_M_AXI_GP0_ARID),
        .S00_AXI_arlen(red_pitaya_ps_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(red_pitaya_ps_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(red_pitaya_ps_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(red_pitaya_ps_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(red_pitaya_ps_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(red_pitaya_ps_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(red_pitaya_ps_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(red_pitaya_ps_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(red_pitaya_ps_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(red_pitaya_ps_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(red_pitaya_ps_M_AXI_GP0_AWID),
        .S00_AXI_awlen(red_pitaya_ps_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(red_pitaya_ps_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(red_pitaya_ps_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(red_pitaya_ps_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(red_pitaya_ps_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(red_pitaya_ps_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(red_pitaya_ps_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(red_pitaya_ps_M_AXI_GP0_BID),
        .S00_AXI_bready(red_pitaya_ps_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(red_pitaya_ps_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(red_pitaya_ps_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(red_pitaya_ps_M_AXI_GP0_RDATA),
        .S00_AXI_rid(red_pitaya_ps_M_AXI_GP0_RID),
        .S00_AXI_rlast(red_pitaya_ps_M_AXI_GP0_RLAST),
        .S00_AXI_rready(red_pitaya_ps_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(red_pitaya_ps_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(red_pitaya_ps_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(red_pitaya_ps_M_AXI_GP0_WDATA),
        .S00_AXI_wid(red_pitaya_ps_M_AXI_GP0_WID),
        .S00_AXI_wlast(red_pitaya_ps_M_AXI_GP0_WLAST),
        .S00_AXI_wready(red_pitaya_ps_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(red_pitaya_ps_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(red_pitaya_ps_M_AXI_GP0_WVALID));
  red_pitaya_ps_1_rst_red_pitaya_ps_125M_0 rst_red_pitaya_ps_125M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(red_pitaya_ps_FCLK_RESET0_N),
        .interconnect_aresetn(rst_red_pitaya_ps_125M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_red_pitaya_ps_125M_peripheral_aresetn),
        .slowest_sync_clk(red_pitaya_ps_FCLK_CLK0));
  red_pitaya_ps_1_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(axis_clock_converter_0_m_axis_tvalid),
        .Op2(axi_cfg_register_0_cfg_data[0]),
        .Res(util_vector_logic_0_Res));
  red_pitaya_ps_1_xlconstant_0_1 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

module red_pitaya_ps_1_red_pitaya_ps_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arburst,
    M02_AXI_arcache,
    M02_AXI_arid,
    M02_AXI_arlen,
    M02_AXI_arlock,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arsize,
    M02_AXI_arvalid,
    M02_AXI_rdata,
    M02_AXI_rid,
    M02_AXI_rlast,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_awaddr,
    M05_AXI_awburst,
    M05_AXI_awcache,
    M05_AXI_awid,
    M05_AXI_awlen,
    M05_AXI_awlock,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awsize,
    M05_AXI_awvalid,
    M05_AXI_bid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_wdata,
    M05_AXI_wlast,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arburst,
    M06_AXI_arcache,
    M06_AXI_arlen,
    M06_AXI_arlock,
    M06_AXI_arprot,
    M06_AXI_arqos,
    M06_AXI_arready,
    M06_AXI_arregion,
    M06_AXI_arsize,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awburst,
    M06_AXI_awcache,
    M06_AXI_awlen,
    M06_AXI_awlock,
    M06_AXI_awprot,
    M06_AXI_awqos,
    M06_AXI_awready,
    M06_AXI_awregion,
    M06_AXI_awsize,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rlast,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wlast,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arburst,
    M07_AXI_arcache,
    M07_AXI_arlen,
    M07_AXI_arlock,
    M07_AXI_arprot,
    M07_AXI_arqos,
    M07_AXI_arready,
    M07_AXI_arregion,
    M07_AXI_arsize,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awburst,
    M07_AXI_awcache,
    M07_AXI_awlen,
    M07_AXI_awlock,
    M07_AXI_awprot,
    M07_AXI_awqos,
    M07_AXI_awready,
    M07_AXI_awregion,
    M07_AXI_awsize,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rlast,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wlast,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  output [1:0]M02_AXI_arburst;
  output [3:0]M02_AXI_arcache;
  output [11:0]M02_AXI_arid;
  output [7:0]M02_AXI_arlen;
  output [0:0]M02_AXI_arlock;
  output [2:0]M02_AXI_arprot;
  input [0:0]M02_AXI_arready;
  output [2:0]M02_AXI_arsize;
  output [0:0]M02_AXI_arvalid;
  input [31:0]M02_AXI_rdata;
  input [11:0]M02_AXI_rid;
  input [0:0]M02_AXI_rlast;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_awaddr;
  output [1:0]M05_AXI_awburst;
  output [3:0]M05_AXI_awcache;
  output [11:0]M05_AXI_awid;
  output [7:0]M05_AXI_awlen;
  output M05_AXI_awlock;
  output [2:0]M05_AXI_awprot;
  input M05_AXI_awready;
  output [2:0]M05_AXI_awsize;
  output M05_AXI_awvalid;
  input [11:0]M05_AXI_bid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  output [31:0]M05_AXI_wdata;
  output M05_AXI_wlast;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output M06_AXI_araddr;
  output M06_AXI_arburst;
  output M06_AXI_arcache;
  output M06_AXI_arlen;
  output M06_AXI_arlock;
  output M06_AXI_arprot;
  output M06_AXI_arqos;
  input M06_AXI_arready;
  output M06_AXI_arregion;
  output M06_AXI_arsize;
  output M06_AXI_arvalid;
  output M06_AXI_awaddr;
  output M06_AXI_awburst;
  output M06_AXI_awcache;
  output M06_AXI_awlen;
  output M06_AXI_awlock;
  output M06_AXI_awprot;
  output M06_AXI_awqos;
  input M06_AXI_awready;
  output M06_AXI_awregion;
  output M06_AXI_awsize;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input M06_AXI_bresp;
  input M06_AXI_bvalid;
  input M06_AXI_rdata;
  input M06_AXI_rlast;
  output M06_AXI_rready;
  input M06_AXI_rresp;
  input M06_AXI_rvalid;
  output M06_AXI_wdata;
  output M06_AXI_wlast;
  input M06_AXI_wready;
  output M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output M07_AXI_araddr;
  output M07_AXI_arburst;
  output M07_AXI_arcache;
  output M07_AXI_arlen;
  output M07_AXI_arlock;
  output M07_AXI_arprot;
  output M07_AXI_arqos;
  input M07_AXI_arready;
  output M07_AXI_arregion;
  output M07_AXI_arsize;
  output M07_AXI_arvalid;
  output M07_AXI_awaddr;
  output M07_AXI_awburst;
  output M07_AXI_awcache;
  output M07_AXI_awlen;
  output M07_AXI_awlock;
  output M07_AXI_awprot;
  output M07_AXI_awqos;
  input M07_AXI_awready;
  output M07_AXI_awregion;
  output M07_AXI_awsize;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input M07_AXI_bresp;
  input M07_AXI_bvalid;
  input M07_AXI_rdata;
  input M07_AXI_rlast;
  output M07_AXI_rready;
  input M07_AXI_rresp;
  input M07_AXI_rvalid;
  output M07_AXI_wdata;
  output M07_AXI_wlast;
  input M07_AXI_wready;
  output M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire M06_ACLK_1;
  wire M06_ARESETN_1;
  wire M07_ACLK_1;
  wire M07_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [31:0]m00_couplers_to_red_pitaya_ps_axi_periph_ARADDR;
  wire m00_couplers_to_red_pitaya_ps_axi_periph_ARREADY;
  wire m00_couplers_to_red_pitaya_ps_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_red_pitaya_ps_axi_periph_AWADDR;
  wire m00_couplers_to_red_pitaya_ps_axi_periph_AWREADY;
  wire m00_couplers_to_red_pitaya_ps_axi_periph_AWVALID;
  wire m00_couplers_to_red_pitaya_ps_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_red_pitaya_ps_axi_periph_BRESP;
  wire m00_couplers_to_red_pitaya_ps_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_red_pitaya_ps_axi_periph_RDATA;
  wire m00_couplers_to_red_pitaya_ps_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_red_pitaya_ps_axi_periph_RRESP;
  wire m00_couplers_to_red_pitaya_ps_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_red_pitaya_ps_axi_periph_WDATA;
  wire m00_couplers_to_red_pitaya_ps_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_red_pitaya_ps_axi_periph_WSTRB;
  wire m00_couplers_to_red_pitaya_ps_axi_periph_WVALID;
  wire [31:0]m01_couplers_to_red_pitaya_ps_axi_periph_ARADDR;
  wire m01_couplers_to_red_pitaya_ps_axi_periph_ARREADY;
  wire m01_couplers_to_red_pitaya_ps_axi_periph_ARVALID;
  wire [31:0]m01_couplers_to_red_pitaya_ps_axi_periph_AWADDR;
  wire m01_couplers_to_red_pitaya_ps_axi_periph_AWREADY;
  wire m01_couplers_to_red_pitaya_ps_axi_periph_AWVALID;
  wire m01_couplers_to_red_pitaya_ps_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_red_pitaya_ps_axi_periph_BRESP;
  wire m01_couplers_to_red_pitaya_ps_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_red_pitaya_ps_axi_periph_RDATA;
  wire m01_couplers_to_red_pitaya_ps_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_red_pitaya_ps_axi_periph_RRESP;
  wire m01_couplers_to_red_pitaya_ps_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_red_pitaya_ps_axi_periph_WDATA;
  wire m01_couplers_to_red_pitaya_ps_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_red_pitaya_ps_axi_periph_WSTRB;
  wire m01_couplers_to_red_pitaya_ps_axi_periph_WVALID;
  wire [31:0]m02_couplers_to_red_pitaya_ps_axi_periph_ARADDR;
  wire [1:0]m02_couplers_to_red_pitaya_ps_axi_periph_ARBURST;
  wire [3:0]m02_couplers_to_red_pitaya_ps_axi_periph_ARCACHE;
  wire [11:0]m02_couplers_to_red_pitaya_ps_axi_periph_ARID;
  wire [7:0]m02_couplers_to_red_pitaya_ps_axi_periph_ARLEN;
  wire [0:0]m02_couplers_to_red_pitaya_ps_axi_periph_ARLOCK;
  wire [2:0]m02_couplers_to_red_pitaya_ps_axi_periph_ARPROT;
  wire [0:0]m02_couplers_to_red_pitaya_ps_axi_periph_ARREADY;
  wire [2:0]m02_couplers_to_red_pitaya_ps_axi_periph_ARSIZE;
  wire [0:0]m02_couplers_to_red_pitaya_ps_axi_periph_ARVALID;
  wire [31:0]m02_couplers_to_red_pitaya_ps_axi_periph_RDATA;
  wire [11:0]m02_couplers_to_red_pitaya_ps_axi_periph_RID;
  wire [0:0]m02_couplers_to_red_pitaya_ps_axi_periph_RLAST;
  wire [0:0]m02_couplers_to_red_pitaya_ps_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_red_pitaya_ps_axi_periph_RRESP;
  wire [0:0]m02_couplers_to_red_pitaya_ps_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_red_pitaya_ps_axi_periph_ARADDR;
  wire m03_couplers_to_red_pitaya_ps_axi_periph_ARREADY;
  wire m03_couplers_to_red_pitaya_ps_axi_periph_ARVALID;
  wire [31:0]m03_couplers_to_red_pitaya_ps_axi_periph_AWADDR;
  wire m03_couplers_to_red_pitaya_ps_axi_periph_AWREADY;
  wire m03_couplers_to_red_pitaya_ps_axi_periph_AWVALID;
  wire m03_couplers_to_red_pitaya_ps_axi_periph_BREADY;
  wire [1:0]m03_couplers_to_red_pitaya_ps_axi_periph_BRESP;
  wire m03_couplers_to_red_pitaya_ps_axi_periph_BVALID;
  wire [31:0]m03_couplers_to_red_pitaya_ps_axi_periph_RDATA;
  wire m03_couplers_to_red_pitaya_ps_axi_periph_RREADY;
  wire [1:0]m03_couplers_to_red_pitaya_ps_axi_periph_RRESP;
  wire m03_couplers_to_red_pitaya_ps_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_red_pitaya_ps_axi_periph_WDATA;
  wire m03_couplers_to_red_pitaya_ps_axi_periph_WREADY;
  wire [3:0]m03_couplers_to_red_pitaya_ps_axi_periph_WSTRB;
  wire m03_couplers_to_red_pitaya_ps_axi_periph_WVALID;
  wire [31:0]m04_couplers_to_red_pitaya_ps_axi_periph_ARADDR;
  wire m04_couplers_to_red_pitaya_ps_axi_periph_ARREADY;
  wire m04_couplers_to_red_pitaya_ps_axi_periph_ARVALID;
  wire [31:0]m04_couplers_to_red_pitaya_ps_axi_periph_AWADDR;
  wire m04_couplers_to_red_pitaya_ps_axi_periph_AWREADY;
  wire m04_couplers_to_red_pitaya_ps_axi_periph_AWVALID;
  wire m04_couplers_to_red_pitaya_ps_axi_periph_BREADY;
  wire [1:0]m04_couplers_to_red_pitaya_ps_axi_periph_BRESP;
  wire m04_couplers_to_red_pitaya_ps_axi_periph_BVALID;
  wire [31:0]m04_couplers_to_red_pitaya_ps_axi_periph_RDATA;
  wire m04_couplers_to_red_pitaya_ps_axi_periph_RREADY;
  wire [1:0]m04_couplers_to_red_pitaya_ps_axi_periph_RRESP;
  wire m04_couplers_to_red_pitaya_ps_axi_periph_RVALID;
  wire [31:0]m04_couplers_to_red_pitaya_ps_axi_periph_WDATA;
  wire m04_couplers_to_red_pitaya_ps_axi_periph_WREADY;
  wire [3:0]m04_couplers_to_red_pitaya_ps_axi_periph_WSTRB;
  wire m04_couplers_to_red_pitaya_ps_axi_periph_WVALID;
  wire [31:0]m05_couplers_to_red_pitaya_ps_axi_periph_AWADDR;
  wire [1:0]m05_couplers_to_red_pitaya_ps_axi_periph_AWBURST;
  wire [3:0]m05_couplers_to_red_pitaya_ps_axi_periph_AWCACHE;
  wire [11:0]m05_couplers_to_red_pitaya_ps_axi_periph_AWID;
  wire [7:0]m05_couplers_to_red_pitaya_ps_axi_periph_AWLEN;
  wire m05_couplers_to_red_pitaya_ps_axi_periph_AWLOCK;
  wire [2:0]m05_couplers_to_red_pitaya_ps_axi_periph_AWPROT;
  wire m05_couplers_to_red_pitaya_ps_axi_periph_AWREADY;
  wire [2:0]m05_couplers_to_red_pitaya_ps_axi_periph_AWSIZE;
  wire m05_couplers_to_red_pitaya_ps_axi_periph_AWVALID;
  wire [11:0]m05_couplers_to_red_pitaya_ps_axi_periph_BID;
  wire m05_couplers_to_red_pitaya_ps_axi_periph_BREADY;
  wire [1:0]m05_couplers_to_red_pitaya_ps_axi_periph_BRESP;
  wire m05_couplers_to_red_pitaya_ps_axi_periph_BVALID;
  wire [31:0]m05_couplers_to_red_pitaya_ps_axi_periph_WDATA;
  wire m05_couplers_to_red_pitaya_ps_axi_periph_WLAST;
  wire m05_couplers_to_red_pitaya_ps_axi_periph_WREADY;
  wire [3:0]m05_couplers_to_red_pitaya_ps_axi_periph_WSTRB;
  wire m05_couplers_to_red_pitaya_ps_axi_periph_WVALID;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_ARADDR;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_ARBURST;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_ARCACHE;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_ARLEN;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_ARLOCK;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_ARPROT;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_ARQOS;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_ARREADY;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_ARREGION;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_ARSIZE;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_ARVALID;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_AWADDR;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_AWBURST;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_AWCACHE;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_AWLEN;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_AWLOCK;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_AWPROT;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_AWQOS;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_AWREADY;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_AWREGION;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_AWSIZE;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_AWVALID;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_BREADY;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_BRESP;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_BVALID;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_RDATA;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_RLAST;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_RREADY;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_RRESP;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_RVALID;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_WDATA;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_WLAST;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_WREADY;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_WSTRB;
  wire m06_couplers_to_red_pitaya_ps_axi_periph_WVALID;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_ARADDR;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_ARBURST;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_ARCACHE;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_ARLEN;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_ARLOCK;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_ARPROT;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_ARQOS;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_ARREADY;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_ARREGION;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_ARSIZE;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_ARVALID;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_AWADDR;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_AWBURST;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_AWCACHE;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_AWLEN;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_AWLOCK;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_AWPROT;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_AWQOS;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_AWREADY;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_AWREGION;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_AWSIZE;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_AWVALID;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_BREADY;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_BRESP;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_BVALID;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_RDATA;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_RLAST;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_RREADY;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_RRESP;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_RVALID;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_WDATA;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_WLAST;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_WREADY;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_WSTRB;
  wire m07_couplers_to_red_pitaya_ps_axi_periph_WVALID;
  wire red_pitaya_ps_axi_periph_ACLK_net;
  wire red_pitaya_ps_axi_periph_ARESETN_net;
  wire [31:0]red_pitaya_ps_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]red_pitaya_ps_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]red_pitaya_ps_axi_periph_to_s00_couplers_ARCACHE;
  wire [11:0]red_pitaya_ps_axi_periph_to_s00_couplers_ARID;
  wire [3:0]red_pitaya_ps_axi_periph_to_s00_couplers_ARLEN;
  wire [1:0]red_pitaya_ps_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]red_pitaya_ps_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]red_pitaya_ps_axi_periph_to_s00_couplers_ARQOS;
  wire red_pitaya_ps_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]red_pitaya_ps_axi_periph_to_s00_couplers_ARSIZE;
  wire red_pitaya_ps_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]red_pitaya_ps_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]red_pitaya_ps_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]red_pitaya_ps_axi_periph_to_s00_couplers_AWCACHE;
  wire [11:0]red_pitaya_ps_axi_periph_to_s00_couplers_AWID;
  wire [3:0]red_pitaya_ps_axi_periph_to_s00_couplers_AWLEN;
  wire [1:0]red_pitaya_ps_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]red_pitaya_ps_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]red_pitaya_ps_axi_periph_to_s00_couplers_AWQOS;
  wire red_pitaya_ps_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]red_pitaya_ps_axi_periph_to_s00_couplers_AWSIZE;
  wire red_pitaya_ps_axi_periph_to_s00_couplers_AWVALID;
  wire [11:0]red_pitaya_ps_axi_periph_to_s00_couplers_BID;
  wire red_pitaya_ps_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]red_pitaya_ps_axi_periph_to_s00_couplers_BRESP;
  wire red_pitaya_ps_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]red_pitaya_ps_axi_periph_to_s00_couplers_RDATA;
  wire [11:0]red_pitaya_ps_axi_periph_to_s00_couplers_RID;
  wire red_pitaya_ps_axi_periph_to_s00_couplers_RLAST;
  wire red_pitaya_ps_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]red_pitaya_ps_axi_periph_to_s00_couplers_RRESP;
  wire red_pitaya_ps_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]red_pitaya_ps_axi_periph_to_s00_couplers_WDATA;
  wire [11:0]red_pitaya_ps_axi_periph_to_s00_couplers_WID;
  wire red_pitaya_ps_axi_periph_to_s00_couplers_WLAST;
  wire red_pitaya_ps_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]red_pitaya_ps_axi_periph_to_s00_couplers_WSTRB;
  wire red_pitaya_ps_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [11:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [11:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire [11:0]s00_couplers_to_xbar_BID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [11:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [11:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [11:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [11:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [11:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [23:12]xbar_to_m01_couplers_ARID;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [7:4]xbar_to_m01_couplers_ARQOS;
  wire xbar_to_m01_couplers_ARREADY;
  wire [7:4]xbar_to_m01_couplers_ARREGION;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [23:12]xbar_to_m01_couplers_AWID;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [7:4]xbar_to_m01_couplers_AWQOS;
  wire xbar_to_m01_couplers_AWREADY;
  wire [7:4]xbar_to_m01_couplers_AWREGION;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [11:0]xbar_to_m01_couplers_BID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [11:0]xbar_to_m01_couplers_RID;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [5:4]xbar_to_m02_couplers_ARBURST;
  wire [11:8]xbar_to_m02_couplers_ARCACHE;
  wire [35:24]xbar_to_m02_couplers_ARID;
  wire [23:16]xbar_to_m02_couplers_ARLEN;
  wire [2:2]xbar_to_m02_couplers_ARLOCK;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [8:6]xbar_to_m02_couplers_ARSIZE;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [11:0]xbar_to_m02_couplers_RID;
  wire [0:0]xbar_to_m02_couplers_RLAST;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [7:6]xbar_to_m03_couplers_ARBURST;
  wire [15:12]xbar_to_m03_couplers_ARCACHE;
  wire [47:36]xbar_to_m03_couplers_ARID;
  wire [31:24]xbar_to_m03_couplers_ARLEN;
  wire [3:3]xbar_to_m03_couplers_ARLOCK;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire [15:12]xbar_to_m03_couplers_ARQOS;
  wire xbar_to_m03_couplers_ARREADY;
  wire [15:12]xbar_to_m03_couplers_ARREGION;
  wire [11:9]xbar_to_m03_couplers_ARSIZE;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [7:6]xbar_to_m03_couplers_AWBURST;
  wire [15:12]xbar_to_m03_couplers_AWCACHE;
  wire [47:36]xbar_to_m03_couplers_AWID;
  wire [31:24]xbar_to_m03_couplers_AWLEN;
  wire [3:3]xbar_to_m03_couplers_AWLOCK;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire [15:12]xbar_to_m03_couplers_AWQOS;
  wire xbar_to_m03_couplers_AWREADY;
  wire [15:12]xbar_to_m03_couplers_AWREGION;
  wire [11:9]xbar_to_m03_couplers_AWSIZE;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [11:0]xbar_to_m03_couplers_BID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [11:0]xbar_to_m03_couplers_RID;
  wire xbar_to_m03_couplers_RLAST;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [3:3]xbar_to_m03_couplers_WLAST;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [9:8]xbar_to_m04_couplers_ARBURST;
  wire [19:16]xbar_to_m04_couplers_ARCACHE;
  wire [59:48]xbar_to_m04_couplers_ARID;
  wire [39:32]xbar_to_m04_couplers_ARLEN;
  wire [4:4]xbar_to_m04_couplers_ARLOCK;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire [19:16]xbar_to_m04_couplers_ARQOS;
  wire xbar_to_m04_couplers_ARREADY;
  wire [19:16]xbar_to_m04_couplers_ARREGION;
  wire [14:12]xbar_to_m04_couplers_ARSIZE;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [9:8]xbar_to_m04_couplers_AWBURST;
  wire [19:16]xbar_to_m04_couplers_AWCACHE;
  wire [59:48]xbar_to_m04_couplers_AWID;
  wire [39:32]xbar_to_m04_couplers_AWLEN;
  wire [4:4]xbar_to_m04_couplers_AWLOCK;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire [19:16]xbar_to_m04_couplers_AWQOS;
  wire xbar_to_m04_couplers_AWREADY;
  wire [19:16]xbar_to_m04_couplers_AWREGION;
  wire [14:12]xbar_to_m04_couplers_AWSIZE;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [11:0]xbar_to_m04_couplers_BID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [11:0]xbar_to_m04_couplers_RID;
  wire xbar_to_m04_couplers_RLAST;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [4:4]xbar_to_m04_couplers_WLAST;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [11:10]xbar_to_m05_couplers_AWBURST;
  wire [23:20]xbar_to_m05_couplers_AWCACHE;
  wire [71:60]xbar_to_m05_couplers_AWID;
  wire [47:40]xbar_to_m05_couplers_AWLEN;
  wire [5:5]xbar_to_m05_couplers_AWLOCK;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire xbar_to_m05_couplers_AWREADY;
  wire [17:15]xbar_to_m05_couplers_AWSIZE;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [11:0]xbar_to_m05_couplers_BID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire [5:5]xbar_to_m05_couplers_WLAST;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire [13:12]xbar_to_m06_couplers_ARBURST;
  wire [27:24]xbar_to_m06_couplers_ARCACHE;
  wire [55:48]xbar_to_m06_couplers_ARLEN;
  wire [6:6]xbar_to_m06_couplers_ARLOCK;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire [27:24]xbar_to_m06_couplers_ARQOS;
  wire xbar_to_m06_couplers_ARREADY;
  wire [27:24]xbar_to_m06_couplers_ARREGION;
  wire [20:18]xbar_to_m06_couplers_ARSIZE;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire [13:12]xbar_to_m06_couplers_AWBURST;
  wire [27:24]xbar_to_m06_couplers_AWCACHE;
  wire [55:48]xbar_to_m06_couplers_AWLEN;
  wire [6:6]xbar_to_m06_couplers_AWLOCK;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire [27:24]xbar_to_m06_couplers_AWQOS;
  wire xbar_to_m06_couplers_AWREADY;
  wire [27:24]xbar_to_m06_couplers_AWREGION;
  wire [20:18]xbar_to_m06_couplers_AWSIZE;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire xbar_to_m06_couplers_RDATA;
  wire xbar_to_m06_couplers_RLAST;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire [6:6]xbar_to_m06_couplers_WLAST;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire [15:14]xbar_to_m07_couplers_ARBURST;
  wire [31:28]xbar_to_m07_couplers_ARCACHE;
  wire [63:56]xbar_to_m07_couplers_ARLEN;
  wire [7:7]xbar_to_m07_couplers_ARLOCK;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire [31:28]xbar_to_m07_couplers_ARQOS;
  wire xbar_to_m07_couplers_ARREADY;
  wire [31:28]xbar_to_m07_couplers_ARREGION;
  wire [23:21]xbar_to_m07_couplers_ARSIZE;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire [15:14]xbar_to_m07_couplers_AWBURST;
  wire [31:28]xbar_to_m07_couplers_AWCACHE;
  wire [63:56]xbar_to_m07_couplers_AWLEN;
  wire [7:7]xbar_to_m07_couplers_AWLOCK;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire [31:28]xbar_to_m07_couplers_AWQOS;
  wire xbar_to_m07_couplers_AWREADY;
  wire [31:28]xbar_to_m07_couplers_AWREGION;
  wire [23:21]xbar_to_m07_couplers_AWSIZE;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire xbar_to_m07_couplers_RDATA;
  wire xbar_to_m07_couplers_RLAST;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire [7:7]xbar_to_m07_couplers_WLAST;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [255:0]NLW_xbar_m_axi_araddr_UNCONNECTED;
  wire [15:0]NLW_xbar_m_axi_arburst_UNCONNECTED;
  wire [31:0]NLW_xbar_m_axi_arcache_UNCONNECTED;
  wire [63:0]NLW_xbar_m_axi_arlen_UNCONNECTED;
  wire [7:0]NLW_xbar_m_axi_arlock_UNCONNECTED;
  wire [23:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [31:0]NLW_xbar_m_axi_arqos_UNCONNECTED;
  wire [31:0]NLW_xbar_m_axi_arregion_UNCONNECTED;
  wire [23:0]NLW_xbar_m_axi_arsize_UNCONNECTED;
  wire [7:0]NLW_xbar_m_axi_arvalid_UNCONNECTED;
  wire [255:0]NLW_xbar_m_axi_awaddr_UNCONNECTED;
  wire [15:0]NLW_xbar_m_axi_awburst_UNCONNECTED;
  wire [31:0]NLW_xbar_m_axi_awcache_UNCONNECTED;
  wire [95:0]NLW_xbar_m_axi_awid_UNCONNECTED;
  wire [63:0]NLW_xbar_m_axi_awlen_UNCONNECTED;
  wire [7:0]NLW_xbar_m_axi_awlock_UNCONNECTED;
  wire [23:0]NLW_xbar_m_axi_awprot_UNCONNECTED;
  wire [31:0]NLW_xbar_m_axi_awqos_UNCONNECTED;
  wire [31:0]NLW_xbar_m_axi_awregion_UNCONNECTED;
  wire [23:0]NLW_xbar_m_axi_awsize_UNCONNECTED;
  wire [7:0]NLW_xbar_m_axi_awvalid_UNCONNECTED;
  wire [7:0]NLW_xbar_m_axi_bready_UNCONNECTED;
  wire [7:0]NLW_xbar_m_axi_rready_UNCONNECTED;
  wire [255:0]NLW_xbar_m_axi_wdata_UNCONNECTED;
  wire [7:0]NLW_xbar_m_axi_wlast_UNCONNECTED;
  wire [31:0]NLW_xbar_m_axi_wstrb_UNCONNECTED;
  wire [7:0]NLW_xbar_m_axi_wvalid_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_red_pitaya_ps_axi_periph_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_red_pitaya_ps_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_red_pitaya_ps_axi_periph_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_red_pitaya_ps_axi_periph_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_red_pitaya_ps_axi_periph_BREADY;
  assign M00_AXI_rready = m00_couplers_to_red_pitaya_ps_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_red_pitaya_ps_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_red_pitaya_ps_axi_periph_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_red_pitaya_ps_axi_periph_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_red_pitaya_ps_axi_periph_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_red_pitaya_ps_axi_periph_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_red_pitaya_ps_axi_periph_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_red_pitaya_ps_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_red_pitaya_ps_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_red_pitaya_ps_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_red_pitaya_ps_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_red_pitaya_ps_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_red_pitaya_ps_axi_periph_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_red_pitaya_ps_axi_periph_ARADDR;
  assign M02_AXI_arburst[1:0] = m02_couplers_to_red_pitaya_ps_axi_periph_ARBURST;
  assign M02_AXI_arcache[3:0] = m02_couplers_to_red_pitaya_ps_axi_periph_ARCACHE;
  assign M02_AXI_arid[11:0] = m02_couplers_to_red_pitaya_ps_axi_periph_ARID;
  assign M02_AXI_arlen[7:0] = m02_couplers_to_red_pitaya_ps_axi_periph_ARLEN;
  assign M02_AXI_arlock[0] = m02_couplers_to_red_pitaya_ps_axi_periph_ARLOCK;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_red_pitaya_ps_axi_periph_ARPROT;
  assign M02_AXI_arsize[2:0] = m02_couplers_to_red_pitaya_ps_axi_periph_ARSIZE;
  assign M02_AXI_arvalid[0] = m02_couplers_to_red_pitaya_ps_axi_periph_ARVALID;
  assign M02_AXI_rready[0] = m02_couplers_to_red_pitaya_ps_axi_periph_RREADY;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_red_pitaya_ps_axi_periph_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_red_pitaya_ps_axi_periph_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_red_pitaya_ps_axi_periph_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_red_pitaya_ps_axi_periph_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_red_pitaya_ps_axi_periph_BREADY;
  assign M03_AXI_rready = m03_couplers_to_red_pitaya_ps_axi_periph_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_red_pitaya_ps_axi_periph_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_red_pitaya_ps_axi_periph_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_red_pitaya_ps_axi_periph_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_red_pitaya_ps_axi_periph_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_red_pitaya_ps_axi_periph_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_red_pitaya_ps_axi_periph_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_red_pitaya_ps_axi_periph_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_red_pitaya_ps_axi_periph_BREADY;
  assign M04_AXI_rready = m04_couplers_to_red_pitaya_ps_axi_periph_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_red_pitaya_ps_axi_periph_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_red_pitaya_ps_axi_periph_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_red_pitaya_ps_axi_periph_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_red_pitaya_ps_axi_periph_AWADDR;
  assign M05_AXI_awburst[1:0] = m05_couplers_to_red_pitaya_ps_axi_periph_AWBURST;
  assign M05_AXI_awcache[3:0] = m05_couplers_to_red_pitaya_ps_axi_periph_AWCACHE;
  assign M05_AXI_awid[11:0] = m05_couplers_to_red_pitaya_ps_axi_periph_AWID;
  assign M05_AXI_awlen[7:0] = m05_couplers_to_red_pitaya_ps_axi_periph_AWLEN;
  assign M05_AXI_awlock = m05_couplers_to_red_pitaya_ps_axi_periph_AWLOCK;
  assign M05_AXI_awprot[2:0] = m05_couplers_to_red_pitaya_ps_axi_periph_AWPROT;
  assign M05_AXI_awsize[2:0] = m05_couplers_to_red_pitaya_ps_axi_periph_AWSIZE;
  assign M05_AXI_awvalid = m05_couplers_to_red_pitaya_ps_axi_periph_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_red_pitaya_ps_axi_periph_BREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_red_pitaya_ps_axi_periph_WDATA;
  assign M05_AXI_wlast = m05_couplers_to_red_pitaya_ps_axi_periph_WLAST;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_red_pitaya_ps_axi_periph_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_red_pitaya_ps_axi_periph_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr = m06_couplers_to_red_pitaya_ps_axi_periph_ARADDR;
  assign M06_AXI_arburst = m06_couplers_to_red_pitaya_ps_axi_periph_ARBURST;
  assign M06_AXI_arcache = m06_couplers_to_red_pitaya_ps_axi_periph_ARCACHE;
  assign M06_AXI_arlen = m06_couplers_to_red_pitaya_ps_axi_periph_ARLEN;
  assign M06_AXI_arlock = m06_couplers_to_red_pitaya_ps_axi_periph_ARLOCK;
  assign M06_AXI_arprot = m06_couplers_to_red_pitaya_ps_axi_periph_ARPROT;
  assign M06_AXI_arqos = m06_couplers_to_red_pitaya_ps_axi_periph_ARQOS;
  assign M06_AXI_arregion = m06_couplers_to_red_pitaya_ps_axi_periph_ARREGION;
  assign M06_AXI_arsize = m06_couplers_to_red_pitaya_ps_axi_periph_ARSIZE;
  assign M06_AXI_arvalid = m06_couplers_to_red_pitaya_ps_axi_periph_ARVALID;
  assign M06_AXI_awaddr = m06_couplers_to_red_pitaya_ps_axi_periph_AWADDR;
  assign M06_AXI_awburst = m06_couplers_to_red_pitaya_ps_axi_periph_AWBURST;
  assign M06_AXI_awcache = m06_couplers_to_red_pitaya_ps_axi_periph_AWCACHE;
  assign M06_AXI_awlen = m06_couplers_to_red_pitaya_ps_axi_periph_AWLEN;
  assign M06_AXI_awlock = m06_couplers_to_red_pitaya_ps_axi_periph_AWLOCK;
  assign M06_AXI_awprot = m06_couplers_to_red_pitaya_ps_axi_periph_AWPROT;
  assign M06_AXI_awqos = m06_couplers_to_red_pitaya_ps_axi_periph_AWQOS;
  assign M06_AXI_awregion = m06_couplers_to_red_pitaya_ps_axi_periph_AWREGION;
  assign M06_AXI_awsize = m06_couplers_to_red_pitaya_ps_axi_periph_AWSIZE;
  assign M06_AXI_awvalid = m06_couplers_to_red_pitaya_ps_axi_periph_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_red_pitaya_ps_axi_periph_BREADY;
  assign M06_AXI_rready = m06_couplers_to_red_pitaya_ps_axi_periph_RREADY;
  assign M06_AXI_wdata = m06_couplers_to_red_pitaya_ps_axi_periph_WDATA;
  assign M06_AXI_wlast = m06_couplers_to_red_pitaya_ps_axi_periph_WLAST;
  assign M06_AXI_wstrb = m06_couplers_to_red_pitaya_ps_axi_periph_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_red_pitaya_ps_axi_periph_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN;
  assign M07_AXI_araddr = m07_couplers_to_red_pitaya_ps_axi_periph_ARADDR;
  assign M07_AXI_arburst = m07_couplers_to_red_pitaya_ps_axi_periph_ARBURST;
  assign M07_AXI_arcache = m07_couplers_to_red_pitaya_ps_axi_periph_ARCACHE;
  assign M07_AXI_arlen = m07_couplers_to_red_pitaya_ps_axi_periph_ARLEN;
  assign M07_AXI_arlock = m07_couplers_to_red_pitaya_ps_axi_periph_ARLOCK;
  assign M07_AXI_arprot = m07_couplers_to_red_pitaya_ps_axi_periph_ARPROT;
  assign M07_AXI_arqos = m07_couplers_to_red_pitaya_ps_axi_periph_ARQOS;
  assign M07_AXI_arregion = m07_couplers_to_red_pitaya_ps_axi_periph_ARREGION;
  assign M07_AXI_arsize = m07_couplers_to_red_pitaya_ps_axi_periph_ARSIZE;
  assign M07_AXI_arvalid = m07_couplers_to_red_pitaya_ps_axi_periph_ARVALID;
  assign M07_AXI_awaddr = m07_couplers_to_red_pitaya_ps_axi_periph_AWADDR;
  assign M07_AXI_awburst = m07_couplers_to_red_pitaya_ps_axi_periph_AWBURST;
  assign M07_AXI_awcache = m07_couplers_to_red_pitaya_ps_axi_periph_AWCACHE;
  assign M07_AXI_awlen = m07_couplers_to_red_pitaya_ps_axi_periph_AWLEN;
  assign M07_AXI_awlock = m07_couplers_to_red_pitaya_ps_axi_periph_AWLOCK;
  assign M07_AXI_awprot = m07_couplers_to_red_pitaya_ps_axi_periph_AWPROT;
  assign M07_AXI_awqos = m07_couplers_to_red_pitaya_ps_axi_periph_AWQOS;
  assign M07_AXI_awregion = m07_couplers_to_red_pitaya_ps_axi_periph_AWREGION;
  assign M07_AXI_awsize = m07_couplers_to_red_pitaya_ps_axi_periph_AWSIZE;
  assign M07_AXI_awvalid = m07_couplers_to_red_pitaya_ps_axi_periph_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_red_pitaya_ps_axi_periph_BREADY;
  assign M07_AXI_rready = m07_couplers_to_red_pitaya_ps_axi_periph_RREADY;
  assign M07_AXI_wdata = m07_couplers_to_red_pitaya_ps_axi_periph_WDATA;
  assign M07_AXI_wlast = m07_couplers_to_red_pitaya_ps_axi_periph_WLAST;
  assign M07_AXI_wstrb = m07_couplers_to_red_pitaya_ps_axi_periph_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_red_pitaya_ps_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = red_pitaya_ps_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = red_pitaya_ps_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = red_pitaya_ps_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = red_pitaya_ps_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = red_pitaya_ps_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = red_pitaya_ps_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = red_pitaya_ps_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = red_pitaya_ps_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = red_pitaya_ps_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = red_pitaya_ps_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = red_pitaya_ps_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_red_pitaya_ps_axi_periph_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_red_pitaya_ps_axi_periph_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_red_pitaya_ps_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_red_pitaya_ps_axi_periph_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_red_pitaya_ps_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_red_pitaya_ps_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_red_pitaya_ps_axi_periph_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_red_pitaya_ps_axi_periph_WREADY = M00_AXI_wready;
  assign m01_couplers_to_red_pitaya_ps_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_red_pitaya_ps_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_red_pitaya_ps_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_red_pitaya_ps_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_red_pitaya_ps_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_red_pitaya_ps_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_red_pitaya_ps_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_red_pitaya_ps_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_red_pitaya_ps_axi_periph_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_red_pitaya_ps_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_red_pitaya_ps_axi_periph_RID = M02_AXI_rid[11:0];
  assign m02_couplers_to_red_pitaya_ps_axi_periph_RLAST = M02_AXI_rlast[0];
  assign m02_couplers_to_red_pitaya_ps_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_red_pitaya_ps_axi_periph_RVALID = M02_AXI_rvalid[0];
  assign m03_couplers_to_red_pitaya_ps_axi_periph_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_red_pitaya_ps_axi_periph_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_red_pitaya_ps_axi_periph_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_red_pitaya_ps_axi_periph_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_red_pitaya_ps_axi_periph_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_red_pitaya_ps_axi_periph_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_red_pitaya_ps_axi_periph_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_red_pitaya_ps_axi_periph_WREADY = M03_AXI_wready;
  assign m04_couplers_to_red_pitaya_ps_axi_periph_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_red_pitaya_ps_axi_periph_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_red_pitaya_ps_axi_periph_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_red_pitaya_ps_axi_periph_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_red_pitaya_ps_axi_periph_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_red_pitaya_ps_axi_periph_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_red_pitaya_ps_axi_periph_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_red_pitaya_ps_axi_periph_WREADY = M04_AXI_wready;
  assign m05_couplers_to_red_pitaya_ps_axi_periph_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_red_pitaya_ps_axi_periph_BID = M05_AXI_bid[11:0];
  assign m05_couplers_to_red_pitaya_ps_axi_periph_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_red_pitaya_ps_axi_periph_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_red_pitaya_ps_axi_periph_WREADY = M05_AXI_wready;
  assign m06_couplers_to_red_pitaya_ps_axi_periph_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_red_pitaya_ps_axi_periph_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_red_pitaya_ps_axi_periph_BRESP = M06_AXI_bresp;
  assign m06_couplers_to_red_pitaya_ps_axi_periph_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_red_pitaya_ps_axi_periph_RDATA = M06_AXI_rdata;
  assign m06_couplers_to_red_pitaya_ps_axi_periph_RLAST = M06_AXI_rlast;
  assign m06_couplers_to_red_pitaya_ps_axi_periph_RRESP = M06_AXI_rresp;
  assign m06_couplers_to_red_pitaya_ps_axi_periph_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_red_pitaya_ps_axi_periph_WREADY = M06_AXI_wready;
  assign m07_couplers_to_red_pitaya_ps_axi_periph_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_red_pitaya_ps_axi_periph_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_red_pitaya_ps_axi_periph_BRESP = M07_AXI_bresp;
  assign m07_couplers_to_red_pitaya_ps_axi_periph_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_red_pitaya_ps_axi_periph_RDATA = M07_AXI_rdata;
  assign m07_couplers_to_red_pitaya_ps_axi_periph_RLAST = M07_AXI_rlast;
  assign m07_couplers_to_red_pitaya_ps_axi_periph_RRESP = M07_AXI_rresp;
  assign m07_couplers_to_red_pitaya_ps_axi_periph_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_red_pitaya_ps_axi_periph_WREADY = M07_AXI_wready;
  assign red_pitaya_ps_axi_periph_ACLK_net = ACLK;
  assign red_pitaya_ps_axi_periph_ARESETN_net = ARESETN;
  assign red_pitaya_ps_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign red_pitaya_ps_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign red_pitaya_ps_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign red_pitaya_ps_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign red_pitaya_ps_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign red_pitaya_ps_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign red_pitaya_ps_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign red_pitaya_ps_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign red_pitaya_ps_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign red_pitaya_ps_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign red_pitaya_ps_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign red_pitaya_ps_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign red_pitaya_ps_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign red_pitaya_ps_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign red_pitaya_ps_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign red_pitaya_ps_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign red_pitaya_ps_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign red_pitaya_ps_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign red_pitaya_ps_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign red_pitaya_ps_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign red_pitaya_ps_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign red_pitaya_ps_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign red_pitaya_ps_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign red_pitaya_ps_axi_periph_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign red_pitaya_ps_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign red_pitaya_ps_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign red_pitaya_ps_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  m00_couplers_imp_1GPZGNS m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_red_pitaya_ps_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_red_pitaya_ps_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_red_pitaya_ps_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_red_pitaya_ps_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_red_pitaya_ps_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_red_pitaya_ps_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_red_pitaya_ps_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_red_pitaya_ps_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_red_pitaya_ps_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_red_pitaya_ps_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_red_pitaya_ps_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_red_pitaya_ps_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_red_pitaya_ps_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_red_pitaya_ps_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_red_pitaya_ps_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_red_pitaya_ps_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_red_pitaya_ps_axi_periph_WVALID),
        .S_ACLK(red_pitaya_ps_axi_periph_ACLK_net),
        .S_ARESETN(red_pitaya_ps_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_7N1992 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_red_pitaya_ps_axi_periph_ARADDR),
        .M_AXI_arready(m01_couplers_to_red_pitaya_ps_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_red_pitaya_ps_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_red_pitaya_ps_axi_periph_AWADDR),
        .M_AXI_awready(m01_couplers_to_red_pitaya_ps_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_red_pitaya_ps_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_red_pitaya_ps_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_red_pitaya_ps_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_red_pitaya_ps_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_red_pitaya_ps_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_red_pitaya_ps_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_red_pitaya_ps_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_red_pitaya_ps_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_red_pitaya_ps_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_red_pitaya_ps_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_red_pitaya_ps_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_red_pitaya_ps_axi_periph_WVALID),
        .S_ACLK(red_pitaya_ps_axi_periph_ACLK_net),
        .S_ARESETN(red_pitaya_ps_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m01_couplers_ARID),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m01_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m01_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m01_couplers_AWID),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m01_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m01_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m01_couplers_BID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rid(xbar_to_m01_couplers_RID),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_CVFSQT m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_red_pitaya_ps_axi_periph_ARADDR),
        .M_AXI_arburst(m02_couplers_to_red_pitaya_ps_axi_periph_ARBURST),
        .M_AXI_arcache(m02_couplers_to_red_pitaya_ps_axi_periph_ARCACHE),
        .M_AXI_arid(m02_couplers_to_red_pitaya_ps_axi_periph_ARID),
        .M_AXI_arlen(m02_couplers_to_red_pitaya_ps_axi_periph_ARLEN),
        .M_AXI_arlock(m02_couplers_to_red_pitaya_ps_axi_periph_ARLOCK),
        .M_AXI_arprot(m02_couplers_to_red_pitaya_ps_axi_periph_ARPROT),
        .M_AXI_arready(m02_couplers_to_red_pitaya_ps_axi_periph_ARREADY),
        .M_AXI_arsize(m02_couplers_to_red_pitaya_ps_axi_periph_ARSIZE),
        .M_AXI_arvalid(m02_couplers_to_red_pitaya_ps_axi_periph_ARVALID),
        .M_AXI_rdata(m02_couplers_to_red_pitaya_ps_axi_periph_RDATA),
        .M_AXI_rid(m02_couplers_to_red_pitaya_ps_axi_periph_RID),
        .M_AXI_rlast(m02_couplers_to_red_pitaya_ps_axi_periph_RLAST),
        .M_AXI_rready(m02_couplers_to_red_pitaya_ps_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_red_pitaya_ps_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_red_pitaya_ps_axi_periph_RVALID),
        .S_ACLK(red_pitaya_ps_axi_periph_ACLK_net),
        .S_ARESETN(red_pitaya_ps_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m02_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m02_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m02_couplers_ARID),
        .S_AXI_arlen(xbar_to_m02_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m02_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m02_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rid(xbar_to_m02_couplers_RID),
        .S_AXI_rlast(xbar_to_m02_couplers_RLAST),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID));
  m03_couplers_imp_12TR9L7 m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_red_pitaya_ps_axi_periph_ARADDR),
        .M_AXI_arready(m03_couplers_to_red_pitaya_ps_axi_periph_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_red_pitaya_ps_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_red_pitaya_ps_axi_periph_AWADDR),
        .M_AXI_awready(m03_couplers_to_red_pitaya_ps_axi_periph_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_red_pitaya_ps_axi_periph_AWVALID),
        .M_AXI_bready(m03_couplers_to_red_pitaya_ps_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_red_pitaya_ps_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_red_pitaya_ps_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_red_pitaya_ps_axi_periph_RDATA),
        .M_AXI_rready(m03_couplers_to_red_pitaya_ps_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_red_pitaya_ps_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_red_pitaya_ps_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_red_pitaya_ps_axi_periph_WDATA),
        .M_AXI_wready(m03_couplers_to_red_pitaya_ps_axi_periph_WREADY),
        .M_AXI_wstrb(m03_couplers_to_red_pitaya_ps_axi_periph_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_red_pitaya_ps_axi_periph_WVALID),
        .S_ACLK(red_pitaya_ps_axi_periph_ACLK_net),
        .S_ARESETN(red_pitaya_ps_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m03_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m03_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m03_couplers_ARID),
        .S_AXI_arlen(xbar_to_m03_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m03_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m03_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m03_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m03_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m03_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m03_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m03_couplers_AWID),
        .S_AXI_awlen(xbar_to_m03_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m03_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m03_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m03_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m03_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m03_couplers_BID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rid(xbar_to_m03_couplers_RID),
        .S_AXI_rlast(xbar_to_m03_couplers_RLAST),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m03_couplers_WLAST),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_JCMVVN m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_red_pitaya_ps_axi_periph_ARADDR),
        .M_AXI_arready(m04_couplers_to_red_pitaya_ps_axi_periph_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_red_pitaya_ps_axi_periph_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_red_pitaya_ps_axi_periph_AWADDR),
        .M_AXI_awready(m04_couplers_to_red_pitaya_ps_axi_periph_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_red_pitaya_ps_axi_periph_AWVALID),
        .M_AXI_bready(m04_couplers_to_red_pitaya_ps_axi_periph_BREADY),
        .M_AXI_bresp(m04_couplers_to_red_pitaya_ps_axi_periph_BRESP),
        .M_AXI_bvalid(m04_couplers_to_red_pitaya_ps_axi_periph_BVALID),
        .M_AXI_rdata(m04_couplers_to_red_pitaya_ps_axi_periph_RDATA),
        .M_AXI_rready(m04_couplers_to_red_pitaya_ps_axi_periph_RREADY),
        .M_AXI_rresp(m04_couplers_to_red_pitaya_ps_axi_periph_RRESP),
        .M_AXI_rvalid(m04_couplers_to_red_pitaya_ps_axi_periph_RVALID),
        .M_AXI_wdata(m04_couplers_to_red_pitaya_ps_axi_periph_WDATA),
        .M_AXI_wready(m04_couplers_to_red_pitaya_ps_axi_periph_WREADY),
        .M_AXI_wstrb(m04_couplers_to_red_pitaya_ps_axi_periph_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_red_pitaya_ps_axi_periph_WVALID),
        .S_ACLK(red_pitaya_ps_axi_periph_ACLK_net),
        .S_ARESETN(red_pitaya_ps_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m04_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m04_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m04_couplers_ARID),
        .S_AXI_arlen(xbar_to_m04_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m04_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m04_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m04_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m04_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m04_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m04_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m04_couplers_AWID),
        .S_AXI_awlen(xbar_to_m04_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m04_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m04_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m04_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m04_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m04_couplers_BID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rid(xbar_to_m04_couplers_RID),
        .S_AXI_rlast(xbar_to_m04_couplers_RLAST),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m04_couplers_WLAST),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_1Q7KAUL m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_awaddr(m05_couplers_to_red_pitaya_ps_axi_periph_AWADDR),
        .M_AXI_awburst(m05_couplers_to_red_pitaya_ps_axi_periph_AWBURST),
        .M_AXI_awcache(m05_couplers_to_red_pitaya_ps_axi_periph_AWCACHE),
        .M_AXI_awid(m05_couplers_to_red_pitaya_ps_axi_periph_AWID),
        .M_AXI_awlen(m05_couplers_to_red_pitaya_ps_axi_periph_AWLEN),
        .M_AXI_awlock(m05_couplers_to_red_pitaya_ps_axi_periph_AWLOCK),
        .M_AXI_awprot(m05_couplers_to_red_pitaya_ps_axi_periph_AWPROT),
        .M_AXI_awready(m05_couplers_to_red_pitaya_ps_axi_periph_AWREADY),
        .M_AXI_awsize(m05_couplers_to_red_pitaya_ps_axi_periph_AWSIZE),
        .M_AXI_awvalid(m05_couplers_to_red_pitaya_ps_axi_periph_AWVALID),
        .M_AXI_bid(m05_couplers_to_red_pitaya_ps_axi_periph_BID),
        .M_AXI_bready(m05_couplers_to_red_pitaya_ps_axi_periph_BREADY),
        .M_AXI_bresp(m05_couplers_to_red_pitaya_ps_axi_periph_BRESP),
        .M_AXI_bvalid(m05_couplers_to_red_pitaya_ps_axi_periph_BVALID),
        .M_AXI_wdata(m05_couplers_to_red_pitaya_ps_axi_periph_WDATA),
        .M_AXI_wlast(m05_couplers_to_red_pitaya_ps_axi_periph_WLAST),
        .M_AXI_wready(m05_couplers_to_red_pitaya_ps_axi_periph_WREADY),
        .M_AXI_wstrb(m05_couplers_to_red_pitaya_ps_axi_periph_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_red_pitaya_ps_axi_periph_WVALID),
        .S_ACLK(red_pitaya_ps_axi_periph_ACLK_net),
        .S_ARESETN(red_pitaya_ps_axi_periph_ARESETN_net),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m05_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m05_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m05_couplers_AWID),
        .S_AXI_awlen(xbar_to_m05_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m05_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m05_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m05_couplers_BID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m05_couplers_WLAST),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_1NC14FY m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_red_pitaya_ps_axi_periph_ARADDR),
        .M_AXI_arburst(m06_couplers_to_red_pitaya_ps_axi_periph_ARBURST),
        .M_AXI_arcache(m06_couplers_to_red_pitaya_ps_axi_periph_ARCACHE),
        .M_AXI_arlen(m06_couplers_to_red_pitaya_ps_axi_periph_ARLEN),
        .M_AXI_arlock(m06_couplers_to_red_pitaya_ps_axi_periph_ARLOCK),
        .M_AXI_arprot(m06_couplers_to_red_pitaya_ps_axi_periph_ARPROT),
        .M_AXI_arqos(m06_couplers_to_red_pitaya_ps_axi_periph_ARQOS),
        .M_AXI_arready(m06_couplers_to_red_pitaya_ps_axi_periph_ARREADY),
        .M_AXI_arregion(m06_couplers_to_red_pitaya_ps_axi_periph_ARREGION),
        .M_AXI_arsize(m06_couplers_to_red_pitaya_ps_axi_periph_ARSIZE),
        .M_AXI_arvalid(m06_couplers_to_red_pitaya_ps_axi_periph_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_red_pitaya_ps_axi_periph_AWADDR),
        .M_AXI_awburst(m06_couplers_to_red_pitaya_ps_axi_periph_AWBURST),
        .M_AXI_awcache(m06_couplers_to_red_pitaya_ps_axi_periph_AWCACHE),
        .M_AXI_awlen(m06_couplers_to_red_pitaya_ps_axi_periph_AWLEN),
        .M_AXI_awlock(m06_couplers_to_red_pitaya_ps_axi_periph_AWLOCK),
        .M_AXI_awprot(m06_couplers_to_red_pitaya_ps_axi_periph_AWPROT),
        .M_AXI_awqos(m06_couplers_to_red_pitaya_ps_axi_periph_AWQOS),
        .M_AXI_awready(m06_couplers_to_red_pitaya_ps_axi_periph_AWREADY),
        .M_AXI_awregion(m06_couplers_to_red_pitaya_ps_axi_periph_AWREGION),
        .M_AXI_awsize(m06_couplers_to_red_pitaya_ps_axi_periph_AWSIZE),
        .M_AXI_awvalid(m06_couplers_to_red_pitaya_ps_axi_periph_AWVALID),
        .M_AXI_bready(m06_couplers_to_red_pitaya_ps_axi_periph_BREADY),
        .M_AXI_bresp(m06_couplers_to_red_pitaya_ps_axi_periph_BRESP),
        .M_AXI_bvalid(m06_couplers_to_red_pitaya_ps_axi_periph_BVALID),
        .M_AXI_rdata(m06_couplers_to_red_pitaya_ps_axi_periph_RDATA),
        .M_AXI_rlast(m06_couplers_to_red_pitaya_ps_axi_periph_RLAST),
        .M_AXI_rready(m06_couplers_to_red_pitaya_ps_axi_periph_RREADY),
        .M_AXI_rresp(m06_couplers_to_red_pitaya_ps_axi_periph_RRESP),
        .M_AXI_rvalid(m06_couplers_to_red_pitaya_ps_axi_periph_RVALID),
        .M_AXI_wdata(m06_couplers_to_red_pitaya_ps_axi_periph_WDATA),
        .M_AXI_wlast(m06_couplers_to_red_pitaya_ps_axi_periph_WLAST),
        .M_AXI_wready(m06_couplers_to_red_pitaya_ps_axi_periph_WREADY),
        .M_AXI_wstrb(m06_couplers_to_red_pitaya_ps_axi_periph_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_red_pitaya_ps_axi_periph_WVALID),
        .S_ACLK(red_pitaya_ps_axi_periph_ACLK_net),
        .S_ARESETN(red_pitaya_ps_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR[192]),
        .S_AXI_arburst(xbar_to_m06_couplers_ARBURST[12]),
        .S_AXI_arcache(xbar_to_m06_couplers_ARCACHE[24]),
        .S_AXI_arlen(xbar_to_m06_couplers_ARLEN[48]),
        .S_AXI_arlock(xbar_to_m06_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT[18]),
        .S_AXI_arqos(xbar_to_m06_couplers_ARQOS[24]),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m06_couplers_ARREGION[24]),
        .S_AXI_arsize(xbar_to_m06_couplers_ARSIZE[18]),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR[192]),
        .S_AXI_awburst(xbar_to_m06_couplers_AWBURST[12]),
        .S_AXI_awcache(xbar_to_m06_couplers_AWCACHE[24]),
        .S_AXI_awlen(xbar_to_m06_couplers_AWLEN[48]),
        .S_AXI_awlock(xbar_to_m06_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT[18]),
        .S_AXI_awqos(xbar_to_m06_couplers_AWQOS[24]),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m06_couplers_AWREGION[24]),
        .S_AXI_awsize(xbar_to_m06_couplers_AWSIZE[18]),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m06_couplers_RLAST),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA[192]),
        .S_AXI_wlast(xbar_to_m06_couplers_WLAST),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB[24]),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_V603OW m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
        .M_AXI_araddr(m07_couplers_to_red_pitaya_ps_axi_periph_ARADDR),
        .M_AXI_arburst(m07_couplers_to_red_pitaya_ps_axi_periph_ARBURST),
        .M_AXI_arcache(m07_couplers_to_red_pitaya_ps_axi_periph_ARCACHE),
        .M_AXI_arlen(m07_couplers_to_red_pitaya_ps_axi_periph_ARLEN),
        .M_AXI_arlock(m07_couplers_to_red_pitaya_ps_axi_periph_ARLOCK),
        .M_AXI_arprot(m07_couplers_to_red_pitaya_ps_axi_periph_ARPROT),
        .M_AXI_arqos(m07_couplers_to_red_pitaya_ps_axi_periph_ARQOS),
        .M_AXI_arready(m07_couplers_to_red_pitaya_ps_axi_periph_ARREADY),
        .M_AXI_arregion(m07_couplers_to_red_pitaya_ps_axi_periph_ARREGION),
        .M_AXI_arsize(m07_couplers_to_red_pitaya_ps_axi_periph_ARSIZE),
        .M_AXI_arvalid(m07_couplers_to_red_pitaya_ps_axi_periph_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_red_pitaya_ps_axi_periph_AWADDR),
        .M_AXI_awburst(m07_couplers_to_red_pitaya_ps_axi_periph_AWBURST),
        .M_AXI_awcache(m07_couplers_to_red_pitaya_ps_axi_periph_AWCACHE),
        .M_AXI_awlen(m07_couplers_to_red_pitaya_ps_axi_periph_AWLEN),
        .M_AXI_awlock(m07_couplers_to_red_pitaya_ps_axi_periph_AWLOCK),
        .M_AXI_awprot(m07_couplers_to_red_pitaya_ps_axi_periph_AWPROT),
        .M_AXI_awqos(m07_couplers_to_red_pitaya_ps_axi_periph_AWQOS),
        .M_AXI_awready(m07_couplers_to_red_pitaya_ps_axi_periph_AWREADY),
        .M_AXI_awregion(m07_couplers_to_red_pitaya_ps_axi_periph_AWREGION),
        .M_AXI_awsize(m07_couplers_to_red_pitaya_ps_axi_periph_AWSIZE),
        .M_AXI_awvalid(m07_couplers_to_red_pitaya_ps_axi_periph_AWVALID),
        .M_AXI_bready(m07_couplers_to_red_pitaya_ps_axi_periph_BREADY),
        .M_AXI_bresp(m07_couplers_to_red_pitaya_ps_axi_periph_BRESP),
        .M_AXI_bvalid(m07_couplers_to_red_pitaya_ps_axi_periph_BVALID),
        .M_AXI_rdata(m07_couplers_to_red_pitaya_ps_axi_periph_RDATA),
        .M_AXI_rlast(m07_couplers_to_red_pitaya_ps_axi_periph_RLAST),
        .M_AXI_rready(m07_couplers_to_red_pitaya_ps_axi_periph_RREADY),
        .M_AXI_rresp(m07_couplers_to_red_pitaya_ps_axi_periph_RRESP),
        .M_AXI_rvalid(m07_couplers_to_red_pitaya_ps_axi_periph_RVALID),
        .M_AXI_wdata(m07_couplers_to_red_pitaya_ps_axi_periph_WDATA),
        .M_AXI_wlast(m07_couplers_to_red_pitaya_ps_axi_periph_WLAST),
        .M_AXI_wready(m07_couplers_to_red_pitaya_ps_axi_periph_WREADY),
        .M_AXI_wstrb(m07_couplers_to_red_pitaya_ps_axi_periph_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_red_pitaya_ps_axi_periph_WVALID),
        .S_ACLK(red_pitaya_ps_axi_periph_ACLK_net),
        .S_ARESETN(red_pitaya_ps_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR[224]),
        .S_AXI_arburst(xbar_to_m07_couplers_ARBURST[14]),
        .S_AXI_arcache(xbar_to_m07_couplers_ARCACHE[28]),
        .S_AXI_arlen(xbar_to_m07_couplers_ARLEN[56]),
        .S_AXI_arlock(xbar_to_m07_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT[21]),
        .S_AXI_arqos(xbar_to_m07_couplers_ARQOS[28]),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m07_couplers_ARREGION[28]),
        .S_AXI_arsize(xbar_to_m07_couplers_ARSIZE[21]),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR[224]),
        .S_AXI_awburst(xbar_to_m07_couplers_AWBURST[14]),
        .S_AXI_awcache(xbar_to_m07_couplers_AWCACHE[28]),
        .S_AXI_awlen(xbar_to_m07_couplers_AWLEN[56]),
        .S_AXI_awlock(xbar_to_m07_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT[21]),
        .S_AXI_awqos(xbar_to_m07_couplers_AWQOS[28]),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m07_couplers_AWREGION[28]),
        .S_AXI_awsize(xbar_to_m07_couplers_AWSIZE[21]),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m07_couplers_RLAST),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA[224]),
        .S_AXI_wlast(xbar_to_m07_couplers_WLAST),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB[28]),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  s00_couplers_imp_180Y0OW s00_couplers
       (.M_ACLK(red_pitaya_ps_axi_periph_ACLK_net),
        .M_ARESETN(red_pitaya_ps_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(red_pitaya_ps_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(red_pitaya_ps_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(red_pitaya_ps_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(red_pitaya_ps_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(red_pitaya_ps_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(red_pitaya_ps_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(red_pitaya_ps_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(red_pitaya_ps_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(red_pitaya_ps_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(red_pitaya_ps_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(red_pitaya_ps_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(red_pitaya_ps_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(red_pitaya_ps_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(red_pitaya_ps_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(red_pitaya_ps_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(red_pitaya_ps_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(red_pitaya_ps_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(red_pitaya_ps_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(red_pitaya_ps_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(red_pitaya_ps_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(red_pitaya_ps_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(red_pitaya_ps_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(red_pitaya_ps_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(red_pitaya_ps_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(red_pitaya_ps_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(red_pitaya_ps_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(red_pitaya_ps_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(red_pitaya_ps_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(red_pitaya_ps_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(red_pitaya_ps_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(red_pitaya_ps_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(red_pitaya_ps_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(red_pitaya_ps_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wid(red_pitaya_ps_axi_periph_to_s00_couplers_WID),
        .S_AXI_wlast(red_pitaya_ps_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(red_pitaya_ps_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(red_pitaya_ps_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(red_pitaya_ps_axi_periph_to_s00_couplers_WVALID));
  red_pitaya_ps_1_xbar_0 xbar
       (.aclk(red_pitaya_ps_axi_periph_ACLK_net),
        .aresetn(red_pitaya_ps_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,NLW_xbar_m_axi_araddr_UNCONNECTED[191:160],xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m07_couplers_ARBURST,xbar_to_m06_couplers_ARBURST,NLW_xbar_m_axi_arburst_UNCONNECTED[11:10],xbar_to_m04_couplers_ARBURST,xbar_to_m03_couplers_ARBURST,xbar_to_m02_couplers_ARBURST,xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m07_couplers_ARCACHE,xbar_to_m06_couplers_ARCACHE,NLW_xbar_m_axi_arcache_UNCONNECTED[23:20],xbar_to_m04_couplers_ARCACHE,xbar_to_m03_couplers_ARCACHE,xbar_to_m02_couplers_ARCACHE,xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arid({xbar_to_m04_couplers_ARID,xbar_to_m03_couplers_ARID,xbar_to_m02_couplers_ARID,xbar_to_m01_couplers_ARID,xbar_to_m00_couplers_ARID}),
        .m_axi_arlen({xbar_to_m07_couplers_ARLEN,xbar_to_m06_couplers_ARLEN,NLW_xbar_m_axi_arlen_UNCONNECTED[47:40],xbar_to_m04_couplers_ARLEN,xbar_to_m03_couplers_ARLEN,xbar_to_m02_couplers_ARLEN,xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m07_couplers_ARLOCK,xbar_to_m06_couplers_ARLOCK,NLW_xbar_m_axi_arlock_UNCONNECTED[5],xbar_to_m04_couplers_ARLOCK,xbar_to_m03_couplers_ARLOCK,xbar_to_m02_couplers_ARLOCK,xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[17:15],xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m07_couplers_ARQOS,xbar_to_m06_couplers_ARQOS,NLW_xbar_m_axi_arqos_UNCONNECTED[23:20],xbar_to_m04_couplers_ARQOS,xbar_to_m03_couplers_ARQOS,NLW_xbar_m_axi_arqos_UNCONNECTED[11:8],xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,1'b0,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m07_couplers_ARREGION,xbar_to_m06_couplers_ARREGION,NLW_xbar_m_axi_arregion_UNCONNECTED[23:20],xbar_to_m04_couplers_ARREGION,xbar_to_m03_couplers_ARREGION,NLW_xbar_m_axi_arregion_UNCONNECTED[11:8],xbar_to_m01_couplers_ARREGION,xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m07_couplers_ARSIZE,xbar_to_m06_couplers_ARSIZE,NLW_xbar_m_axi_arsize_UNCONNECTED[17:15],xbar_to_m04_couplers_ARSIZE,xbar_to_m03_couplers_ARSIZE,xbar_to_m02_couplers_ARSIZE,xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,NLW_xbar_m_axi_arvalid_UNCONNECTED[5],xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,NLW_xbar_m_axi_awaddr_UNCONNECTED[95:64],xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m07_couplers_AWBURST,xbar_to_m06_couplers_AWBURST,xbar_to_m05_couplers_AWBURST,xbar_to_m04_couplers_AWBURST,xbar_to_m03_couplers_AWBURST,NLW_xbar_m_axi_awburst_UNCONNECTED[5:4],xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m07_couplers_AWCACHE,xbar_to_m06_couplers_AWCACHE,xbar_to_m05_couplers_AWCACHE,xbar_to_m04_couplers_AWCACHE,xbar_to_m03_couplers_AWCACHE,NLW_xbar_m_axi_awcache_UNCONNECTED[11:8],xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awid({xbar_to_m05_couplers_AWID,xbar_to_m04_couplers_AWID,xbar_to_m03_couplers_AWID,NLW_xbar_m_axi_awid_UNCONNECTED[35:24],xbar_to_m01_couplers_AWID,xbar_to_m00_couplers_AWID}),
        .m_axi_awlen({xbar_to_m07_couplers_AWLEN,xbar_to_m06_couplers_AWLEN,xbar_to_m05_couplers_AWLEN,xbar_to_m04_couplers_AWLEN,xbar_to_m03_couplers_AWLEN,NLW_xbar_m_axi_awlen_UNCONNECTED[23:16],xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m07_couplers_AWLOCK,xbar_to_m06_couplers_AWLOCK,xbar_to_m05_couplers_AWLOCK,xbar_to_m04_couplers_AWLOCK,xbar_to_m03_couplers_AWLOCK,NLW_xbar_m_axi_awlock_UNCONNECTED[2],xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[8:6],xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m07_couplers_AWQOS,xbar_to_m06_couplers_AWQOS,NLW_xbar_m_axi_awqos_UNCONNECTED[23:20],xbar_to_m04_couplers_AWQOS,xbar_to_m03_couplers_AWQOS,NLW_xbar_m_axi_awqos_UNCONNECTED[11:8],xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,1'b0,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m07_couplers_AWREGION,xbar_to_m06_couplers_AWREGION,NLW_xbar_m_axi_awregion_UNCONNECTED[23:20],xbar_to_m04_couplers_AWREGION,xbar_to_m03_couplers_AWREGION,NLW_xbar_m_axi_awregion_UNCONNECTED[11:8],xbar_to_m01_couplers_AWREGION,xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m07_couplers_AWSIZE,xbar_to_m06_couplers_AWSIZE,xbar_to_m05_couplers_AWSIZE,xbar_to_m04_couplers_AWSIZE,xbar_to_m03_couplers_AWSIZE,NLW_xbar_m_axi_awsize_UNCONNECTED[8:6],xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,NLW_xbar_m_axi_awvalid_UNCONNECTED[2],xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xbar_to_m05_couplers_BID,xbar_to_m04_couplers_BID,xbar_to_m03_couplers_BID,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xbar_to_m01_couplers_BID,xbar_to_m00_couplers_BID}),
        .m_axi_bready({xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,NLW_xbar_m_axi_bready_UNCONNECTED[2],xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m07_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,1'b0,1'b0,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,1'b0,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m06_couplers_RDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xbar_to_m04_couplers_RID,xbar_to_m03_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m00_couplers_RID}),
        .m_axi_rlast({xbar_to_m07_couplers_RLAST,xbar_to_m06_couplers_RLAST,1'b0,xbar_to_m04_couplers_RLAST,xbar_to_m03_couplers_RLAST,xbar_to_m02_couplers_RLAST,xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,NLW_xbar_m_axi_rready_UNCONNECTED[5],xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m07_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m06_couplers_RRESP,1'b0,1'b0,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,1'b0,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,NLW_xbar_m_axi_wdata_UNCONNECTED[95:64],xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m07_couplers_WLAST,xbar_to_m06_couplers_WLAST,xbar_to_m05_couplers_WLAST,xbar_to_m04_couplers_WLAST,xbar_to_m03_couplers_WLAST,NLW_xbar_m_axi_wlast_UNCONNECTED[2],xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,1'b0,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[11:8],xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,NLW_xbar_m_axi_wvalid_UNCONNECTED[2],xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arburst(s00_couplers_to_xbar_ARBURST),
        .s_axi_arcache(s00_couplers_to_xbar_ARCACHE),
        .s_axi_arid(s00_couplers_to_xbar_ARID),
        .s_axi_arlen(s00_couplers_to_xbar_ARLEN),
        .s_axi_arlock(s00_couplers_to_xbar_ARLOCK),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arqos(s00_couplers_to_xbar_ARQOS),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arsize(s00_couplers_to_xbar_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awburst(s00_couplers_to_xbar_AWBURST),
        .s_axi_awcache(s00_couplers_to_xbar_AWCACHE),
        .s_axi_awid(s00_couplers_to_xbar_AWID),
        .s_axi_awlen(s00_couplers_to_xbar_AWLEN),
        .s_axi_awlock(s00_couplers_to_xbar_AWLOCK),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awqos(s00_couplers_to_xbar_AWQOS),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awsize(s00_couplers_to_xbar_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bid(s00_couplers_to_xbar_BID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rid(s00_couplers_to_xbar_RID),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wlast(s00_couplers_to_xbar_WLAST),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module s00_couplers_imp_180Y0OW
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [11:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [11:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [11:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [11:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [1:0]auto_pc_to_s00_couplers_ARBURST;
  wire [3:0]auto_pc_to_s00_couplers_ARCACHE;
  wire [11:0]auto_pc_to_s00_couplers_ARID;
  wire [7:0]auto_pc_to_s00_couplers_ARLEN;
  wire [0:0]auto_pc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire [3:0]auto_pc_to_s00_couplers_ARQOS;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire [2:0]auto_pc_to_s00_couplers_ARSIZE;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [1:0]auto_pc_to_s00_couplers_AWBURST;
  wire [3:0]auto_pc_to_s00_couplers_AWCACHE;
  wire [11:0]auto_pc_to_s00_couplers_AWID;
  wire [7:0]auto_pc_to_s00_couplers_AWLEN;
  wire [0:0]auto_pc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire [3:0]auto_pc_to_s00_couplers_AWQOS;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire [2:0]auto_pc_to_s00_couplers_AWSIZE;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire [11:0]auto_pc_to_s00_couplers_BID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire [11:0]auto_pc_to_s00_couplers_RID;
  wire auto_pc_to_s00_couplers_RLAST;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WLAST;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[11:0] = auto_pc_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_pc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_pc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[11:0] = auto_pc_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_pc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_pc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BID = M_AXI_bid[11:0];
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RID = M_AXI_rid[11:0];
  assign auto_pc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  red_pitaya_ps_1_auto_pc_4 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_s00_couplers_ARCACHE),
        .m_axi_arid(auto_pc_to_s00_couplers_ARID),
        .m_axi_arlen(auto_pc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_s00_couplers_AWCACHE),
        .m_axi_awid(auto_pc_to_s00_couplers_AWID),
        .m_axi_awlen(auto_pc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bid(auto_pc_to_s00_couplers_BID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rid(auto_pc_to_s00_couplers_RID),
        .m_axi_rlast(auto_pc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule
