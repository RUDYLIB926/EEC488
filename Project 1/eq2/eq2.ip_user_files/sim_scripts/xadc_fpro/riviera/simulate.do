onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+xadc_fpro -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -O5 xil_defaultlib.xadc_fpro xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {xadc_fpro.udo}

run -all

endsim

quit -force
