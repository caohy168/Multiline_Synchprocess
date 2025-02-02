`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: htgd_thz
// Engineer: caohy  
// 
// Create Date: 11/08/2020 06:39:03 PM
// Design Name: 
// Module Name: tpu_select
// Project Name: 
// Target Devices: kcu105
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
`define mux_number   8
//2--lane2,4--lane4,8--lane8.
//The parameter(in datastream_transfer.sv)describe support howmany lane for 10g backhaul plan.
`define layer1_transmit_lane_number   8
//2--lane2;4--lane4;8--lane8.
//The parameter(layer1_transmit.sv)describe howmany layer1 transmit lane for 10g backhaul plan.
`define radio_transmit_lane_number   8
//2--lane2;4--lane4;8--lane8.
//The parameter(radio_transmit.sv)describe howmany radio transmit lane for 10g backhaul plan.
`define layer1_receive_lane_number   8
//2--lane2;4--lane4;8--lane8.
//The parameter(layer1_transmit.sv)describe howmany layer1 transmit lane for 10g backhaul plan.
`define radio_receive_lane_number   8
//2--lane2;4--lane4;8--lane8.
//The parameter(radio_transmit.sv)describe howmany radio transmit lane for 10g backhaul plan.
`define pcie_endpoint
//`define optiacal_10g
//10g optiacal interface be used to acess to mainnetwork server. pcie interface be used to satellite communication center backboard.
`define dma_receive_pkg_mun 8
