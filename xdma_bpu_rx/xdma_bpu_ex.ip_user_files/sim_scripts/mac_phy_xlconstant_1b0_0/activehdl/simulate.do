onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+mac_phy_xlconstant_1b0_0 -L xilinx_vip -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.mac_phy_xlconstant_1b0_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {mac_phy_xlconstant_1b0_0.udo}

run -all

endsim

quit -force
