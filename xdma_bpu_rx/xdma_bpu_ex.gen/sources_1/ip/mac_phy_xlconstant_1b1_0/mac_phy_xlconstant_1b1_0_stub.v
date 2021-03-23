// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Dec 24 22:46:03 2020
// Host        : ubuntu running 64-bit Ubuntu 18.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/caohy/Work/xdma_bpu_tx/xdma_bpu_ex.gen/sources_1/ip/mac_phy_xlconstant_1b1_0/mac_phy_xlconstant_1b1_0_stub.v
// Design      : mac_phy_xlconstant_1b1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlconstant_v1_1_7_xlconstant,Vivado 2020.2" *)
module mac_phy_xlconstant_1b1_0(dout)
/* synthesis syn_black_box black_box_pad_pin="dout[0:0]" */;
  output [0:0]dout;
endmodule
