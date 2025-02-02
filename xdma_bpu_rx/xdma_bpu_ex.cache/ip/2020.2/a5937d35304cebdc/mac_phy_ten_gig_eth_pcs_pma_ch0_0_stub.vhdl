-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Dec 24 22:48:07 2020
-- Host        : ubuntu running 64-bit Ubuntu 18.04 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mac_phy_ten_gig_eth_pcs_pma_ch0_0_stub.vhdl
-- Design      : mac_phy_ten_gig_eth_pcs_pma_ch0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    dclk : in STD_LOGIC;
    rxrecclk_out : out STD_LOGIC;
    refclk_p : in STD_LOGIC;
    refclk_n : in STD_LOGIC;
    sim_speedup_control : in STD_LOGIC;
    coreclk_out : out STD_LOGIC;
    qpll0outclk_out : out STD_LOGIC;
    qpll0outrefclk_out : out STD_LOGIC;
    qpll0lock_out : out STD_LOGIC;
    txusrclk_out : out STD_LOGIC;
    txusrclk2_out : out STD_LOGIC;
    areset_datapathclk_out : out STD_LOGIC;
    areset_coreclk_out : out STD_LOGIC;
    gttxreset_out : out STD_LOGIC;
    gtrxreset_out : out STD_LOGIC;
    txuserrdy_out : out STD_LOGIC;
    reset_counter_done_out : out STD_LOGIC;
    reset : in STD_LOGIC;
    xgmii_txd : in STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_txc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    xgmii_rxd : out STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_rxc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    mdc : in STD_LOGIC;
    mdio_in : in STD_LOGIC;
    mdio_out : out STD_LOGIC;
    mdio_tri : out STD_LOGIC;
    prtad : in STD_LOGIC_VECTOR ( 4 downto 0 );
    core_status : out STD_LOGIC_VECTOR ( 7 downto 0 );
    resetdone_out : out STD_LOGIC;
    signal_detect : in STD_LOGIC;
    tx_fault : in STD_LOGIC;
    drp_req : out STD_LOGIC;
    drp_gnt : in STD_LOGIC;
    core_to_gt_drpen : out STD_LOGIC;
    core_to_gt_drpwe : out STD_LOGIC;
    core_to_gt_drpaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    core_to_gt_drpdi : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt_drprdy : out STD_LOGIC;
    gt_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt_drpen : in STD_LOGIC;
    gt_drpwe : in STD_LOGIC;
    gt_drpaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    core_to_gt_drprdy : in STD_LOGIC;
    core_to_gt_drpdo : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pma_pmd_type : in STD_LOGIC_VECTOR ( 2 downto 0 );
    tx_disable : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dclk,rxrecclk_out,refclk_p,refclk_n,sim_speedup_control,coreclk_out,qpll0outclk_out,qpll0outrefclk_out,qpll0lock_out,txusrclk_out,txusrclk2_out,areset_datapathclk_out,areset_coreclk_out,gttxreset_out,gtrxreset_out,txuserrdy_out,reset_counter_done_out,reset,xgmii_txd[63:0],xgmii_txc[7:0],xgmii_rxd[63:0],xgmii_rxc[7:0],txp,txn,rxp,rxn,mdc,mdio_in,mdio_out,mdio_tri,prtad[4:0],core_status[7:0],resetdone_out,signal_detect,tx_fault,drp_req,drp_gnt,core_to_gt_drpen,core_to_gt_drpwe,core_to_gt_drpaddr[15:0],core_to_gt_drpdi[15:0],gt_drprdy,gt_drpdo[15:0],gt_drpen,gt_drpwe,gt_drpaddr[15:0],gt_drpdi[15:0],core_to_gt_drprdy,core_to_gt_drpdo[15:0],pma_pmd_type[2:0],tx_disable";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ten_gig_eth_pcs_pma_v6_0_18,Vivado 2020.2";
begin
end;
