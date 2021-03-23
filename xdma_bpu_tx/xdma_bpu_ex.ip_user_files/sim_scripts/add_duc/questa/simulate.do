onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib add_duc_opt

do {wave.do}

view wave
view structure
view signals

do {add_duc.udo}

run -all

quit -force
