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


start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7vx485tffg1761-2
  set_property board_part xilinx.com:vc707:part0:1.4 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir D:/Project/verilog_pro/softmax/prj1/softmax/softmax.cache/wt [current_project]
  set_property parent.project_path D:/Project/verilog_pro/softmax/prj1/softmax/softmax.xpr [current_project]
  set_property ip_cache_permissions disable [current_project]
  set_property XPM_LIBRARIES XPM_MEMORY [current_project]
  add_files -quiet D:/Project/verilog_pro/softmax/prj1/softmax/softmax.runs/synth_2/softmax.dcp
  read_ip -quiet D:/Project/verilog_pro/softmax/prj1/softmax/softmax.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.xci
  read_ip -quiet D:/Project/verilog_pro/softmax/prj1/softmax/softmax.srcs/sources_1/ip/floating_point_0/floating_point_0.xci
  read_ip -quiet D:/Project/verilog_pro/softmax/prj1/softmax/softmax.srcs/sources_1/ip/floating_point_1/floating_point_1.xci
  read_ip -quiet D:/Project/verilog_pro/softmax/prj1/softmax/softmax.srcs/sources_1/ip/divide/divide.xci
  read_xdc D:/Project/verilog_pro/softmax/prj1/softmax/softmax.srcs/constrs_1/new/mm.xdc
  link_design -top softmax -part xc7vx485tffg1761-2
  create_report "impl_2_init_report_timing_summary_0" "report_timing_summary -max_paths 10 -file init_report_timing_summary_0.rpt -pb init_report_timing_summary_0.pb -rpx init_report_timing_summary_0.rpx"
  create_report "impl_2_init_report_utilization_0" "report_utilization -file init_report_utilization_0.rpt -pb init_report_utilization_0.pb"
  create_report "impl_2_init_report_high_fanout_nets_0" "report_high_fanout_nets -file init_report_high_fanout_nets_0.rpt"
  create_report "impl_2_init_report_control_sets_0" "report_control_sets -file init_report_control_sets_0.rpt"
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force softmax_opt.dcp
  create_report "impl_2_opt_report_drc_0" "report_drc -file opt_report_drc_0.rpt -pb opt_report_drc_0.pb -rpx opt_report_drc_0.rpx"
  create_report "impl_2_opt_report_utilization_0" "report_utilization -file opt_report_utilization_0.rpt -pb opt_report_utilization_0.pb"
  create_report "impl_2_opt_report_methodology_0" "report_methodology -file opt_report_methodology_0.rpt -pb opt_report_methodology_0.pb -rpx opt_report_methodology_0.rpx"
  create_report "impl_2_opt_report_timing_summary_0" "report_timing_summary -max_paths 10 -file opt_report_timing_summary_0.rpt -pb opt_report_timing_summary_0.pb -rpx opt_report_timing_summary_0.rpx"
  create_report "impl_2_opt_report_high_fanout_nets_0" "report_high_fanout_nets -file opt_report_high_fanout_nets_0.rpt"
  create_report "impl_2_opt_report_control_sets_0" "report_control_sets -verbose -file opt_report_control_sets_0.rpt"
  create_report "impl_2_opt_report_design_analysis_0" "report_design_analysis -logic_level_distribution -file opt_report_design_analysis_0.rpt"
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  if { [llength [get_debug_cores -quiet] ] > 0 }  { 
    implement_debug_core 
  } 
  place_design 
  write_checkpoint -force softmax_placed.dcp
  create_report "impl_2_place_report_io_0" "report_io -file place_report_io_0.rpt"
  create_report "impl_2_place_report_utilization_0" "report_utilization -file place_report_utilization_0.rpt -pb place_report_utilization_0.pb"
  create_report "impl_2_place_report_incremental_reuse_0" "report_incremental_reuse -file place_report_incremental_reuse_0.rpt"
  create_report "impl_2_place_report_timing_summary_0" "report_timing_summary -max_paths 10 -file place_report_timing_summary_0.rpt -pb place_report_timing_summary_0.pb -rpx place_report_timing_summary_0.rpx"
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force softmax_routed.dcp
  create_report "impl_2_route_report_clock_utilization_0" "report_clock_utilization -file route_report_clock_utilization_0.rpt"
  create_report "impl_2_route_report_drc_0" "report_drc -file route_report_drc_0.rpt -pb route_report_drc_0.pb -rpx route_report_drc_0.rpx"
  create_report "impl_2_route_report_power_0" "report_power -file route_report_power_0.rpt -pb route_report_power_summary_0.pb -rpx route_report_power_0.rpx"
  create_report "impl_2_route_report_route_status_0" "report_route_status -file route_report_route_status_0.rpt -pb route_report_route_status_0.pb"
  create_report "impl_2_route_report_timing_summary_0" "report_timing_summary -max_paths 10 -warn_on_violation -file route_report_timing_summary_0.rpt -pb route_report_timing_summary_0.pb -rpx route_report_timing_summary_0.rpx"
  create_report "impl_2_route_report_incremental_reuse_0" "report_incremental_reuse -file route_report_incremental_reuse_0.rpt"
  create_report "impl_2_route_report_bus_skew_0" "report_bus_skew -warn_on_violation -file route_report_bus_skew_0.rpt -pb route_report_bus_skew_0.pb -rpx route_report_bus_skew_0.rpx"
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force softmax_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

