onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib xdma_bpu_opt

do {wave.do}

view wave
view structure
view signals

do {xdma_bpu.udo}

run -all

quit -force
