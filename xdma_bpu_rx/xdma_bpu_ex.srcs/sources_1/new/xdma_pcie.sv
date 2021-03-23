`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: htgd_thz    
// Engineer: caohy
// 
// Create Date: 12/28/2020 09:02:11 PM
// Design Name: 
// Module Name: xdma_pcie
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// pcie endpoint + axidma
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module xdma_pcie#(
        //pcie endpiont parameter
        parameter PL_LINK_CAP_MAX_LINK_WIDTH          = 1,            // 1- X1; 2 - X2; 4 - X4; 8 - X8
        parameter PL_SIM_FAST_LINK_TRAINING           = "FALSE",      // Simulation Speedup
        parameter PL_LINK_CAP_MAX_LINK_SPEED          = 1,             // 1- GEN1; 2 - GEN2; 4 - GEN3
        parameter C_DATA_WIDTH                        = 64 ,
        parameter EXT_PIPE_SIM                        = "FALSE",  // This Parameter has effect on selecting Enable External PIPE Interface in GUI.
        parameter C_ROOT_PORT                         = "FALSE",      // PCIe block is in root port mode
        parameter C_DEVICE_NUMBER                     = 0,            // Device number for Root Port configurations only
        parameter AXIS_CCIX_RX_TDATA_WIDTH     = 256, 
        parameter AXIS_CCIX_TX_TDATA_WIDTH     = 256,
        parameter AXIS_CCIX_RX_TUSER_WIDTH     = 46,
        parameter AXIS_CCIX_TX_TUSER_WIDTH     = 46,
        
        parameter AXI_DATA_WIDTH               = 64,
        parameter C_S_AXIS_DATA_WIDTH          = AXI_DATA_WIDTH,
        parameter C_M_AXIS_DATA_WIDTH          = AXI_DATA_WIDTH
    )(
//to pcie endpiont interface
  output [(PL_LINK_CAP_MAX_LINK_WIDTH - 1) : 0] pci_exp_txp,
  output [(PL_LINK_CAP_MAX_LINK_WIDTH - 1) : 0] pci_exp_txn,
  input [(PL_LINK_CAP_MAX_LINK_WIDTH - 1) : 0]  pci_exp_rxp,
  input [(PL_LINK_CAP_MAX_LINK_WIDTH - 1) : 0]  pci_exp_rxn,
  
   output 	logic			 led_0,
   output 	logic			 led_1,
   output 	logic			 led_2,
   output 	logic			 led_3,
  
  input 					 sys_clk_p,
  input 					 sys_clk_n,
  input 					 sys_rst_n,
  
  output    logic                      user_clk,
  // C2H AXI ST interface to user Channle 0
  input    [C_S_AXIS_DATA_WIDTH-1:0]   s_axis_c2h_tdata_0,
  input                                s_axis_c2h_tlast_0,
  input    [C_S_AXIS_DATA_WIDTH/8-1:0] s_axis_c2h_tuser_0,
  input    [C_S_AXIS_DATA_WIDTH/8-1:0] s_axis_c2h_tkeep_0,
  input                                s_axis_c2h_tvalid_0,
  output                               s_axis_c2h_tready_0,
  // H2C AXI ST interface to user Channel 0
  output   [C_M_AXIS_DATA_WIDTH-1:0]   m_axis_h2c_tdata_0,
  output                               m_axis_h2c_tlast_0,
  output   [C_M_AXIS_DATA_WIDTH/8-1:0] m_axis_h2c_tuser_0,
  output   [C_M_AXIS_DATA_WIDTH/8-1:0] m_axis_h2c_tkeep_0,
  output                               m_axis_h2c_tvalid_0,
  input                                m_axis_h2c_tready_0
    );
    
//-----------------------------------------pcie interface----------------------------------------------------------
// Local Parameters derived from user selection
localparam integer 				   USER_CLK_FREQ         = ((PL_LINK_CAP_MAX_LINK_SPEED == 3'h4) ? 5 : 4);
localparam TCQ = 1;
localparam C_S_AXI_ID_WIDTH = 4; 
localparam C_M_AXI_ID_WIDTH = 4; 
localparam C_S_AXI_DATA_WIDTH = C_DATA_WIDTH;
localparam C_M_AXI_DATA_WIDTH = C_DATA_WIDTH;
localparam C_S_AXI_ADDR_WIDTH = 64;
localparam C_M_AXI_ADDR_WIDTH = 64;

localparam C_NUM_USR_IRQ	 = 1;

wire 					   user_lnk_up;

//----------------------------------------------------------------------------------------------------------------//
//  AXI Interface                                                                                                 //
//----------------------------------------------------------------------------------------------------------------//
wire 					   user_resetn;

// Wires for Avery HOT/WARM and COLD RESET
wire 					   avy_sys_rst_n_c;
wire 					   avy_cfg_hot_reset_out;
reg 					   avy_sys_rst_n_g;
reg 					   avy_cfg_hot_reset_out_g;
assign avy_sys_rst_n_c = avy_sys_rst_n_g;
assign avy_cfg_hot_reset_out = avy_cfg_hot_reset_out_g;
initial begin 
  avy_sys_rst_n_g = 1;
  avy_cfg_hot_reset_out_g =0;
end

//----------------------------------------------------------------------------------------------------------------//
//    System(SYS) Interface                                                                                       //
//----------------------------------------------------------------------------------------------------------------//
wire                                    sys_clk;
wire                                    sys_clk_gt;
wire                                    sys_rst_n_c;

// User Clock LED Heartbeat
reg [25:0] 			     user_clk_heartbeat;
reg [((2*C_NUM_USR_IRQ)-1):0]		usr_irq_function_number=0;
reg [C_NUM_USR_IRQ-1:0] 		    usr_irq_req = 0;
wire [C_NUM_USR_IRQ-1:0] 		    usr_irq_ack;

//-- AXI Master Write Address Channel
wire [C_M_AXI_ADDR_WIDTH-1:0] m_axi_awaddr;
wire [C_M_AXI_ID_WIDTH-1:0]   m_axi_awid;
wire [2:0] 		 m_axi_awprot;
wire [1:0] 		 m_axi_awburst;
wire [2:0] 		 m_axi_awsize;
wire [3:0] 		 m_axi_awcache;
wire [7:0] 		 m_axi_awlen;
wire 			 m_axi_awlock;
wire 			 m_axi_awvalid;
wire 			 m_axi_awready;

//-- AXI Master Write Data Channel
wire [C_M_AXI_DATA_WIDTH-1:0]     m_axi_wdata;
wire [(C_M_AXI_DATA_WIDTH/8)-1:0] m_axi_wstrb;
wire 			       m_axi_wlast;
wire 			       m_axi_wvalid;
wire 			       m_axi_wready;
//-- AXI Master Write Response Channel
wire 			       m_axi_bvalid;
wire 			       m_axi_bready;
wire [C_M_AXI_ID_WIDTH-1 : 0]     m_axi_bid ;
wire [1:0]                        m_axi_bresp ;

//-- AXI Master Read Address Channel
wire [C_M_AXI_ID_WIDTH-1 : 0]     m_axi_arid;
wire [C_M_AXI_ADDR_WIDTH-1:0]     m_axi_araddr;
wire [7:0]                        m_axi_arlen;
wire [2:0]                        m_axi_arsize;
wire [1:0]                        m_axi_arburst;
wire [2:0] 		       m_axi_arprot;
wire 			       m_axi_arvalid;
wire 			       m_axi_arready;
wire 			       m_axi_arlock;
wire [3:0] 		       m_axi_arcache;

//-- AXI Master Read Data Channel
wire [C_M_AXI_ID_WIDTH-1 : 0]   m_axi_rid;
wire [C_M_AXI_DATA_WIDTH-1:0]   m_axi_rdata;
wire [1:0] 		     m_axi_rresp;
wire 			     m_axi_rvalid;
wire 			     m_axi_rready;

wire [2:0]    msi_vector_width;
wire          msi_enable;

// AXI streaming ports
//logic [C_DATA_WIDTH-1:0]m_axis_h2c_tdata_0;
//logic 			        m_axis_h2c_tlast_0;
//logic 			        m_axis_h2c_tvalid_0;
//logic 			        m_axis_h2c_tready_0;
//logic [C_DATA_WIDTH/8-1:0]	m_axis_h2c_tkeep_0;
//wire [C_DATA_WIDTH-1:0] s_axis_c2h_tdata_0; 
//wire s_axis_c2h_tlast_0;
//wire s_axis_c2h_tvalid_0;
//wire s_axis_c2h_tready_0;
//wire [C_DATA_WIDTH/8-1:0] s_axis_c2h_tkeep_0; 

wire [3:0]                  leds;

wire free_run_clock;

wire [5:0]                          cfg_ltssm_state;

// Ref clock buffer
IBUFDS_GTE3 # (.REFCLK_HROW_CK_SEL(2'b00)) refclk_ibuf (.O(sys_clk_gt), .ODIV2(sys_clk), .I(sys_clk_p), .CEB(1'b0), .IB(sys_clk_n));
// Reset buffer
IBUF   sys_reset_n_ibuf (.O(sys_rst_n_c), .I(sys_rst_n));
// LED 0 pysically resides in the reconfiguable area for Tandem with 
// Field Updates designs so the OBUF must included in the app hierarchy.
assign led_0 = leds[0];
// LEDs 1-3 physically reside in the stage1 region for Tandem with Field 
// Updates designs so the OBUF must be instantiated at the top-level and
// added to the stage1 region
OBUF led_1_obuf (.O(led_1), .I(leds[1]));
OBUF led_2_obuf (.O(led_2), .I(leds[2]));
OBUF led_3_obuf (.O(led_3), .I(leds[3]));

// Core Top Level Wrapper
xdma_bpu xdma_bpu_i 
 (
  //---------------------------------------------------------------------------------------//
  //  PCI Express (pci_exp) Interface                                                      //
  //---------------------------------------------------------------------------------------//
  .sys_rst_n       ( sys_rst_n_c ),

  .sys_clk         ( sys_clk ),
  .sys_clk_gt      ( sys_clk_gt),
  
  // Tx
  .pci_exp_txn     ( pci_exp_txn ),
  .pci_exp_txp     ( pci_exp_txp ),
  
  // Rx
  .pci_exp_rxn     ( pci_exp_rxn ),
  .pci_exp_rxp     ( pci_exp_rxp ),

  // AXI streaming ports
  .s_axis_c2h_tdata_0(s_axis_c2h_tdata_0),  
  .s_axis_c2h_tlast_0(s_axis_c2h_tlast_0),
  .s_axis_c2h_tvalid_0(s_axis_c2h_tvalid_0), 
  .s_axis_c2h_tready_0(s_axis_c2h_tready_0),
  .s_axis_c2h_tkeep_0(s_axis_c2h_tkeep_0),
  .m_axis_h2c_tdata_0(m_axis_h2c_tdata_0),
  .m_axis_h2c_tlast_0(m_axis_h2c_tlast_0),
  .m_axis_h2c_tvalid_0(m_axis_h2c_tvalid_0),
  .m_axis_h2c_tready_0(m_axis_h2c_tready_0),
  .m_axis_h2c_tkeep_0(m_axis_h2c_tkeep_0),

  .usr_irq_req       (usr_irq_req),
  .usr_irq_ack       (usr_irq_ack),
  .msi_enable        (msi_enable),
  .msi_vector_width  (msi_vector_width),

 // Config managemnet interface
  .cfg_mgmt_addr  ( 19'b0 ),
  .cfg_mgmt_write ( 1'b0 ),
  .cfg_mgmt_write_data ( 32'b0 ),
  .cfg_mgmt_byte_enable ( 4'b0 ),
  .cfg_mgmt_read  ( 1'b0 ),
  .cfg_mgmt_read_data (),
  .cfg_mgmt_read_write_done (),
  .cfg_mgmt_type1_cfg_reg_access ( 1'b0 ),

  //-- AXI Global
  .axi_aclk        ( user_clk ),
  .axi_aresetn     ( user_resetn ),

  .user_lnk_up     ( user_lnk_up ));

// XDMA taget application
xdma_app #(
.C_M_AXI_ID_WIDTH(C_M_AXI_ID_WIDTH)
) xdma_app_i (

  // AXI streaming ports
  .s_axis_c2h_tdata_0(s_axis_c2h_tdata_0),  
  .s_axis_c2h_tlast_0(s_axis_c2h_tlast_0),
  .s_axis_c2h_tvalid_0(s_axis_c2h_tvalid_0), 
  .s_axis_c2h_tready_0(s_axis_c2h_tready_0),
  .s_axis_c2h_tkeep_0(s_axis_c2h_tkeep_0),
  .m_axis_h2c_tdata_0(m_axis_h2c_tdata_0),
  .m_axis_h2c_tlast_0(m_axis_h2c_tlast_0),
  .m_axis_h2c_tvalid_0(m_axis_h2c_tvalid_0),
  .m_axis_h2c_tready_0(m_axis_h2c_tready_0),
  .m_axis_h2c_tkeep_0(m_axis_h2c_tkeep_0),

  .user_clk(user_clk),
  .user_resetn(user_resetn),
  .user_lnk_up(user_lnk_up),
  .sys_rst_n(sys_rst_n_c),

  .leds(leds));
      
endmodule
