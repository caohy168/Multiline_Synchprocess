onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib tpu_transmit_clock_opt

do {wave.do}

view wave
view structure
view signals

do {tpu_transmit_clock.udo}

run -all

quit -force
