onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib DATA_SRAM_opt

do {wave.do}

view wave
view structure
view signals

do {DATA_SRAM.udo}

run -all

quit -force
