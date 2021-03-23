onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+bb_interface_fifo -L xilinx_vip -L xpm -L axis_infrastructure_v1_1_0 -L axis_data_fifo_v2_0_4 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.bb_interface_fifo xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {bb_interface_fifo.udo}

run -all

endsim

quit -force
