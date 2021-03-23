-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Dec 24 22:46:03 2020
-- Host        : ubuntu running 64-bit Ubuntu 18.04 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/caohy/Work/xdma_bpu_tx/xdma_bpu_ex.gen/sources_1/ip/mac_phy_xlconstant_1b1_0/mac_phy_xlconstant_1b1_0_stub.vhdl
-- Design      : mac_phy_xlconstant_1b1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mac_phy_xlconstant_1b1_0 is
  Port ( 
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end mac_phy_xlconstant_1b1_0;

architecture stub of mac_phy_xlconstant_1b1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dout[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlconstant_v1_1_7_xlconstant,Vivado 2020.2";
begin
end;
