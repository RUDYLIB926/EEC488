vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/microblaze_v9_6_1
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_9
vlib riviera/lmb_v10_v3_0_8
vlib riviera/lmb_bram_if_cntlr_v4_0_9
vlib riviera/blk_mem_gen_v8_3_3
vlib riviera/iomodule_v3_0_5

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap microblaze_v9_6_1 riviera/microblaze_v9_6_1
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_9 riviera/proc_sys_reset_v5_0_9
vmap lmb_v10_v3_0_8 riviera/lmb_v10_v3_0_8
vmap lmb_bram_if_cntlr_v4_0_9 riviera/lmb_bram_if_cntlr_v4_0_9
vmap blk_mem_gen_v8_3_3 riviera/blk_mem_gen_v8_3_3
vmap iomodule_v3_0_5 riviera/iomodule_v3_0_5

vlog -work xil_defaultlib -v2k5 -sv \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v9_6_1 -93 \
"../../../ipstatic/microblaze_v9_6_1/hdl/microblaze_v9_6_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../vanilla_fpro.srcs/sources_1/ip/cpu/bd_0/ip/ip_0/sim/bd_3914_microblaze_I_0.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../ipstatic/lib_cdc_v1_0_2/hdl/src/vhdl/cdc_sync.vhd" \

vcom -work proc_sys_reset_v5_0_9 -93 \
"../../../ipstatic/proc_sys_reset_v5_0_9/hdl/src/vhdl/upcnt_n.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0_9/hdl/src/vhdl/sequence_psr.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0_9/hdl/src/vhdl/lpf.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0_9/hdl/src/vhdl/proc_sys_reset.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../vanilla_fpro.srcs/sources_1/ip/cpu/bd_0/ip/ip_1/sim/bd_3914_rst_0_0.vhd" \

vcom -work lmb_v10_v3_0_8 -93 \
"../../../ipstatic/lmb_v10_v3_0_8/hdl/vhdl/lmb_v10.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../vanilla_fpro.srcs/sources_1/ip/cpu/bd_0/ip/ip_2/sim/bd_3914_ilmb_0.vhd" \
"../../../../vanilla_fpro.srcs/sources_1/ip/cpu/bd_0/ip/ip_3/sim/bd_3914_dlmb_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_9 -93 \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0_9/hdl/vhdl/lmb_bram_if_funcs.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0_9/hdl/vhdl/lmb_bram_if_primitives.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0_9/hdl/vhdl/xor18.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0_9/hdl/vhdl/parity.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0_9/hdl/vhdl/parityenable.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0_9/hdl/vhdl/checkbit_handler.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0_9/hdl/vhdl/correct_one_bit.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0_9/hdl/vhdl/pselect_mask.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0_9/hdl/vhdl/axi_interface.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0_9/hdl/vhdl/lmb_mux.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0_9/hdl/vhdl/lmb_bram_if_cntlr.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../vanilla_fpro.srcs/sources_1/ip/cpu/bd_0/ip/ip_4/sim/bd_3914_dlmb_cntlr_0.vhd" \
"../../../../vanilla_fpro.srcs/sources_1/ip/cpu/bd_0/ip/ip_5/sim/bd_3914_ilmb_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_3_3 -v2k5 \
"../../../ipstatic/blk_mem_gen_v8_3_3/simulation/blk_mem_gen_v8_3.v" \

vlog -work xil_defaultlib -v2k5 \
"../../../../vanilla_fpro.srcs/sources_1/ip/cpu/bd_0/ip/ip_6/sim/bd_3914_lmb_bram_I_0.v" \

vcom -work iomodule_v3_0_5 -93 \
"../../../ipstatic/iomodule_v3_0_5/hdl/vhdl/xilinx_primitives.vhd" \
"../../../ipstatic/iomodule_v3_0_5/hdl/vhdl/divide_part.vhd" \
"../../../ipstatic/iomodule_v3_0_5/hdl/vhdl/fit_module.vhd" \
"../../../ipstatic/iomodule_v3_0_5/hdl/vhdl/gpi_module.vhd" \
"../../../ipstatic/iomodule_v3_0_5/hdl/vhdl/gpo_module.vhd" \
"../../../ipstatic/iomodule_v3_0_5/hdl/vhdl/intr_ctrl.vhd" \
"../../../ipstatic/iomodule_v3_0_5/hdl/vhdl/pit_module.vhd" \
"../../../ipstatic/iomodule_v3_0_5/hdl/vhdl/uart_control_status.vhd" \
"../../../ipstatic/iomodule_v3_0_5/hdl/vhdl/uart_receive.vhd" \
"../../../ipstatic/iomodule_v3_0_5/hdl/vhdl/uart_transmit.vhd" \
"../../../ipstatic/iomodule_v3_0_5/hdl/vhdl/iomodule_core.vhd" \
"../../../ipstatic/iomodule_v3_0_5/hdl/vhdl/pselect_mask.vhd" \
"../../../ipstatic/iomodule_v3_0_5/hdl/vhdl/iomodule.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../vanilla_fpro.srcs/sources_1/ip/cpu/bd_0/ip/ip_7/sim/bd_3914_iomodule_0_0.vhd" \

vlog -work xil_defaultlib -v2k5 \
"../../../../vanilla_fpro.srcs/sources_1/ip/cpu/bd_0/hdl/bd_3914.v" \
"../../../../vanilla_fpro.srcs/sources_1/ip/cpu/sim/cpu.v" \

vlog -work xil_defaultlib "glbl.v"

