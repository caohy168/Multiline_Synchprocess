onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xilinx_vip -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.tpu_transmit_clock xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {tpu_transmit_clock.udo}

run -all

quit -force
