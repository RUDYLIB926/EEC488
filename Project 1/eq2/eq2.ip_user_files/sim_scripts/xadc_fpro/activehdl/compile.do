vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib -v2k5 \
"../../../../eq2.srcs/sources_1/ip/xadc_fpro/xadc_fpro.v" \


vlog -work xil_defaultlib "glbl.v"

