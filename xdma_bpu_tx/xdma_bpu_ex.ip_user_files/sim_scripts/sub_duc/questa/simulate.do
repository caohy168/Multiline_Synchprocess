onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib sub_duc_opt

do {wave.do}

view wave
view structure
view signals

do {sub_duc.udo}

run -all

quit -force
