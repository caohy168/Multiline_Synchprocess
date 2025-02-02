-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Dec 24 22:46:48 2020
-- Host        : ubuntu running 64-bit Ubuntu 18.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/caohy/Work/xdma_bpu_tx/xdma_bpu_ex.gen/sources_1/ip/mac_phy_xlconstant_1b0_0/mac_phy_xlconstant_1b0_0_sim_netlist.vhdl
-- Design      : mac_phy_xlconstant_1b0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mac_phy_xlconstant_1b0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mac_phy_xlconstant_1b0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mac_phy_xlconstant_1b0_0 : entity is "mac_phy_xlconstant_1b0_0,xlconstant_v1_1_7_xlconstant,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mac_phy_xlconstant_1b0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mac_phy_xlconstant_1b0_0 : entity is "xlconstant_v1_1_7_xlconstant,Vivado 2020.2";
end mac_phy_xlconstant_1b0_0;

architecture STRUCTURE of mac_phy_xlconstant_1b0_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
