onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib dds_ri_opt

do {wave.do}

view wave
view structure
view signals

do {dds_ri.udo}

run -all

quit -force
