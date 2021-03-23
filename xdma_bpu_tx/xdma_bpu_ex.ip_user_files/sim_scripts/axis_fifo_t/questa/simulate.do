onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib axis_fifo_t_opt

do {wave.do}

view wave
view structure
view signals

do {axis_fifo_t.udo}

run -all

quit -force
