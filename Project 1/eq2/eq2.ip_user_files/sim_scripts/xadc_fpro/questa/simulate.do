onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib xadc_fpro_opt

do {wave.do}

view wave
view structure
view signals

do {xadc_fpro.udo}

run -all

quit -force
