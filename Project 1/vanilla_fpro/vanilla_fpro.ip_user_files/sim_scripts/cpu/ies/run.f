-makelib ies/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
  "C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
  "C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
  "C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
  "C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
  "C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
  "C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \
-endlib
-makelib ies/xpm \
  "C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/microblaze_v9_6_1 \
  "../../../ipstatic/microblaze_v9_6_1/hdl/microblaze_v9_6_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../vanilla_fpro.srcs/sources_1/ip/cpu/bd_0/ip/ip_0/sim/bd_3914_microblaze_I_0.vhd" \
-endlib
-makelib ies/lib_cdc_v1_0_2 \
  "../../../ipstatic/lib_cdc_v1_0_2/hdl/src/vhdl/cdc_sync.vhd" \
-endlib
-makelib ies/proc_sys_reset_v5_0_9 \
  "../../../ipstatic/proc_sys_reset_v5_0_9/hdl/src/vhdl/upcnt_n.vhd" \
  "../../../ipstatic/proc_sys_reset_v5_0_9/hdl/src/vhdl/sequence_psr.vhd" \
  "../../../ipstatic/proc_sys_reset_v5_0_9/hdl/src/vhdl/lpf.vhd" \
  "../../../ipstatic/proc_sys_reset_v5_0_9/hdl/src/vhdl/proc_sys_reset.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../vanilla_fpro.srcs/sources_1/ip/cpu/bd_0/ip/ip_1/sim/bd_3914_rst_0_0.vhd" \
-endlib
-makelib ies/lmb_v10_v3_0_8 \
  "../../../ipstatic/lmb_v10_v3_0_8/hdl/vhdl/lmb_v10.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../vanilla_fpro.srcs/sources_1/ip/cpu/bd_0/ip/ip_2/sim/bd_3914_ilmb_0.vhd" \
  "../../../../vanilla_fpro.srcs/sources_1/ip/cpu/bd_0/ip/ip_3/sim/bd_3914_dlmb_0.vhd" \
-endlib
-makelib ies/lmb_bram_if_cntlr_v4_0_9 \
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
-endlib
-makelib ies/xil_defaultlib \
  "../../../../vanilla_fpro.srcs/sources_1/ip/cpu/bd_0/ip/ip_4/sim/bd_3914_dlmb_cntlr_0.vhd" \
  "../../../../vanilla_fpro.srcs/sources_1/ip/cpu/bd_0/ip/ip_5/sim/bd_3914_ilmb_cntlr_0.vhd" \
-endlib
-makelib ies/blk_mem_gen_v8_3_3 \
  "../../../ipstatic/blk_mem_gen_v8_3_3/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../vanilla_fpro.srcs/sources_1/ip/cpu/bd_0/ip/ip_6/sim/bd_3914_lmb_bram_I_0.v" \
-endlib
-makelib ies/iomodule_v3_0_5 \
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
-endlib
-makelib ies/xil_defaultlib \
  "../../../../vanilla_fpro.srcs/sources_1/ip/cpu/bd_0/ip/ip_7/sim/bd_3914_iomodule_0_0.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../vanilla_fpro.srcs/sources_1/ip/cpu/bd_0/hdl/bd_3914.v" \
  "../../../../vanilla_fpro.srcs/sources_1/ip/cpu/sim/cpu.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

