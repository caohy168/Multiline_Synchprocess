onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+axis_fifo_t8 -L xilinx_vip -L xpm -L axis_infrastructure_v1_1_0 -L axis_data_fifo_v2_0_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.axis_fifo_t8 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {axis_fifo_t8.udo}

run -all

endsim

quit -force
