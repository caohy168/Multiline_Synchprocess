onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib mac_phy_ten_gig_eth_mac_ch0_0_opt

do {wave.do}

view wave
view structure
view signals

do {mac_phy_ten_gig_eth_mac_ch0_0.udo}

run -all

quit -force
