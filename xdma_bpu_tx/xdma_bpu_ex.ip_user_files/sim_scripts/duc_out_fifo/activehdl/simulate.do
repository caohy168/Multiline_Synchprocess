onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+duc_out_fifo -L xilinx_vip -L xpm -L axis_infrastructure_v1_1_0 -L axis_data_fifo_v2_0_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.duc_out_fifo xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {duc_out_fifo.udo}

run -all

endsim

quit -force
