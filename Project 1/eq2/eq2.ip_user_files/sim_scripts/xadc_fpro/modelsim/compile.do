vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../eq2.srcs/sources_1/ip/xadc_fpro/xadc_fpro.v" \


vlog -work xil_defaultlib "glbl.v"

