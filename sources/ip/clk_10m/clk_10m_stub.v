// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Mar  3 17:26:38 2021
// Host        : LAPTOP-CF0KAGUB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/WeChat
//               Files/wxid_7qg360e9m44722/FileStorage/File/2021-01/BNNProcessor/BNNProcessor.srcs/sources_1/ip/clk_10m/clk_10m_stub.v}
// Design      : clk_10m
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_10m(clk_out1, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_in1" */;
  output clk_out1;
  input clk_in1;
endmodule
