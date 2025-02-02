// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:ip:ten_gig_eth_pcs_pma:6.0
// IP Revision: 18

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
mac_phy_ten_gig_eth_pcs_pma_ch0_0 your_instance_name (
  .refclk_p(refclk_p),                              // input wire refclk_p
  .refclk_n(refclk_n),                              // input wire refclk_n
  .reset(reset),                                    // input wire reset
  .resetdone_out(resetdone_out),                    // output wire resetdone_out
  .coreclk_out(coreclk_out),                        // output wire coreclk_out
  .rxrecclk_out(rxrecclk_out),                      // output wire rxrecclk_out
  .dclk(dclk),                                      // input wire dclk
  .txp(txp),                                        // output wire txp
  .txn(txn),                                        // output wire txn
  .rxp(rxp),                                        // input wire rxp
  .rxn(rxn),                                        // input wire rxn
  .sim_speedup_control(sim_speedup_control),        // input wire sim_speedup_control
  .txusrclk_out(txusrclk_out),                      // output wire txusrclk_out
  .txusrclk2_out(txusrclk2_out),                    // output wire txusrclk2_out
  .areset_coreclk_out(areset_coreclk_out),          // output wire areset_coreclk_out
  .areset_datapathclk_out(areset_datapathclk_out),  // output wire areset_datapathclk_out
  .gttxreset_out(gttxreset_out),                    // output wire gttxreset_out
  .gtrxreset_out(gtrxreset_out),                    // output wire gtrxreset_out
  .txuserrdy_out(txuserrdy_out),                    // output wire txuserrdy_out
  .reset_counter_done_out(reset_counter_done_out),  // output wire reset_counter_done_out
  .qpll0lock_out(qpll0lock_out),                    // output wire qpll0lock_out
  .qpll0outclk_out(qpll0outclk_out),                // output wire qpll0outclk_out
  .qpll0outrefclk_out(qpll0outrefclk_out),          // output wire qpll0outrefclk_out
  .xgmii_txd(xgmii_txd),                            // input wire [63 : 0] xgmii_txd
  .xgmii_txc(xgmii_txc),                            // input wire [7 : 0] xgmii_txc
  .xgmii_rxd(xgmii_rxd),                            // output wire [63 : 0] xgmii_rxd
  .xgmii_rxc(xgmii_rxc),                            // output wire [7 : 0] xgmii_rxc
  .mdc(mdc),                                        // input wire mdc
  .mdio_in(mdio_in),                                // input wire mdio_in
  .mdio_out(mdio_out),                              // output wire mdio_out
  .mdio_tri(mdio_tri),                              // output wire mdio_tri
  .prtad(prtad),                                    // input wire [4 : 0] prtad
  .core_status(core_status),                        // output wire [7 : 0] core_status
  .signal_detect(signal_detect),                    // input wire signal_detect
  .tx_fault(tx_fault),                              // input wire tx_fault
  .drp_req(drp_req),                                // output wire drp_req
  .drp_gnt(drp_gnt),                                // input wire drp_gnt
  .core_to_gt_drpen(core_to_gt_drpen),              // output wire core_to_gt_drpen
  .core_to_gt_drpwe(core_to_gt_drpwe),              // output wire core_to_gt_drpwe
  .core_to_gt_drpaddr(core_to_gt_drpaddr),          // output wire [15 : 0] core_to_gt_drpaddr
  .core_to_gt_drpdi(core_to_gt_drpdi),              // output wire [15 : 0] core_to_gt_drpdi
  .gt_drprdy(gt_drprdy),                            // output wire gt_drprdy
  .gt_drpdo(gt_drpdo),                              // output wire [15 : 0] gt_drpdo
  .gt_drpen(gt_drpen),                              // input wire gt_drpen
  .gt_drpwe(gt_drpwe),                              // input wire gt_drpwe
  .gt_drpaddr(gt_drpaddr),                          // input wire [15 : 0] gt_drpaddr
  .gt_drpdi(gt_drpdi),                              // input wire [15 : 0] gt_drpdi
  .core_to_gt_drprdy(core_to_gt_drprdy),            // input wire core_to_gt_drprdy
  .core_to_gt_drpdo(core_to_gt_drpdo),              // input wire [15 : 0] core_to_gt_drpdo
  .tx_disable(tx_disable),                          // output wire tx_disable
  .pma_pmd_type(pma_pmd_type)                      // input wire [2 : 0] pma_pmd_type
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file mac_phy_ten_gig_eth_pcs_pma_ch0_0.v when simulating
// the core, mac_phy_ten_gig_eth_pcs_pma_ch0_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

