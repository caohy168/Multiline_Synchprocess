vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/ten_gig_eth_mac_v15_1_9
vlib questa_lib/msim/xil_defaultlib

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap ten_gig_eth_mac_v15_1_9 questa_lib/msim/ten_gig_eth_mac_v15_1_9
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xilinx_vip -64 -sv -L xdma_v4_1_8 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -sv -L xdma_v4_1_8 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work ten_gig_eth_mac_v15_1_9 -64 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../ipstatic/ipshared/eb00/hdl/ten_gig_eth_mac_v15_1_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_mac_ch0_0/ten_gig_eth_mac_v15_1_1/hdl/mac_phy_ten_gig_eth_mac_ch0_0_core.v" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_mac_ch0_0/synth/mac_phy_ten_gig_eth_mac_ch0_0_sync_resetn.v" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_mac_ch0_0/synth/mac_phy_ten_gig_eth_mac_ch0_0_block.v" \
"../../../../xdma_bpu_ex.gen/sources_1/ip/mac_phy_ten_gig_eth_mac_ch0_0/synth/mac_phy_ten_gig_eth_mac_ch0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

