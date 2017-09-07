# 
# Synthesis run script generated by Vivado
# 

set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7a200tfbg676-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/verilog/myproject/myproject.cache/wt [current_project]
set_property parent.project_path D:/verilog/myproject/myproject.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo d:/verilog/myproject/myproject.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet D:/verilog/myproject/myproject.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.xci
set_property used_in_implementation false [get_files -all d:/verilog/myproject/myproject.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_ooc.xdc]
set_property is_locked true [get_files D:/verilog/myproject/myproject.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.xci]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir D:/verilog/myproject/myproject.runs/dist_mem_gen_0_synth_1 -new_name dist_mem_gen_0 -ip [get_ips dist_mem_gen_0]]

if { $cached_ip eq {} } {

synth_design -top dist_mem_gen_0 -part xc7a200tfbg676-2 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix dist_mem_gen_0_ dist_mem_gen_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_stub.v
 lappend ipCachedFiles dist_mem_gen_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_stub.vhdl
 lappend ipCachedFiles dist_mem_gen_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_sim_netlist.v
 lappend ipCachedFiles dist_mem_gen_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_sim_netlist.vhdl
 lappend ipCachedFiles dist_mem_gen_0_sim_netlist.vhdl

 config_ip_cache -add -dcp dist_mem_gen_0.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips dist_mem_gen_0]
}

rename_ref -prefix_all dist_mem_gen_0_

write_checkpoint -force -noxdef dist_mem_gen_0.dcp

catch { report_utilization -file dist_mem_gen_0_utilization_synth.rpt -pb dist_mem_gen_0_utilization_synth.pb }

if { [catch {
  file copy -force D:/verilog/myproject/myproject.runs/dist_mem_gen_0_synth_1/dist_mem_gen_0.dcp D:/verilog/myproject/myproject.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub D:/verilog/myproject/myproject.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub D:/verilog/myproject/myproject.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim D:/verilog/myproject/myproject.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim D:/verilog/myproject/myproject.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force D:/verilog/myproject/myproject.runs/dist_mem_gen_0_synth_1/dist_mem_gen_0.dcp D:/verilog/myproject/myproject.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force D:/verilog/myproject/myproject.runs/dist_mem_gen_0_synth_1/dist_mem_gen_0_stub.v D:/verilog/myproject/myproject.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force D:/verilog/myproject/myproject.runs/dist_mem_gen_0_synth_1/dist_mem_gen_0_stub.vhdl D:/verilog/myproject/myproject.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force D:/verilog/myproject/myproject.runs/dist_mem_gen_0_synth_1/dist_mem_gen_0_sim_netlist.v D:/verilog/myproject/myproject.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force D:/verilog/myproject/myproject.runs/dist_mem_gen_0_synth_1/dist_mem_gen_0_sim_netlist.vhdl D:/verilog/myproject/myproject.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir D:/verilog/myproject/myproject.ip_user_files/ip/dist_mem_gen_0]} {
  catch { 
    file copy -force D:/verilog/myproject/myproject.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_stub.v D:/verilog/myproject/myproject.ip_user_files/ip/dist_mem_gen_0
  }
}

if {[file isdir D:/verilog/myproject/myproject.ip_user_files/ip/dist_mem_gen_0]} {
  catch { 
    file copy -force D:/verilog/myproject/myproject.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_stub.vhdl D:/verilog/myproject/myproject.ip_user_files/ip/dist_mem_gen_0
  }
}
