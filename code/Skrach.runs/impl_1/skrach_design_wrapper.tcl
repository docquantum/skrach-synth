# 
# Report generation script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
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


start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_param chipscope.maxJobs 2
  open_checkpoint skrach_design_wrapper_routed.dcp
  set_property webtalk.parent_dir /home/dshchur/homework/csce_436_shchur/final/code/Skrach.cache/wt [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
  add_files /home/dshchur/homework/csce_436_shchur/final/code/Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_microblaze_0_3/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF skrach_design [get_files -all /home/dshchur/homework/csce_436_shchur/final/code/Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_microblaze_0_3/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS microblaze_0 [get_files -all /home/dshchur/homework/csce_436_shchur/final/code/Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_microblaze_0_3/data/mb_bootloop_le.elf]
  catch { write_mem_info -force skrach_design_wrapper.mmi }
  catch { write_bmm -force skrach_design_wrapper_bd.bmm }
  write_bitstream -force skrach_design_wrapper.bit 
  catch { write_sysdef -hwdef skrach_design_wrapper.hwdef -bitfile skrach_design_wrapper.bit -meminfo skrach_design_wrapper.mmi -file skrach_design_wrapper.sysdef }
  catch {write_debug_probes -quiet -force skrach_design_wrapper}
  catch {file copy -force skrach_design_wrapper.ltx debug_nets.ltx}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

