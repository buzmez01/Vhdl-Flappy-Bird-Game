# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/CAN Pc/Desktop/VHDL/Final Project/Final Project.cache/wt} [current_project]
set_property parent.project_path {C:/Users/CAN Pc/Desktop/VHDL/Final Project/Final Project.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo {c:/Users/CAN Pc/Desktop/VHDL/Final Project/Final Project.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  {C:/Users/CAN Pc/Desktop/VHDL/Final Project/Final Project.srcs/sources_1/new/SYNC.vhd}
  {C:/Users/CAN Pc/Desktop/VHDL/Final Project/Final Project.srcs/sources_1/new/GameOver.vhd}
  {C:/Users/CAN Pc/Desktop/VHDL/Final Project/Final Project.srcs/sources_1/new/SegmentDecoder.vhd}
  {C:/Users/CAN Pc/Desktop/VHDL/Final Project/Final Project.srcs/sources_1/new/SegmentMux.vhd}
  {C:/Users/CAN Pc/Desktop/VHDL/Final Project/Final Project.srcs/sources_1/new/SegmentClk.vhd}
  {C:/Users/CAN Pc/Desktop/VHDL/Final Project/Final Project.srcs/sources_1/new/SQ.vhd}
  {C:/Users/CAN Pc/Desktop/VHDL/Final Project/Final Project.srcs/sources_1/new/PLL.vhd}
  {C:/Users/CAN Pc/Desktop/VHDL/Final Project/Final Project.srcs/sources_1/new/BOXES.vhd}
  {C:/Users/CAN Pc/Desktop/VHDL/Final Project/Final Project.srcs/sources_1/new/VGA.vhd}
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc {{C:/Users/CAN Pc/Desktop/VHDL/Final Project/Final Project.srcs/constrs_1/new/CONSTRAINTS.xdc}}
set_property used_in_implementation false [get_files {{C:/Users/CAN Pc/Desktop/VHDL/Final Project/Final Project.srcs/constrs_1/new/CONSTRAINTS.xdc}}]


synth_design -top VGA -part xc7a35tcpg236-1


write_checkpoint -force -noxdef VGA.dcp

catch { report_utilization -file VGA_utilization_synth.rpt -pb VGA_utilization_synth.pb }