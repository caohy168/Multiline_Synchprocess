onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib rs_encoder_opt

do {wave.do}

view wave
view structure
view signals

do {rs_encoder.udo}

run -all

quit -force
