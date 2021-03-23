onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+tpu_transmit_clock -L xilinx_vip -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.tpu_transmit_clock xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {tpu_transmit_clock.udo}

run -all

endsim

quit -force
