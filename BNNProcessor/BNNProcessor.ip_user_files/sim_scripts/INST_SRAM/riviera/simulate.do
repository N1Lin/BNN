onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+INST_SRAM -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.INST_SRAM xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {INST_SRAM.udo}

run -all

endsim

quit -force
