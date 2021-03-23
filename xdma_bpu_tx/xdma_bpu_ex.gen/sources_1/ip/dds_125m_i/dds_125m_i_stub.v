// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Dec  3 11:46:02 2020
// Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top dds_125m_i -prefix
//               dds_125m_i_ dds_125m_i_stub.v
// Design      : dds_125m_i
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dds_compiler_v6_0_20,Vivado 2020.2" *)
module dds_125m_i(aclk, m_axis_data_tvalid, m_axis_data_tdata, 
  m_axis_phase_tvalid, m_axis_phase_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,m_axis_data_tvalid,m_axis_data_tdata[7:0],m_axis_phase_tvalid,m_axis_phase_tdata[15:0]" */;
  input aclk;
  output m_axis_data_tvalid;
  output [7:0]m_axis_data_tdata;
  output m_axis_phase_tvalid;
  output [15:0]m_axis_phase_tdata;
endmodule
