`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: htgd_thz
// Engineer: caohy
// 
// Create Date: 2020/03/10 12:38:15
// add comment line to be more understand and modify 2020/11/11
// Design Name: tpu transmit module
// Module Name: tpu
// Project Name: BFB(base frequency band) research group
// Target Devices: kcu105
// Tool Versions: vivado 2020.2
// Description: 
// 
// Dependencies: 
// base on matlab simulation
// Revision:V1.0
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`include "lane_select.vh"
// the nane include right means data from 10G MAC to tpu base band processor to RF
//parameter mux_number = 8;//2--lane2;4--lane4;8--lane8
module datastream_transfer #(
        parameter AXIS_TDATA_WIDTH =  64,
        parameter AXIS_TKEEP_WIDTH =  AXIS_TDATA_WIDTH/8
    )(

  input                        aclk,
  input                        reset,  
  //DATA FROM 10G MAC
  input [AXIS_TDATA_WIDTH-1:0] rx_axis_tdata_right,
  input [AXIS_TKEEP_WIDTH-1:0] rx_axis_tkeep_right,
  input                        rx_axis_tvalid_right,
  input                        rx_axis_tlast_right,
  input                        rx_axis_tuser_right,
  output logic                 rx_axis_tready_right,
  //DATA TO TPU BAESBAND 
  output logic[AXIS_TDATA_WIDTH-1:0]tx_axis_tdata_right,
  output logic[AXIS_TKEEP_WIDTH-1:0]tx_axis_tkeep_right,
  output logic                      tx_axis_tvalid_right,
  output logic                      tx_axis_tlast_right,
  output logic                      tx_axis_tuser_right,
  input                             tx_axis_tready_right
  );

assign rx_axis_tready_right=1;   
logic [15:00]tranfer_state_right,pkg_cnt_right;
logic [63:00]lane2_pkg_dat_right[59:1];
logic [07:00]lane2_pkg_dat8_right[472:1];
logic [15:00]lane2_i;
always @ (posedge aclk) begin
    if(`mux_number==2)begin//receive date from 10g MAC put into 64bit buffer lane2_pkg_dat_right
        if(rx_axis_tvalid_right)begin
            lane2_i=lane2_i+1;
            lane2_pkg_dat_right[lane2_i]=rx_axis_tdata_right;
        end
        else lane2_i=0;
    end
    else lane2_pkg_dat_right=lane2_pkg_dat_right;
    //transfer 64bit databus to 8bit databus by 64bit buffer lane2_pkg_dat_right ans 8bit buffer lane2_pkg_dat8_right
    lane2_pkg_dat8_right[8*lane2_i-7][07:00]=lane2_pkg_dat_right[lane2_i][07:00];
    lane2_pkg_dat8_right[8*lane2_i-6][07:00]=lane2_pkg_dat_right[lane2_i][15:08];
    lane2_pkg_dat8_right[8*lane2_i-5][07:00]=lane2_pkg_dat_right[lane2_i][23:16];
    lane2_pkg_dat8_right[8*lane2_i-4][07:00]=lane2_pkg_dat_right[lane2_i][31:24];
    lane2_pkg_dat8_right[8*lane2_i-3][07:00]=lane2_pkg_dat_right[lane2_i][39:32];
    lane2_pkg_dat8_right[8*lane2_i-2][07:00]=lane2_pkg_dat_right[lane2_i][47:40];
    lane2_pkg_dat8_right[8*lane2_i-1][07:00]=lane2_pkg_dat_right[lane2_i][55:48];
    lane2_pkg_dat8_right[8*lane2_i-0][07:00]=lane2_pkg_dat_right[lane2_i][63:56];
end

//data tranfer state control
//state0 wait data tranfer from 10g MAC
//state1 save data from 10g MAC into bufer(lane2_pkg_dat_right and lane2_pkg_dat8_right) 
//transfer the date to tpu baseband process
always @ (posedge aclk) begin
    case (`mux_number)
        2:begin
            if (reset)begin
                tranfer_state_right=0;
                pkg_cnt_right=0;
              end
            else
              case (tranfer_state_right)
                  0:begin//wait
                    if(rx_axis_tvalid_right)tranfer_state_right=1;
                    else tranfer_state_right=0;
                    pkg_cnt_right=0;
                  end
                  1:begin//save data
                    if(pkg_cnt_right<60)begin
                    pkg_cnt_right++;
                    tranfer_state_right=1;
                    end
                    else begin
                    tranfer_state_right=2;
                    pkg_cnt_right=0;
                    end
                  end
                  2:begin//transfer data
                    if(pkg_cnt_right<240)begin
                    pkg_cnt_right++;
                    tranfer_state_right=2;
                    end
                    else begin
                    tranfer_state_right=0;
                    pkg_cnt_right=0;
                    end
                  end
                  3:begin//
                  end
                  4:begin//
                  end
                  default : begin
                    tranfer_state_right=0;
                    pkg_cnt_right=0;
                  end
                endcase
        end
        4: begin
        end
        8:begin
            if (reset)begin
                tranfer_state_right=0;
                pkg_cnt_right=0;
              end
            else
              case (tranfer_state_right)
                  0:begin//wait
                    if(rx_axis_tvalid_right)tranfer_state_right=1;
                    else tranfer_state_right=0;
                    pkg_cnt_right=0;
                  end
                  1:begin//transfer date 
                    if(pkg_cnt_right<236)begin
                    pkg_cnt_right++;
                    tranfer_state_right=1;
                    end
                    else begin
                    tranfer_state_right=0;
                    pkg_cnt_right=0;
                    end
                  end
                  2:begin//
                  end
                  3:begin//
                  end
                  4:begin//
                  end
                  default : begin
                    tranfer_state_right=0;
                    pkg_cnt_right=0;
                  end
                endcase
        end
        default:begin
            if (reset)begin
                tranfer_state_right=0;
                pkg_cnt_right=0;
              end
            else
              case (tranfer_state_right)
                  0:begin//wait
                    if(rx_axis_tvalid_right)tranfer_state_right=1;
                    else tranfer_state_right=0;
                    pkg_cnt_right=0;
                  end
                  1:begin//transfer date 
                    if(pkg_cnt_right<236)begin
                    pkg_cnt_right++;
                    tranfer_state_right=1;
                    end
                    else begin
                    tranfer_state_right=0;
                    pkg_cnt_right=0;
                    end
                  end
                  2:begin//
                  end
                  3:begin//
                  end
                  4:begin//
                  end
                  default : begin
                    tranfer_state_right=0;
                    pkg_cnt_right=0;
                  end
                endcase
          end
    endcase  
end  
  
always @ (posedge aclk) begin
    case (`mux_number)
        2:begin//tranfer the data from lane1-2
            if(pkg_cnt_right<236 && tranfer_state_right==2)begin
                tx_axis_tdata_right[07:00]=lane2_pkg_dat8_right[2*(pkg_cnt_right+1)-1];
                tx_axis_tdata_right[15:08]=lane2_pkg_dat8_right[2*(pkg_cnt_right+1)-0];
                tx_axis_tdata_right[63:16]=0;
            end
            else tx_axis_tdata_right=0;  
        end
        4: begin
        end
        8:begin//package length from 10g mac 236*2,when lane 8 the vaild data equal to 236*2/8=59,the rest of data be filled by 64'h01234567_89abcdef
            if(pkg_cnt_right<59)tx_axis_tdata_right=rx_axis_tdata_right;
            else if(pkg_cnt_right>=59 && pkg_cnt_right<=235)tx_axis_tdata_right=64'h01234567_89abcdef;
            else tx_axis_tdata_right=0;  
        end
        default : begin
            if(pkg_cnt_right<59)tx_axis_tdata_right=rx_axis_tdata_right;
            else if(pkg_cnt_right>=59 && pkg_cnt_right<=235)tx_axis_tdata_right=64'h01234567_89abcdef;
            else tx_axis_tdata_right=0;  
          end
    endcase
       
end 

always @ (*) begin
    case (`mux_number)
        2:begin
            if(tranfer_state_right==2 && pkg_cnt_right<=235)begin
                tx_axis_tvalid_right=1;
                tx_axis_tkeep_right=8'hff;
            end
            else begin
                tx_axis_tvalid_right=0;
                tx_axis_tkeep_right=0;
            end
            if( pkg_cnt_right==235)tx_axis_tlast_right=1;
            else tx_axis_tlast_right=0;
            tx_axis_tuser_right=1;
        end
        4: begin
        end
        8:begin
            if(tranfer_state_right==1 && pkg_cnt_right<=235)begin
                tx_axis_tvalid_right=1;
                tx_axis_tkeep_right=8'hff;
            end
            else begin
                tx_axis_tvalid_right=0;
                tx_axis_tkeep_right=0;
            end
            if( pkg_cnt_right==235)tx_axis_tlast_right=1;
            else tx_axis_tlast_right=0;
            tx_axis_tuser_right=1;
        end
        default : begin
            if(tranfer_state_right==1 && pkg_cnt_right<=235)begin
                tx_axis_tvalid_right=1;
                tx_axis_tkeep_right=8'hff;
            end
            else begin
                tx_axis_tvalid_right=0;
                tx_axis_tkeep_right=0;
            end
            if( pkg_cnt_right==235)tx_axis_tlast_right=1;
            else tx_axis_tlast_right=0;
            tx_axis_tuser_right=1;
          end
    endcase  
end 

endmodule