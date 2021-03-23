onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib mac_phy_xlconstant_1b0_0_opt

do {wave.do}

view wave
view structure
view signals

do {mac_phy_xlconstant_1b0_0.udo}

run -all

quit -force
