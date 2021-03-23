onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib bb_data_loopback_fifo_opt

do {wave.do}

view wave
view structure
view signals

do {bb_data_loopback_fifo.udo}

run -all

quit -force
