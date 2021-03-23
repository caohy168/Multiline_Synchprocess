onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+mac_phy_ten_gig_eth_pcs_pma_ch0_0 -L xilinx_vip -L xpm -L gtwizard_ultrascale_v1_7_9 -L xil_defaultlib -L ten_gig_eth_pcs_pma_v6_0_18 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.mac_phy_ten_gig_eth_pcs_pma_ch0_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {mac_phy_ten_gig_eth_pcs_pma_ch0_0.udo}

run -all

endsim

quit -force
