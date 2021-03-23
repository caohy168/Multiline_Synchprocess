onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xilinx_vip -L xpm -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.mac_phy_ten_gig_eth_mac_ch0_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {mac_phy_ten_gig_eth_mac_ch0_0.udo}

run -all

quit -force
