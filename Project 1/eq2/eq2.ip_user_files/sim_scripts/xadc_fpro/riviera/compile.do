vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib -v2k5 \
"../../../../eq2.srcs/sources_1/ip/xadc_fpro/xadc_fpro.v" \


vlog -work xil_defaultlib "glbl.v"

