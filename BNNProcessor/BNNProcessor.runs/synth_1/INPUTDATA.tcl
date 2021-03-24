# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
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
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {D:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.cache/wt} [current_project]
set_property parent.project_path {D:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.xpr} [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.4 [current_project]
set_property ip_output_repo {d:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files {{D:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.sim/sim_1/behav/xsim/INST_SRAM.coe}}
add_files {{D:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.sim/sim_1/behav/xsim/DATA_SRAM.coe}}
read_verilog -library xil_defaultlib -sv {
  {D:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.srcs/sources_1/imports/BNN_Code/BNN_Core.v}
  {D:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.srcs/sources_1/imports/BNN_Code/BPU.v}
  {D:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.srcs/sources_1/imports/BNN_Code/BPUG.v}
  {D:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.srcs/sources_1/new/TOP.v}
  {D:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.srcs/sources_1/new/INPUTDATA.v}
}
read_verilog -library xil_defaultlib {
  {D:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.srcs/sources_1/imports/BNN_Code/BNNCtrl.v}
  {D:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.srcs/sources_1/new/P_TO_S.v}
  {D:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.srcs/sources_1/new/SRAM.v}
  {D:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.srcs/sources_1/new/S_TO_P.v}
  {D:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.srcs/sources_1/imports/BNN_Code/XNOR1x7.v}
}
read_ip -quiet {{D:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.srcs/sources_1/ip/INST_SRAM/INST_SRAM.xci}}
set_property used_in_implementation false [get_files -all {{d:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.srcs/sources_1/ip/INST_SRAM/INST_SRAM_ooc.xdc}}]

read_ip -quiet {{D:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.srcs/sources_1/ip/clk_10m/clk_10m.xci}}
set_property used_in_implementation false [get_files -all {{d:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.srcs/sources_1/ip/clk_10m/clk_10m_board.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.srcs/sources_1/ip/clk_10m/clk_10m.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.srcs/sources_1/ip/clk_10m/clk_10m_ooc.xdc}}]

read_ip -quiet {{D:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.srcs/sources_1/ip/DATA_SRAM/DATA_SRAM.xci}}
set_property used_in_implementation false [get_files -all {{d:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.srcs/sources_1/ip/DATA_SRAM/DATA_SRAM_ooc.xdc}}]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{D:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.srcs/constrs_1/new/top.xdc}}
set_property used_in_implementation false [get_files {{D:/WeChat Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.srcs/constrs_1/new/top.xdc}}]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top INPUTDATA -part xc7z020clg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef INPUTDATA.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file INPUTDATA_utilization_synth.rpt -pb INPUTDATA_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
