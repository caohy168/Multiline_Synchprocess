onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib rs_decoder_opt

do {wave.do}

view wave
view structure
view signals

do {rs_decoder.udo}

run -all

quit -force
