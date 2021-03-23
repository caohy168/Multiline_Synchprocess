vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/gtwizard_ultrascale_v1_7_9
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/ten_gig_eth_pcs_pma_v6_0_18

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap gtwizard_ultrascale_v1_7_9 modelsim_lib/msim/gtwizard_ultrascale_v1_7_9
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap ten_gig_eth_pcs_pma_v6_0_18 modelsim_lib/msim/ten_gig_eth_pcs_pma_v6_0_18

vlog -work xilinx_vip -64 -incr -sv -L xdma_v4_1_8 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -sv -L xdma_v4_1_8 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work gtwizard_ultrascale_v1_7_9 -64 -incr "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_bit_sync.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gte4_drp_arb.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_delay_powergood.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_delay_powergood.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_reset.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_sync.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_inv_sync.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/ip_0/sim/gtwizard_ultrascale_v1_7_gthe3_channel.v" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/ip_0/sim/mac_phy_ten_gig_eth_pcs_pma_ch0_0_gt_gthe3_channel_wrapper.v" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/ip_0/sim/mac_phy_ten_gig_eth_pcs_pma_ch0_0_gt_gtwizard_gthe3.v" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/ip_0/sim/mac_phy_ten_gig_eth_pcs_pma_ch0_0_gt_gtwizard_top.v" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/ip_0/sim/mac_phy_ten_gig_eth_pcs_pma_ch0_0_gt.v" \

vlog -work ten_gig_eth_pcs_pma_v6_0_18 -64 -incr "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../ipstatic/ipshared/dd1f/hdl/ten_gig_eth_pcs_pma_v6_0_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_ff_synchronizer_rst.v" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_ff_synchronizer.v" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_local_clock_and_reset.v" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_sim_speedup_controller.v" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_cable_pull_logic.v" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_block.v" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_support.v" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_shared_clock_and_reset.v" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/gtwizard_ultrascale_v1_7_gthe3_common.v" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_gt_common_wrapper.v" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_gt_common.v" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_ff_synchronizer_rst2.v" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

