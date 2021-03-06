proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -ruleid {7}  -id {[BD 41-1306]}  -suppress 
set_msg_config  -ruleid {8}  -id {[BD 41-1271]}  -suppress 

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  open_checkpoint mcs_top_vanilla_routed.dcp
  set_property webtalk.parent_dir {C:/EEC488/Project 1/vanilla_fpro/vanilla_fpro.cache/wt} [current_project]
  add_files C:/EEC488/workspace/vanilla_test/Debug/vanilla_test.elf
  set_property SCOPED_TO_REF cpu [get_files -all C:/EEC488/workspace/vanilla_test/Debug/vanilla_test.elf]
  set_property SCOPED_TO_CELLS inst/microblaze_I [get_files -all C:/EEC488/workspace/vanilla_test/Debug/vanilla_test.elf]
  catch { write_mem_info -force mcs_top_vanilla.mmi }
  catch { write_bmm -force mcs_top_vanilla_bd.bmm }
  write_bitstream -force mcs_top_vanilla.bit 
  catch { write_sysdef -hwdef mcs_top_vanilla.hwdef -bitfile mcs_top_vanilla.bit -meminfo mcs_top_vanilla.mmi -file mcs_top_vanilla.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

