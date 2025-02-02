onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+xdma_bpu -L xilinx_vip -L xpm -L gtwizard_ultrascale_v1_7_9 -L xil_defaultlib -L blk_mem_gen_v8_4_4 -L xdma_v4_1_8 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.xdma_bpu xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {xdma_bpu.udo}

run -all

endsim

quit -force
