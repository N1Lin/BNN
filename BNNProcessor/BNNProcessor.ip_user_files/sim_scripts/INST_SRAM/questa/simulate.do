onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib INST_SRAM_opt

do {wave.do}

view wave
view structure
view signals

do {INST_SRAM.udo}

run -all

quit -force
