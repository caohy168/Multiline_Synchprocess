-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Fri Jan  8 00:11:57 2021
-- Host        : ubuntu running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ rs_decoder_stub.vhdl
-- Design      : rs_decoder
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_input_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_input_tvalid : in STD_LOGIC;
    s_axis_input_tlast : in STD_LOGIC;
    s_axis_input_tready : out STD_LOGIC;
    m_axis_output_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_output_tvalid : out STD_LOGIC;
    m_axis_output_tready : in STD_LOGIC;
    m_axis_output_tlast : out STD_LOGIC;
    m_axis_stat_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_stat_tvalid : out STD_LOGIC;
    m_axis_stat_tready : in STD_LOGIC;
    event_s_input_tlast_missing : out STD_LOGIC;
    event_s_input_tlast_unexpected : out STD_LOGIC;
    event_s_ctrl_tdata_invalid : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_input_tdata[7:0],s_axis_input_tvalid,s_axis_input_tlast,s_axis_input_tready,m_axis_output_tdata[7:0],m_axis_output_tvalid,m_axis_output_tready,m_axis_output_tlast,m_axis_stat_tdata[7:0],m_axis_stat_tvalid,m_axis_stat_tready,event_s_input_tlast_missing,event_s_input_tlast_unexpected,event_s_ctrl_tdata_invalid";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "rs_decoder_v9_0_17,Vivado 2020.2";
begin
end;
