onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xilinx_vip -L xpm -L axis_infrastructure_v1_1_0 -L axis_data_fifo_v2_0_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.bb_data_loopback_fifo xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {bb_data_loopback_fifo.udo}

run -all

quit -force
