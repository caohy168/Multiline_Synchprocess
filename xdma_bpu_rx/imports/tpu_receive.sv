`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: htgd_thz
// Engineer: caohy  
// 
// Create Date: 11/08/2020 06:39:03 PM
// Design Name: 
// Module Name: tpu_receive
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
module tpu_receive#(
        parameter AXIS_TDATA_WIDTH =  64,
        parameter AXIS_TKEEP_WIDTH =  AXIS_TDATA_WIDTH/8
    )(
  input        CLK_125MHZ_P,CLK_125MHZ_N,

  input        refclk_p,
  input        refclk_n,
  input        reset,
  output       xphy_txp,
  output       xphy_txn,
  input        xphy_rxp,
  input        xphy_rxn,
  
  input       s_axis_outputADI_tvalid[8],  
  input       s_axis_outputADQ_tvalid[8],
  input       s_axis_outputADI_tlast[8],
  input       s_axis_outputADQ_tlast[8],     
  input [15:0]s_axis_outputADI_tdata[8],
  input [15:0]s_axis_outputADQ_tdata[8]
  );
  
logic clk_250m,clk_500m;   

tpu_receive_clock tpu_receive_clock 
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

logic [AXIS_TDATA_WIDTH-1:0] axis_tdata_bb;
logic [AXIS_TKEEP_WIDTH-1:0] axis_tkeep_bb;
logic                        axis_tvalid_bb;
logic                        axis_tlast_bb;
logic                        axis_tuser_bb;
logic                        axis_tready_bb=1;

logic m_axis_output_tvalid;
logic m_axis_output_tready;
logic [63:0]m_axis_output_tdata;
logic m_axis_output_tlast;

  kcu105_10gbaser mainnet_up10g(
  
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
  
  .s_axis_tx_tdata(axis_tdata_bb),
  .s_axis_tx_tkeep(axis_tkeep_bb),
  .s_axis_tx_tlast(axis_tlast_bb),
  .s_axis_tx_tready(axis_tready_bb),
  .s_axis_tx_tuser(axis_tuser_bb),
  .s_axis_tx_tvalid(axis_tvalid_bb),
  
  .leds());
   
//logic [AXIS_TDATA_WIDTH-1:0] axis_tdata_transfer;
//logic [AXIS_TKEEP_WIDTH-1:0] axis_tkeep_transfer;
//logic                        axis_tvalid_transfer;
//logic                        axis_tlast_transfer;
//logic                        axis_tuser_transfer;
//logic                        axis_tready_transfer=1; 
  
// datastream_transfer datastream_transfer_transmit (

//  .aclk(clk_250m),
//  .reset(reset),  
  
//  .rx_axis_tdata_right (axis_tdata_10g ),
//  .rx_axis_tkeep_right (axis_tkeep_10g ),
//  .rx_axis_tvalid_right(axis_tvalid_10g),
//  .rx_axis_tlast_right (axis_tlast_10g ),
//  .rx_axis_tuser_right (axis_tuser_10g ),
//  .rx_axis_tready_right(axis_tready_10g),
//  //DATA TO TPU BAESBAND 
//  .tx_axis_tdata_right (axis_tdata_transfer),
//  .tx_axis_tkeep_right (axis_tkeep_transfer),
//  .tx_axis_tvalid_right(axis_tvalid_transfer),
//  .tx_axis_tlast_right (axis_tlast_transfer),
//  .tx_axis_tuser_right (axis_tuser_transfer),
//  .tx_axis_tready_right(axis_tready_transfer));

data_transfer dst_receive (

    .aclk(clk_250m),
    .reset(reset),  
    
    .rx_axis_tdata_left(m_axis_output_tdata),
    .rx_axis_tkeep_left(),
    .rx_axis_tvalid_left(m_axis_output_tvalid),
    .rx_axis_tlast_left(m_axis_output_tlast),
    .rx_axis_tuser_left(),
    .rx_axis_tready_left(m_axis_output_tready),
    
    .tx_axis_tdata_left (axis_tdata_bb),
    .tx_axis_tkeep_left (axis_tkeep_bb),
    .tx_axis_tvalid_left(axis_tvalid_bb),
    .tx_axis_tlast_left (axis_tlast_bb),
    .tx_axis_tuser_left (axis_tuser_bb),
    .tx_axis_tready_left(axis_tready_bb)); 

    
logic m_axis_outputI_tvalid[8];
logic m_axis_outputI_tready[8];
logic [15:0]m_axis_outputI_tdata[8];
logic m_axis_outputI_tlast[8];
logic m_axis_outputQ_tvalid[8]={1,1,1,1,1,1,1,1};
logic m_axis_outputQ_tready[8]={1,1,1,1,1,1,1,1};
logic [15:0]m_axis_outputQ_tdata[8];
logic m_axis_outputQ_tlast[8];
  
 tpu_pullstream tpu_pullstream(
  .clk_250m(clk_250m),
  .clk_500m(clk_500m),
  .reset(reset),
  
  .m_axis_input_tvalid(m_axis_output_tvalid),
  .m_axis_input_tready(m_axis_output_tready),
  .m_axis_input_tdata (m_axis_output_tdata),
  .m_axis_input_tlast (m_axis_output_tlast),
  
  .s_axis_outputADI_tvalid(s_axis_outputADI_tvalid),  
  .s_axis_outputADQ_tvalid(s_axis_outputADQ_tvalid),
  .s_axis_outputADI_tlast (s_axis_outputADI_tlast ),
  .s_axis_outputADQ_tlast (s_axis_outputADQ_tlast ),     
  .s_axis_outputADI_tdata (s_axis_outputADI_tdata ),
  .s_axis_outputADQ_tdata (s_axis_outputADQ_tdata ));
        

        
endmodule