-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Dec 24 19:44:01 2020
-- Host        : ubuntu running 64-bit Ubuntu 18.04 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/caohy/Work/xdma_bpu_tx/xdma_bpu_ex.gen/sources_1/ip/tpu_transmit_clock/tpu_transmit_clock_stub.vhdl
-- Design      : tpu_transmit_clock
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tpu_transmit_clock is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );

end tpu_transmit_clock;

architecture stub of tpu_transmit_clock is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_out2,locked,clk_in1_p,clk_in1_n";
begin
end;
