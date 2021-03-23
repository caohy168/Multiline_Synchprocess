// Company: htgd_thz
// Engineer: caohy  
// 
// Create Date: 11/08/2020 06:39:03 PM
// Design Name: 
// Module Name: tpu_receive
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
//-----------------------------------------------------------------------------
//
// Project    : The Xilinx PCI Express DMA 
// File       : board.v
// Version    : 4.1
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
//
// Project    : Ultrascale FPGA Gen3 Integrated Block for PCI Express
// File       : board.v
// Version    : 4.0 
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
//
// Description: Top level testbench
//
//------------------------------------------------------------------------------

`include "/home/caohy168/Work/Multiline_Synchprocess/xdma_bpu_rx/imports/board_common.vh"
`include "/home/caohy168/Work/Multiline_Synchprocess/xdma_bpu_rx/xdma_bpu_ex.srcs/sources_1/new/tpu_select.vh"

`timescale 1ps/1ps
//`include "board_common.vh"
//`include "tpu_select.vh"

`define SIMULATION
`define Ubuntu

module board;
  //10g mac and phy parameter
  parameter AXIS_TDATA_WIDTH =  64;
  parameter AXIS_TKEEP_WIDTH =  AXIS_TDATA_WIDTH/8;
  //pcie endpiont parameter
  parameter PL_LINK_CAP_MAX_LINK_WIDTH          = 1;             // 1- X1; 2 - X2; 4 - X4; 8 - X8
  parameter PL_SIM_FAST_LINK_TRAINING           = "FALSE";       // Simulation Speedup
  parameter PL_LINK_CAP_MAX_LINK_SPEED          = 1;             // 1- GEN1; 2 - GEN2; 4 - GEN3
  parameter C_DATA_WIDTH                        = 64;
  parameter EXT_PIPE_SIM                        = "FALSE";      // This Parameter has effect on selecting Enable External PIPE Interface in GUI.
  parameter C_ROOT_PORT                         = "FALSE";      // PCIe block is in root port mode
  parameter C_DEVICE_NUMBER                     = 0;            // Device number for Root Port configurations only
  parameter AXIS_CCIX_RX_TDATA_WIDTH     = 256;
  parameter AXIS_CCIX_TX_TDATA_WIDTH     = 256;
  parameter AXIS_CCIX_RX_TUSER_WIDTH     = 46;
  parameter AXIS_CCIX_TX_TUSER_WIDTH     = 46;

  parameter          REF_CLK_FREQ       = 0;       // 0 - 100 MHz, 1 - 125 MHz,  2 - 250 MHz
  parameter          DRP_CLK_FREQ       = 0;       // 0 - 100 MHz, 1 - 125 MHz,  3 - 300 MHz
       
  parameter CLK_500M_PERIOD  = 2000;
  parameter CLK_125M_PERIOD  = 8000;

  localparam         DRP_CLK_HALF_CYCLE = (DRP_CLK_FREQ == 0) ? 5000 :
                                          (DRP_CLK_FREQ == 1) ? 4000 :
                                          (DRP_CLK_FREQ == 2) ? 2000 : 
                                          (DRP_CLK_FREQ == 3) ? 1666 : 0;

  localparam         REF_CLK_HALF_CYCLE = (REF_CLK_FREQ == 0) ? 5000 :
                                          (REF_CLK_FREQ == 1) ? 4000 :
                                          (REF_CLK_FREQ == 2) ? 2000 : 0;
  localparam   [2:0] PF0_DEV_CAP_MAX_PAYLOAD_SIZE = 3'b010;
  `ifdef LINKWIDTH
  localparam   [4:0] LINK_WIDTH = 5'd`LINKWIDTH;
  `else
  localparam   [4:0] LINK_WIDTH = 5'd1;
  `endif
  `ifdef LINKSPEED
  localparam   [2:0] LINK_SPEED = 3'h`LINKSPEED;
  `else
  localparam   [2:0] LINK_SPEED = 3'h1;
  `endif
  
wire [0:0]   xphy_txp;
wire [0:0]   xphy_txn;
wire [0:0]   xphy_rxp;
wire [0:0]   xphy_rxn;

assign xphy_rxp[0] = xphy_txp[0];
assign xphy_rxn[0] = xphy_txn[0];

logic clk_125m,clk_250m,clk_500m;

wire      clk_156_p;
wire      clk_156_n;

wire      sys_clk_p;
wire      sys_clk_n;

reg       reset;
reg       sys_clk;
reg       clk_156;

initial
begin
    clk_250m = 1'b0;
    clk_500m = 1'b0;
    forever
    begin
        #(CLK_500M_PERIOD / 2);
        clk_500m = ~clk_500m;
        #(CLK_500M_PERIOD / 2);
        clk_500m = ~clk_500m;
        clk_250m = ~clk_250m;
    end
end

initial
begin
    clk_125m = 1'b1;
    forever
    begin
        #(CLK_125M_PERIOD / 2);
        clk_125m = ~clk_125m;
        #(CLK_125M_PERIOD / 2);
        clk_125m = ~clk_125m;
    end
end

 initial 
 begin
   clk_156 = 1'b0;
   forever #(6400/2) clk_156 = ~clk_156;
 end

assign clk_156_p = clk_156;
assign clk_156_n = ~clk_156;
  
 initial 
 begin
   sys_clk = 1'b0;
   forever #(5000) sys_clk = ~sys_clk;
 end

assign sys_clk_p = sys_clk;
assign sys_clk_n = ~sys_clk;

integer   i = 0;
integer   j = 0;
integer   k = 0;


reg speed_up = 0;


initial begin
  $display("[%t] : System Reset Asserted...", $realtime);
  reset = 1'b1;

  for (i = 0; i < 500; i = i + 1) begin
    @(posedge clk_156);
  end

  reset = 1'b0;
  $display("[%t] : System Reset De-asserted...", $realtime);
 
  for (i = 0; i < 50; i = i + 1) begin
     @(posedge clk_156);
  end 
  $display("[%t] : Speed Up Asserted...", $realtime);
   speed_up = 1'b1; 
end

`ifdef optiacal_10g
assign board.tpu_receive.mainnet_up10g.sim_speedup_control_ch = speed_up;
`endif

///////////////////////////////////fuction describle//////////////////////////////
/////////////////////save the pcie root send data into source files///////////////
///////////////////////////////////fuction describle//////////////////////////////
integer cq_valid_wait_cnt_p1=3;
integer cq_valid_wait_cnt_p2=5;
integer cq_data_beat_count=16;
integer cq_p_i[`dma_receive_pkg_mun],cq_p_j[`dma_receive_pkg_mun];
//logic [127:0] pcie_root_source_p1[(`dma_send_pkg_mun*236)/16 + 1];
//logic [127:0] pcie_root_source_p2[(`dma_send_pkg_mun*236)/16 + 1];
logic [127:0] pcie_root_target_p[`dma_receive_pkg_mun][30];
//logic [127:0] source_pkg[`dma_send_pkg_mun*30];
//integer com_pkg_i;
//initial begin
//    for (com_pkg_i=0; com_pkg_i<`dma_send_pkg_mun; com_pkg_i=com_pkg_i+1)begin
//        source_pkg[(com_pkg_i*30-1):com_pkg_i]=pcie_root_source_p[com_pkg_i];
//    end
//end

integer pkg_push_i;
initial begin
        cq_p_i[0]=0;
        cq_p_j[0]=0;
        
        for (cq_p_i[0]=0; cq_p_i[0]<cq_valid_wait_cnt_p1; cq_p_i[0]=cq_p_i[0]+1)begin
            @ (posedge board.RP.m_axis_cq_tvalid);end
        @ (posedge board.RP.m_axis_cq_tvalid) ;   
        $display(" \n $$$$$$$$$$$$ root begin to receive the 1 pkg from TPU $$$$$$$$$$$$");     
        for (cq_p_j[0]=0; cq_p_j[0]<cq_data_beat_count; cq_p_j[0]=cq_p_j[0]+1)begin	
            @ (negedge board.RP.tx_usrapp.user_clk);	//Samples data at negedge of user_clk
                if ( board.RP.m_axis_cq_tready ) begin	//Samples data when tready is high
                    if ( cq_p_j[0] == 0)	    //First Data
                        pcie_root_target_p[0][cq_p_j[0]    ] = board.RP.m_axis_cq_tdata [255:128];
                    else if(cq_p_j[0] == 15)   //Last  Data
                        pcie_root_target_p[0][2*cq_p_j[0]-1] = board.RP.m_axis_cq_tdata [127:  0];
                    else begin					        //Middle Data	
                        pcie_root_target_p[0][2*cq_p_j[0]-1] = board.RP.m_axis_cq_tdata [127:  0]; 
                        pcie_root_target_p[0][2*cq_p_j[0]  ] = board.RP.m_axis_cq_tdata [255:128];end end end 

        for (pkg_push_i = 1; pkg_push_i < `dma_receive_pkg_mun; pkg_push_i = pkg_push_i + 1)begin: pkg_push
            cq_p_i[pkg_push_i]=0;
            cq_p_j[pkg_push_i]=0;
            for (cq_p_i[pkg_push_i]=0; cq_p_i[pkg_push_i]<cq_valid_wait_cnt_p2; cq_p_i[pkg_push_i]=cq_p_i[pkg_push_i]+1)begin
                @ (posedge board.RP.m_axis_cq_tvalid);end
            //@ (negedge board.tpu_receive.EP.s_axis_c2h_tready_0)begin    
            $display(" \n $$$$$$$$$$$$root begin to receive the %d pkg from TPU $$$$$$$$$$$$",pkg_push_i);   
            for (cq_p_j[pkg_push_i]=0; cq_p_j[pkg_push_i]<cq_data_beat_count; cq_p_j[pkg_push_i]=cq_p_j[pkg_push_i]+1)begin	
                @ (negedge board.RP.tx_usrapp.user_clk);	//Samples data at negedge of user_clk
                    if ( board.RP.m_axis_cq_tready ) begin	//Samples data when tready is high
                        if ( cq_p_j[pkg_push_i] == 0)	    //First Data
                            pcie_root_target_p[pkg_push_i][cq_p_j[pkg_push_i]    ] = board.RP.m_axis_cq_tdata [255:128];
                        else if(cq_p_j[pkg_push_i] == 15)   //Last  Data
                            pcie_root_target_p[pkg_push_i][2*cq_p_j[pkg_push_i]-1] = board.RP.m_axis_cq_tdata [127:  0];
                        else begin					        //Middle Data	
                            pcie_root_target_p[pkg_push_i][2*cq_p_j[pkg_push_i]-1] = board.RP.m_axis_cq_tdata [127:  0]; 
                            pcie_root_target_p[pkg_push_i][2*cq_p_j[pkg_push_i]  ] = board.RP.m_axis_cq_tdata [255:128];end end end end end
    
///////////////////////////////////fuction describle//////////////////////////////
///////////////save the pcie root receive data into source files//////////////////
///////////////////////////////////fuction describle//////////////////////////////

integer stop_cnt=29+(`dma_receive_pkg_mun*6);
integer stop_i;
    initial
        begin
            for (stop_i=0; stop_i<stop_cnt; stop_i=stop_i+1)   begin
            @ (posedge board.RP.m_axis_rc_tvalid) ;             end
        #1000;
        `ifdef Ubuntu
            begin 
                $writememh("/home/caohy168/Work/Multiline_Synchprocess/dat_interaction/receive/target/package", pcie_root_target_p); 
            end
        `else
            begin
                $writememh("D:\\tpu_double\\intermediate\\receive\\target\\package", pcie_root_target_p); 
            end
        `endif
        
        $finish;
        end
///////////////////////////////////fuction describle//////////////////////////////
/////////////////////////save the DA data into target files///////////////////////
///////////////////////////////////fuction describle//////////////////////////////

logic       m_axis_outputADI_tvalid[8]={0,0,0,0,0,0,0,0};  
logic       m_axis_outputADQ_tvalid[8]={0,0,0,0,0,0,0,0};
logic       m_axis_outputADI_tlast[8]={0,0,0,0,0,0,0,0};
logic       m_axis_outputADQ_tlast[8]={0,0,0,0,0,0,0,0};     
logic [15:0]m_axis_outputADI_tdata[8]={0,0,0,0,0,0,0,0};
logic [15:0]m_axis_outputADQ_tdata[8]={0,0,0,0,0,0,0,0};

logic [15:0]mem_loadi[8][`dma_receive_pkg_mun*340];
logic [15:0]mem_loadq[8][`dma_receive_pkg_mun*340];

 initial begin          
     `ifdef Ubuntu
        begin
            $readmemh("/home/caohy168/Work/Multiline_Synchprocess/dat_interaction/transmit/target/dai_data0", mem_loadi[0]);
            $readmemh("/home/caohy168/Work/Multiline_Synchprocess/dat_interaction/transmit/target/dai_data1", mem_loadi[1]);   
            $readmemh("/home/caohy168/Work/Multiline_Synchprocess/dat_interaction/transmit/target/dai_data2", mem_loadi[2]);
            $readmemh("/home/caohy168/Work/Multiline_Synchprocess/dat_interaction/transmit/target/dai_data3", mem_loadi[3]); 
            $readmemh("/home/caohy168/Work/Multiline_Synchprocess/dat_interaction/transmit/target/dai_data4", mem_loadi[4]);
            $readmemh("/home/caohy168/Work/Multiline_Synchprocess/dat_interaction/transmit/target/dai_data5", mem_loadi[5]);   
            $readmemh("/home/caohy168/Work/Multiline_Synchprocess/dat_interaction/transmit/target/dai_data6", mem_loadi[6]);
            $readmemh("/home/caohy168/Work/Multiline_Synchprocess/dat_interaction/transmit/target/dai_data7", mem_loadi[7]);
            
            $readmemh("/home/caohy168/Work/Multiline_Synchprocess/dat_interaction/transmit/target/daq_data0", mem_loadq[0]);
            $readmemh("/home/caohy168/Work/Multiline_Synchprocess/dat_interaction/transmit/target/daq_data1", mem_loadq[1]);   
            $readmemh("/home/caohy168/Work/Multiline_Synchprocess/dat_interaction/transmit/target/daq_data2", mem_loadq[2]);
            $readmemh("/home/caohy168/Work/Multiline_Synchprocess/dat_interaction/transmit/target/daq_data3", mem_loadq[3]); 
            $readmemh("/home/caohy168/Work/Multiline_Synchprocess/dat_interaction/transmit/target/daq_data4", mem_loadq[4]);
            $readmemh("/home/caohy168/Work/Multiline_Synchprocess/dat_interaction/transmit/target/daq_data5", mem_loadq[5]);   
            $readmemh("/home/caohy168/Work/Multiline_Synchprocess/dat_interaction/transmit/target/daq_data6", mem_loadq[6]);
            $readmemh("/home/caohy168/Work/Multiline_Synchprocess/dat_interaction/transmit/target/daq_data7", mem_loadq[7]);   
        end
    `else
        begin
            $readmemh("D:\\tpu_double\\intermediate\\transmit\\target\\dai_data0", mem_loadi[0]);
            $readmemh("D:\\tpu_double\\intermediate\\transmit\\target\\dai_data1", mem_loadi[1]); 
            $readmemh("D:\\tpu_double\\intermediate\\transmit\\target\\dai_data2", mem_loadi[2]);
            $readmemh("D:\\tpu_double\\intermediate\\transmit\\target\\dai_data3", mem_loadi[3]); 
            $readmemh("D:\\tpu_double\\intermediate\\transmit\\target\\dai_data4", mem_loadi[4]);
            $readmemh("D:\\tpu_double\\intermediate\\transmit\\target\\dai_data5", mem_loadi[5]); 
            $readmemh("D:\\tpu_double\\intermediate\\transmit\\target\\dai_data6", mem_loadi[6]);
            $readmemh("D:\\tpu_double\\intermediate\\transmit\\target\\dai_data7", mem_loadi[7]);    
            
            $readmemh("D:\\tpu_double\\intermediate\\transmit\\target\\daq_data0", mem_loadq[0]);
            $readmemh("D:\\tpu_double\\intermediate\\transmit\\target\\daq_data1", mem_loadq[1]); 
            $readmemh("D:\\tpu_double\\intermediate\\transmit\\target\\daq_data2", mem_loadq[2]);
            $readmemh("D:\\tpu_double\\intermediate\\transmit\\target\\daq_data3", mem_loadq[3]); 
            $readmemh("D:\\tpu_double\\intermediate\\transmit\\target\\daq_data4", mem_loadq[4]);
            $readmemh("D:\\tpu_double\\intermediate\\transmit\\target\\daq_data5", mem_loadq[5]); 
            $readmemh("D:\\tpu_double\\intermediate\\transmit\\target\\daq_data6", mem_loadq[6]);
            $readmemh("D:\\tpu_double\\intermediate\\transmit\\target\\daq_data7", mem_loadq[7]);  
        end
    `endif

 end      

int package_i[8],package_j[8],package_interval[8];
int mem_point[8]={0,0,0,0,0,0,0,0};
integer pkg_load_i[8];
genvar mem_load_i;
generate
    for (mem_load_i = 0; mem_load_i < 8; mem_load_i = mem_load_i + 1)begin: mem_load//produce 8 pkg machine
        initial begin
            for(pkg_load_i[mem_load_i] = 0; pkg_load_i[mem_load_i] < `dma_receive_pkg_mun; pkg_load_i[mem_load_i]=pkg_load_i[mem_load_i]+1)begin//produce xdma_send_pkg_mun pkg    
            @(posedge board.tpu_receive.EP.s_axis_c2h_tready_0);begin  
            $display("$$$$$$$$$$$$ TPU begin to receive the %d package of %d thread from AD $$$$$$$$$$$$",pkg_load_i[mem_load_i],mem_load_i);
            //for(package_i[mem_load_i]=1;package_i[mem_load_i]<=1;package_i[mem_load_i]=package_i[mem_load_i]+1)begin
                for (package_interval[mem_load_i] = 0; package_interval[mem_load_i] < 30; package_interval[mem_load_i] = package_interval[mem_load_i] + 1)//package interval distance
                @(posedge clk_250m);
                for(package_j[mem_load_i]=1;package_j[mem_load_i]<=340;package_j[mem_load_i]=package_j[mem_load_i]+1)begin//package length
                   @(posedge clk_250m);
                   m_axis_outputADI_tvalid[mem_load_i]=1;
                   m_axis_outputADI_tdata[mem_load_i]=mem_loadi[mem_load_i][mem_point[mem_load_i]];
                   if(package_j[mem_load_i]==340)m_axis_outputADI_tlast[mem_load_i]=1;
                   else m_axis_outputADI_tlast[mem_load_i]=0;
                  
                   m_axis_outputADQ_tvalid[mem_load_i]=1;
                   m_axis_outputADQ_tdata[mem_load_i]=mem_loadq[mem_load_i][mem_point[mem_load_i]];
                   if(package_j[mem_load_i]==340)m_axis_outputADQ_tlast[mem_load_i]=1;
                   else m_axis_outputADQ_tlast[mem_load_i]=0;
                   mem_point[mem_load_i]++; end
                @(posedge clk_250m);   
                m_axis_outputADI_tvalid[mem_load_i]=0;
                m_axis_outputADQ_tvalid[mem_load_i]=0;
                m_axis_outputADI_tlast[mem_load_i]=0;
                m_axis_outputADQ_tlast[mem_load_i]=0;end end end end
                
endgenerate   
    
//integer nstop=0;                     
//always @(negedge m_axis_outputADI_tvalid[0]) begin 
//    nstop=nstop+1;
//    if(nstop==1) begin
//        #500;  
//        $finish;end end
  
  
  wire  [(LINK_WIDTH-1):0]  ep_pci_exp_txn;
  wire  [(LINK_WIDTH-1):0]  ep_pci_exp_txp;
  wire  [(LINK_WIDTH-1):0]  rp_pci_exp_txn;
  wire  [(LINK_WIDTH-1):0]  rp_pci_exp_txp;
  
  integer            i;

  // System-level clock and reset
  reg                sys_rst_n;

  wire               ep_sys_clk;
  wire               rp_sys_clk;
  wire               ep_sys_clk_p;
  wire               ep_sys_clk_n;
  wire               rp_sys_clk_p;
  wire               rp_sys_clk_n;

  //
  // PCI-Express Serial Interconnect
  //
  wire led_0;
  wire led_1;
  wire led_2;
  wire led_3;

  //------------------------------------------------------------------------------//
  // Generate system clock
  //------------------------------------------------------------------------------//
  sys_clk_gen_ds # (
    .halfcycle(REF_CLK_HALF_CYCLE), 
    .offset(0)
  )
  CLK_GEN_RP (
    .sys_clk_p(rp_sys_clk_p),
    .sys_clk_n(rp_sys_clk_n)
  );

  sys_clk_gen_ds # (
    .halfcycle(REF_CLK_HALF_CYCLE),
    .offset(0)
  )
  CLK_GEN_EP (
    .sys_clk_p(ep_sys_clk_p),
    .sys_clk_n(ep_sys_clk_n)
  );

  //------------------------------------------------------------------------------//
  // Generate system-level reset
  //------------------------------------------------------------------------------//
  parameter ON=3, OFF=4, UNIQUE=32, UNIQUE0=64, PRIORITY=128;

  initial begin
    `ifndef XILINX_SIMULATOR
    // Disable UNIQUE, UNIQUE0, and PRIORITY analysis during reset because signal can be at unknown value during reset
    $assertcontrol( OFF , UNIQUE | UNIQUE0 | PRIORITY);
    `endif

    $display("[%t] : System Reset Is Asserted...", $realtime);
    sys_rst_n = 1'b0;
    repeat (500) @(posedge rp_sys_clk_p);
    $display("[%t] : System Reset Is De-asserted...", $realtime);
    sys_rst_n = 1'b1;

    `ifndef XILINX_SIMULATOR
    // Re-enable UNIQUE, UNIQUE0, and PRIORITY analysis
    $assertcontrol( ON , UNIQUE | UNIQUE0 | PRIORITY);
    `endif
  end
  //------------------------------------------------------------------------------//
  //------------------------------------------------------------------------------//
  // EndPoint DUT with PIO Slave
  //------------------------------------------------------------------------------//
  //
  // PCI-Express Endpoint Instance
  
  //------------------------------------------------------------------------------//
  // Simulation Root Port Model
  // (Comment out this module to interface EndPoint with BFM)
  //------------------------------------------------------------------------------//
  //
  // PCI-Express Model Root Port Instance
  //

  xilinx_pcie3_uscale_rp
  #(
     .PF0_DEV_CAP_MAX_PAYLOAD_SIZE(PF0_DEV_CAP_MAX_PAYLOAD_SIZE)
     //ONLY FOR RP
  ) RP (

    // SYS Inteface
    .sys_clk_n(rp_sys_clk_n),
    .sys_clk_p(rp_sys_clk_p),
    .sys_rst_n( sys_rst_n ),
    // PCI-Express Serial Interface
    .pci_exp_txn(rp_pci_exp_txn),
    .pci_exp_txp(rp_pci_exp_txp),
    .pci_exp_rxn(ep_pci_exp_txn),
    .pci_exp_rxp(ep_pci_exp_txp)
  );
  
  
  tpu_receive tpu_receive(

  .CLK_125MHZ_P(clk_125m),
  .CLK_125MHZ_N(~clk_125m),

  .refclk_p(clk_156_p),
  .refclk_n(clk_156_n),
  .reset(reset),
  .xphy_txp(xphy_txp),
  .xphy_txn(xphy_txn),
  .xphy_rxp(xphy_rxp),
  .xphy_rxn(xphy_rxn),

  .s_axis_outputADI_tvalid(m_axis_outputADI_tvalid),  
  .s_axis_outputADQ_tvalid(m_axis_outputADQ_tvalid),
  .s_axis_outputADI_tlast (m_axis_outputADI_tlast),
  .s_axis_outputADQ_tlast (m_axis_outputADQ_tlast),     
  .s_axis_outputADI_tdata (m_axis_outputADI_tdata),
  .s_axis_outputADQ_tdata (m_axis_outputADQ_tdata),
  
      // SYS Inteface
    .sys_clk_n(ep_sys_clk_n),
    .sys_clk_p(ep_sys_clk_p),
    .sys_rst_n(sys_rst_n),
    
    
    // Misc signals
    .led_0(led_0),
    .led_1(led_1),
    .led_2(led_2),
    .led_3(led_3),
      
     // PCI-Express Serial Interface
    .pci_exp_txn(ep_pci_exp_txn),
    .pci_exp_txp(ep_pci_exp_txp),
    .pci_exp_rxn(rp_pci_exp_txn),
    .pci_exp_rxp(rp_pci_exp_txp)
  );
  

  initial begin

    if ($test$plusargs ("dump_all")) begin

  `ifdef NCV // Cadence TRN dump

      $recordsetup("design=board",
                   "compress",
                   "wrapsize=100M",
                   "version=1",
                   "run=1");
      $recordvars();

  `elsif VCS //Synopsys VPD dump

      $vcdplusfile("board.vpd");
      $vcdpluson;
      $vcdplusglitchon;
      $vcdplusflush;

  `else

      // Verilog VC dump
      $dumpfile("board.vcd");
      $dumpvars(0,board);

  `endif
    end
  end
  
endmodule // RECEIVE BOARD
