onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib mult_duc_opt

do {wave.do}

view wave
view structure
view signals

do {mult_duc.udo}

run -all

quit -force
