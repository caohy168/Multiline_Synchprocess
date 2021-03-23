`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: thgd_thz
// Engineer: caohy
// 
// Create Date: 2020/12/23 10:02:48
// Design Name: 
// Module Name: Board
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Transmit_Board
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ps/1ps

`include "board_common.vh"

`define SIMULATION

module Board;

  parameter          REF_CLK_FREQ       = 0 ;      // 0 - 100 MHz, 1 - 125 MHz,  2 - 250 MHz

  parameter C_DATA_WIDTH                        = 64 ;
  parameter          DRP_CLK_FREQ       = 0; // 0 - 100 MHz, 1 - 125 MHz, 3 - 300 MHz
//
  localparam         DRP_CLK_HALF_CYCLE = (DRP_CLK_FREQ == 0) ? 5000 :
                                          (DRP_CLK_FREQ == 1) ? 4000 :
                                          (DRP_CLK_FREQ == 2) ? 2000 : 
                                          (DRP_CLK_FREQ == 3) ? 1666 : 0;

  localparam         REF_CLK_HALF_CYCLE = (REF_CLK_FREQ == 0) ? 5000 :
                                          (REF_CLK_FREQ == 1) ? 4000 :
                                          (REF_CLK_FREQ == 2) ? 2000 : 0;
  localparam   [2:0] PF0_DEV_CAP_MAX_PAYLOAD_SIZE = 3'b010;
  `ifdef LINKWIDTH
  localparam   [4:0] LINK_WIDTH = 5'd`LINKWIDTH;
  `else
  localparam   [4:0] LINK_WIDTH = 5'd1;
  `endif
  `ifdef LINKSPEED
  localparam   [2:0] LINK_SPEED = 3'h`LINKSPEED;
  `else
  localparam   [2:0] LINK_SPEED = 3'h1;
  `endif

  localparam EXT_PIPE_SIM = "FALSE";

  integer            i;

  // System-level clock and reset
  reg                sys_rst_n;

  wire               ep_sys_clk;
  wire               rp_sys_clk;
  wire               ep_sys_clk_p;
  wire               ep_sys_clk_n;
  wire               rp_sys_clk_p;
  wire               rp_sys_clk_n;

  //
  // PCI-Express Serial Interconnect
  //
  wire led_0;
  wire led_1;
  wire led_2;
  wire led_3;

  wire  [(LINK_WIDTH-1):0]  ep_pci_exp_txn;
  wire  [(LINK_WIDTH-1):0]  ep_pci_exp_txp;
  wire  [(LINK_WIDTH-1):0]  rp_pci_exp_txn;
  wire  [(LINK_WIDTH-1):0]  rp_pci_exp_txp;

  //------------------------------------------------------------------------------//
  // Generate system clock
  //------------------------------------------------------------------------------//
  sys_clk_gen_ds # (
    .halfcycle(REF_CLK_HALF_CYCLE), 
    .offset(0)
  )
  CLK_GEN_RP (
    .sys_clk_p(rp_sys_clk_p),
    .sys_clk_n(rp_sys_clk_n)
  );

  sys_clk_gen_ds # (
    .halfcycle(REF_CLK_HALF_CYCLE),
    .offset(0)
  )
  CLK_GEN_EP (
    .sys_clk_p(ep_sys_clk_p),
    .sys_clk_n(ep_sys_clk_n)
  );

  //------------------------------------------------------------------------------//
  // Generate system-level reset
  //------------------------------------------------------------------------------//
  parameter ON=3, OFF=4, UNIQUE=32, UNIQUE0=64, PRIORITY=128;

  initial begin
    `ifndef XILINX_SIMULATOR
    // Disable UNIQUE, UNIQUE0, and PRIORITY analysis during reset because signal can be at unknown value during reset
    $assertcontrol( OFF , UNIQUE | UNIQUE0 | PRIORITY);
    `endif

    $display("[%t] : System Reset Is Asserted...", $realtime);
    sys_rst_n = 1'b0;
    repeat (500) @(posedge rp_sys_clk_p);
    $display("[%t] : System Reset Is De-asserted...", $realtime);
    sys_rst_n = 1'b1;

    `ifndef XILINX_SIMULATOR
    // Re-enable UNIQUE, UNIQUE0, and PRIORITY analysis
    $assertcontrol( ON , UNIQUE | UNIQUE0 | PRIORITY);
    `endif
  end
  //------------------------------------------------------------------------------//
  //------------------------------------------------------------------------------//
  // EndPoint DUT with PIO Slave
  //------------------------------------------------------------------------------//
  //
  // PCI-Express Endpoint Instance
  //
  xilinx_dma_pcie_ep
   EP (
    // SYS Inteface
    .sys_clk_n(ep_sys_clk_n),
    .sys_clk_p(ep_sys_clk_p),
    .sys_rst_n(sys_rst_n),

  
    // Misc signals
    .led_0(led_0),
    .led_1(led_1),
    .led_2(led_2),
    .led_3(led_3),


    // PCI-Express Serial Interface
    .pci_exp_txn(ep_pci_exp_txn),
    .pci_exp_txp(ep_pci_exp_txp),
    .pci_exp_rxn(rp_pci_exp_txn),
    .pci_exp_rxp(rp_pci_exp_txp)
  
  );

  //------------------------------------------------------------------------------//
  // Simulation Root Port Model
  // (Comment out this module to interface EndPoint with BFM)
  //------------------------------------------------------------------------------//
  //
  // PCI-Express Model Root Port Instance
  //

  xilinx_pcie3_uscale_rp
  #(
     .PF0_DEV_CAP_MAX_PAYLOAD_SIZE(PF0_DEV_CAP_MAX_PAYLOAD_SIZE)
     //ONLY FOR RP
  ) RP (

    // SYS Inteface
    .sys_clk_n(rp_sys_clk_n),
    .sys_clk_p(rp_sys_clk_p),
    .sys_rst_n( sys_rst_n ),
    // PCI-Express Serial Interface
    .pci_exp_txn(rp_pci_exp_txn),
    .pci_exp_txp(rp_pci_exp_txp),
    .pci_exp_rxn(ep_pci_exp_txn),
    .pci_exp_rxp(ep_pci_exp_txp)
  );

  initial begin

    if ($test$plusargs ("dump_all")) begin

  `ifdef NCV // Cadence TRN dump

      $recordsetup("design=Board",
                   "compress",
                   "wrapsize=100M",
                   "version=1",
                   "run=1");
      $recordvars();

  `elsif VCS //Synopsys VPD dump

      $vcdplusfile("Board.vpd");
      $vcdpluson;
      $vcdplusglitchon;
      $vcdplusflush;

  `else

      // Verilog VC dump
      $dumpfile("Board.vcd");
      $dumpvars(0, Board);

  `endif

    end

  end
  
endmodule // Transmit_Board