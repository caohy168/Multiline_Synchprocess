-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Jan  5 00:39:56 2021
-- Host        : ubuntu running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/caohy/Work/dual_line_process/xdma_bpu_rx/xdma_bpu_ex.gen/sources_1/ip/tpu_receive_clock/tpu_receive_clock_stub.vhdl
-- Design      : tpu_receive_clock
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tpu_receive_clock is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );

end tpu_receive_clock;

architecture stub of tpu_receive_clock is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_out2,clk_in1_p,clk_in1_n";
begin
end;
