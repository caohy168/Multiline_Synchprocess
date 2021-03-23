`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2020 11:12:38 PM
// Design Name: 
// Module Name: tpu_pullstream
// Project Name: 
// Target Devices: 
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


module tpu_pullstream(
input clk_250m,clk_500m,reset,

output logic m_axis_input_tvalid,
input m_axis_input_tready,
output logic [63:0]m_axis_input_tdata,
output logic m_axis_input_tlast,

input       s_axis_outputADI_tvalid[8],  
input       s_axis_outputADQ_tvalid[8],
input       s_axis_outputADI_tlast[8],
input       s_axis_outputADQ_tlast[8],     
input [15:0]s_axis_outputADI_tdata[8],
input [15:0]s_axis_outputADQ_tdata[8]);

logic m_axis_outputI_tvalid_8[8];
logic m_axis_outputI_tready_8[8]={1,1,1,1,1,1,1,1};
logic [7:0]m_axis_outputI_tdata_8[8];
logic m_axis_outputI_tlast_8[8];
logic m_axis_outputQ_tvalid_8[8];
logic m_axis_outputQ_tready_8[8]={1,1,1,1,1,1,1,1};
logic [7:0]m_axis_outputQ_tdata_8[8];
logic m_axis_outputQ_tlast_8[8];
    
radio radio_pullstream(
    .clk_250m(clk_250m),
    .clk_500m(clk_500m),
    .reset(reset),
    
    .m_axis_outputI_tvalid_8(m_axis_outputI_tvalid_8),
    .m_axis_outputI_tready_8(m_axis_outputI_tready_8),
    .m_axis_outputI_tdata_8(m_axis_outputI_tdata_8),
    .m_axis_outputI_tlast_8(m_axis_outputI_tlast_8),
    .m_axis_outputQ_tvalid_8(m_axis_outputQ_tvalid_8),
    .m_axis_outputQ_tready_8(m_axis_outputQ_tready_8),
    .m_axis_outputQ_tdata_8(m_axis_outputQ_tdata_8),
    .m_axis_outputQ_tlast_8(m_axis_outputQ_tlast_8),
    
    .s_axis_outputADI_tvalid(s_axis_outputADI_tvalid),   
    .s_axis_outputADQ_tvalid(s_axis_outputADQ_tvalid),
    .s_axis_outputADI_tlast (s_axis_outputADI_tlast),
    .s_axis_outputADQ_tlast (s_axis_outputADQ_tlast),     
    .s_axis_outputADI_tdata (s_axis_outputADI_tdata),
    .s_axis_outputADQ_tdata (s_axis_outputADQ_tdata)
    );

layer1 layer1_pullsteam(
    .clk(clk_250m),
    .reset(reset),

    .m_axis_output_tvalid(m_axis_input_tvalid),
    .m_axis_output_tready(m_axis_input_tready),
    .m_axis_output_tdata(m_axis_input_tdata),
    .m_axis_output_tlast(m_axis_input_tlast),

    .s_axis_inputI_tvalid(),
    .s_axis_inputI_tready(),
    .s_axis_inputI_tdata(),
    .s_axis_inputI_tlast(),
    .s_axis_inputQ_tvalid(),
    .s_axis_inputQ_tready(),
    .s_axis_inputQ_tdata(),
    .s_axis_inputQ_tlast(),

    .s_axis_inputI_tvalid_8(m_axis_outputI_tvalid_8),
    .s_axis_inputI_tready_8(m_axis_outputI_tready_8),
    .s_axis_inputI_tdata_8(m_axis_outputI_tdata_8),
    .s_axis_inputI_tlast_8(m_axis_outputI_tlast_8),
    .s_axis_inputQ_tvalid_8(m_axis_outputQ_tvalid_8),
    .s_axis_inputQ_tready_8(m_axis_outputQ_tready_8),
    .s_axis_inputQ_tdata_8(m_axis_outputQ_tdata_8),
    .s_axis_inputQ_tlast_8(m_axis_outputQ_tlast_8));
    

endmodule
