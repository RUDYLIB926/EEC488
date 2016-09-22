onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+cpu -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -L xpm -L microblaze_v9_6_1 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_9 -L lmb_v10_v3_0_8 -L lmb_bram_if_cntlr_v4_0_9 -L blk_mem_gen_v8_3_3 -L iomodule_v3_0_5 -O5 xil_defaultlib.cpu xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {cpu.udo}

run -all

endsim

quit -force
