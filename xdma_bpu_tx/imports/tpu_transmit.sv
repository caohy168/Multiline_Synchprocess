`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: htgd_thz
// Engineer: caohy  
// 
// Create Date: 11/08/2020 06:39:03 PM
// Design Name: 
// Module Name: tpu_transmit
// Project Name: 
// Target Devices: kcu105
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module tpu_transmit#(
        //10g mac and phy parameter
        parameter AXIS_TDATA_WIDTH =  64,
        parameter AXIS_TKEEP_WIDTH =  AXIS_TDATA_WIDTH/8,
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
        parameter AXIS_CCIX_TX_TUSER_WIDTH     = 46
    )(
  input        CLK_125MHZ_P,CLK_125MHZ_N,

  input        refclk_p,
  input        refclk_n,
  input        reset,
  //to 10g optical module
  output       xphy_txp,
  output       xphy_txn,
  input        xphy_rxp,
  input        xphy_rxn,
  //to DA 204B interface
  output       m_axis_outputDAI_tvalid[8],  
  output       m_axis_outputDAQ_tvalid[8],
  output       m_axis_outputDAI_tlast[8],
  output       m_axis_outputDAQ_tlast[8],     
  output [15:0]m_axis_outputDAI_tdata[8],
  output [15:0]m_axis_outputDAQ_tdata[8],
  //to pcie endpiont interface
  output [(PL_LINK_CAP_MAX_LINK_WIDTH - 1) : 0] pci_exp_txp,
  output [(PL_LINK_CAP_MAX_LINK_WIDTH - 1) : 0] pci_exp_txn,
  input [(PL_LINK_CAP_MAX_LINK_WIDTH - 1) : 0]  pci_exp_rxp,
  input [(PL_LINK_CAP_MAX_LINK_WIDTH - 1) : 0]  pci_exp_rxn,
  
  input 					 sys_clk_p,
  input 					 sys_clk_n,
  input 					 sys_rst_n
  
  );
  
logic led_0;
logic led_1;
logic led_2;
logic led_3;  
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

wire 					   user_clk;
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
reg [C_NUM_USR_IRQ-1:0] 		     usr_irq_req = 0;
wire [C_NUM_USR_IRQ-1:0] 		     usr_irq_ack;

//-- AXI Master Write Address Channel
wire [C_M_AXI_ADDR_WIDTH-1:0] m_axi_awaddr;
wire [C_M_AXI_ID_WIDTH-1:0] m_axi_awid;
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
logic [C_DATA_WIDTH-1:0]m_axis_h2c_tdata_0;
logic 			        m_axis_h2c_tlast_0;
logic 			        m_axis_h2c_tvalid_0;
logic 			        m_axis_h2c_tready_0;
logic [C_DATA_WIDTH/8-1:0]	m_axis_h2c_tkeep_0;
wire [C_DATA_WIDTH-1:0] s_axis_c2h_tdata_0; 
wire s_axis_c2h_tlast_0;
wire s_axis_c2h_tvalid_0;
wire s_axis_c2h_tready_0;
wire [C_DATA_WIDTH/8-1:0] s_axis_c2h_tkeep_0; 

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
    
      .user_lnk_up     ( user_lnk_up )
    );

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
    
      .leds(leds)
    );
  
logic clk_250m,clk_500m;   

tpu_transmit_clock tpu_transmit_clock 
 (
  // Clock out ports
  .clk_out1(clk_250m),
  .clk_out2(clk_500m),
 // Clock in ports
  .clk_in1_p(CLK_125MHZ_P),
  .clk_in1_n(CLK_125MHZ_N)
 );   
 
logic [AXIS_TDATA_WIDTH-1:0] axis_tdata_10g;
logic [AXIS_TKEEP_WIDTH-1:0] axis_tkeep_10g;
logic                        axis_tvalid_10g;
logic                        axis_tlast_10g;
logic                        axis_tuser_10g;
logic                        axis_tready_10g=1;

  kcu105_10gbaser mainnet_down10g(
  
  .refclk_n         (refclk_n),        
  .refclk_p         (refclk_p),        
  .reset            (reset),          
  .xphy_txp         (xphy_txp),        
  .xphy_txn         (xphy_txn),         
  .xphy_rxp         (xphy_rxp),        
  .xphy_rxn         (xphy_rxn),        
  
  .rx_axis_aclk  (clk_250m      ),
  .rx_axis_tdata (axis_tdata_10g ),
  .rx_axis_tkeep (axis_tkeep_10g ),
  .rx_axis_tvalid(axis_tvalid_10g),
  .rx_axis_tlast (axis_tlast_10g ),
  .rx_axis_tuser (axis_tuser_10g ),
  .rx_axis_tready(axis_tready_10g),
  
  .leds());
  
logic [AXIS_TDATA_WIDTH-1:0] axis_tdata_transfer;
logic [AXIS_TKEEP_WIDTH-1:0] axis_tkeep_transfer;
logic                        axis_tvalid_transfer;
logic                        axis_tlast_transfer;
logic                        axis_tuser_transfer;
logic                        axis_tready_transfer=1; 
  
 datastream_transfer dst_transmit (

  .aclk(clk_250m),
  .reset(reset),  
  
  .rx_axis_tdata_right (axis_tdata_10g ),
  .rx_axis_tkeep_right (axis_tkeep_10g ),
  .rx_axis_tvalid_right(axis_tvalid_10g),
  .rx_axis_tlast_right (axis_tlast_10g ),
  .rx_axis_tuser_right (axis_tuser_10g ),
  .rx_axis_tready_right(axis_tready_10g),
  //DATA TO TPU BAESBAND 
  .tx_axis_tdata_right (axis_tdata_transfer),
  .tx_axis_tkeep_right (axis_tkeep_transfer),
  .tx_axis_tvalid_right(axis_tvalid_transfer),
  .tx_axis_tlast_right (axis_tlast_transfer),
  .tx_axis_tuser_right (axis_tuser_transfer),
  .tx_axis_tready_right(axis_tready_transfer));
    
logic m_axis_outputI_tvalid[8];
logic m_axis_outputI_tready[8];
logic [15:0]m_axis_outputI_tdata[8];
logic m_axis_outputI_tlast[8];
logic m_axis_outputQ_tvalid[8]={1,1,1,1,1,1,1,1};
logic m_axis_outputQ_tready[8]={1,1,1,1,1,1,1,1};
logic [15:0]m_axis_outputQ_tdata[8];
logic m_axis_outputQ_tlast[8];
  
 tpu_pushstream tpu_pushstream(
  .clk_250m(clk_250m),
  .clk_500m(clk_500m),
  .reset(reset),
  
  .s_axis_input_tvalid(axis_tvalid_transfer),
  .s_axis_input_tready(axis_tready_transfer),
  .s_axis_input_tdata (axis_tdata_transfer),
  .s_axis_input_tlast (axis_tlast_transfer),
  
  .m_axis_outputDAI_tvalid(m_axis_outputDAI_tvalid),  
  .m_axis_outputDAQ_tvalid(m_axis_outputDAQ_tvalid),
  .m_axis_outputDAI_tlast (m_axis_outputDAI_tlast ),
  .m_axis_outputDAQ_tlast (m_axis_outputDAQ_tlast ),     
  .m_axis_outputDAI_tdata (m_axis_outputDAI_tdata ),
  .m_axis_outputDAQ_tdata (m_axis_outputDAQ_tdata ));
        
endmodule
