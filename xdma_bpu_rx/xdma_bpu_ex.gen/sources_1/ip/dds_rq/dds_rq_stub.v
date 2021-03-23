// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Dec  4 16:52:36 2020
// Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/tpu_double/tpu_receive/tpu_receive.srcs/sources_1/new/dds_rq/dds_rq_stub.v
// Design      : dds_rq
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dds_compiler_v6_0_20,Vivado 2020.2" *)
module dds_rq(aclk, m_axis_data_tvalid, m_axis_data_tdata, 
  m_axis_phase_tvalid, m_axis_phase_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,m_axis_data_tvalid,m_axis_data_tdata[15:0],m_axis_phase_tvalid,m_axis_phase_tdata[15:0]" */;
  input aclk;
  output m_axis_data_tvalid;
  output [15:0]m_axis_data_tdata;
  output m_axis_phase_tvalid;
  output [15:0]m_axis_phase_tdata;
endmodule
