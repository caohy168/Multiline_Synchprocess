onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib bbtoc2h_opt

do {wave.do}

view wave
view structure
view signals

do {bbtoc2h.udo}

run -all

quit -force
