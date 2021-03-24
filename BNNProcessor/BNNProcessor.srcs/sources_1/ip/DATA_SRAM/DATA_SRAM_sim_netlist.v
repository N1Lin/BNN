// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Mar 21 09:38:38 2021
// Host        : LAPTOP-CF0KAGUB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top DATA_SRAM -prefix
//               DATA_SRAM_ DATA_SRAM_sim_netlist.v
// Design      : DATA_SRAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DATA_SRAM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module DATA_SRAM
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [13:0]addra;
  wire clka;
  wire [31:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "4" *) 
  (* C_COUNT_36K_BRAM = "9" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.181603 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "DATA_SRAM.mem" *) 
  (* C_INIT_FILE_NAME = "DATA_SRAM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "12268" *) 
  (* C_READ_DEPTH_B = "12268" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "12268" *) 
  (* C_WRITE_DEPTH_B = "12268" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  DATA_SRAM_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

module DATA_SRAM_bindec
   (ena_array,
    addra);
  output [0:0]ena_array;
  input [1:0]addra;

  wire [1:0]addra;
  wire [0:0]ena_array;

  LUT2 #(
    .INIT(4'h1)) 
    \/i_ 
       (.I0(addra[1]),
        .I1(addra[0]),
        .O(ena_array));
endmodule

module DATA_SRAM_blk_mem_gen_generic_cstr
   (douta,
    addra,
    clka);
  output [31:0]douta;
  input [13:0]addra;
  input clka;

  wire [13:0]addra;
  wire clka;
  wire [31:0]douta;
  wire [0:0]ena_array;
  wire \ramloop[10].ram.r_n_0 ;
  wire \ramloop[10].ram.r_n_1 ;
  wire \ramloop[10].ram.r_n_2 ;
  wire \ramloop[10].ram.r_n_3 ;
  wire \ramloop[10].ram.r_n_4 ;
  wire \ramloop[10].ram.r_n_5 ;
  wire \ramloop[10].ram.r_n_6 ;
  wire \ramloop[10].ram.r_n_7 ;
  wire \ramloop[10].ram.r_n_8 ;
  wire \ramloop[11].ram.r_n_0 ;
  wire \ramloop[11].ram.r_n_1 ;
  wire \ramloop[11].ram.r_n_2 ;
  wire \ramloop[11].ram.r_n_3 ;
  wire \ramloop[11].ram.r_n_4 ;
  wire \ramloop[11].ram.r_n_5 ;
  wire \ramloop[11].ram.r_n_6 ;
  wire \ramloop[11].ram.r_n_7 ;
  wire \ramloop[11].ram.r_n_8 ;
  wire \ramloop[12].ram.r_n_0 ;
  wire \ramloop[12].ram.r_n_1 ;
  wire \ramloop[12].ram.r_n_2 ;
  wire \ramloop[12].ram.r_n_3 ;
  wire \ramloop[12].ram.r_n_4 ;
  wire \ramloop[12].ram.r_n_5 ;
  wire \ramloop[12].ram.r_n_6 ;
  wire \ramloop[12].ram.r_n_7 ;
  wire \ramloop[12].ram.r_n_8 ;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_8 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_4 ;
  wire \ramloop[5].ram.r_n_5 ;
  wire \ramloop[5].ram.r_n_6 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_8 ;
  wire \ramloop[5].ram.r_n_9 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_1 ;
  wire \ramloop[6].ram.r_n_2 ;
  wire \ramloop[6].ram.r_n_3 ;
  wire \ramloop[6].ram.r_n_4 ;
  wire \ramloop[6].ram.r_n_5 ;
  wire \ramloop[6].ram.r_n_6 ;
  wire \ramloop[6].ram.r_n_7 ;
  wire \ramloop[6].ram.r_n_8 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_1 ;
  wire \ramloop[7].ram.r_n_2 ;
  wire \ramloop[7].ram.r_n_3 ;
  wire \ramloop[7].ram.r_n_4 ;
  wire \ramloop[7].ram.r_n_5 ;
  wire \ramloop[7].ram.r_n_6 ;
  wire \ramloop[7].ram.r_n_7 ;
  wire \ramloop[7].ram.r_n_8 ;
  wire \ramloop[8].ram.r_n_0 ;
  wire \ramloop[8].ram.r_n_1 ;
  wire \ramloop[8].ram.r_n_2 ;
  wire \ramloop[8].ram.r_n_3 ;
  wire \ramloop[8].ram.r_n_4 ;
  wire \ramloop[8].ram.r_n_5 ;
  wire \ramloop[8].ram.r_n_6 ;
  wire \ramloop[8].ram.r_n_7 ;
  wire \ramloop[8].ram.r_n_8 ;
  wire \ramloop[9].ram.r_n_0 ;
  wire \ramloop[9].ram.r_n_1 ;
  wire \ramloop[9].ram.r_n_2 ;
  wire \ramloop[9].ram.r_n_3 ;
  wire \ramloop[9].ram.r_n_4 ;
  wire \ramloop[9].ram.r_n_5 ;
  wire \ramloop[9].ram.r_n_6 ;
  wire \ramloop[9].ram.r_n_7 ;
  wire \ramloop[9].ram.r_n_8 ;

  DATA_SRAM_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[13:12]),
        .ena_array(ena_array));
  DATA_SRAM_blk_mem_gen_mux \has_mux_a.A 
       (.DOADO({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .DOPADOP(\ramloop[12].ram.r_n_8 ),
        .addra(addra[13:12]),
        .clka(clka),
        .douta(douta[31:1]),
        .\douta[12] ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .\douta[12]_0 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\douta[12]_1 ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\douta[13] (\ramloop[6].ram.r_n_8 ),
        .\douta[13]_0 (\ramloop[4].ram.r_n_8 ),
        .\douta[13]_1 (\ramloop[5].ram.r_n_8 ),
        .\douta[21] ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\douta[21]_0 ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\douta[21]_1 ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\douta[22] (\ramloop[9].ram.r_n_8 ),
        .\douta[22]_0 (\ramloop[7].ram.r_n_8 ),
        .\douta[22]_1 (\ramloop[8].ram.r_n_8 ),
        .\douta[2] ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 }),
        .\douta[30] ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .\douta[30]_0 ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\douta[31] (\ramloop[10].ram.r_n_8 ),
        .\douta[31]_0 (\ramloop[11].ram.r_n_8 ),
        .\douta[4] ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 }),
        .\douta[4]_0 ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 }));
  DATA_SRAM_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[0]));
  DATA_SRAM_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[10].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array));
  DATA_SRAM_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[11].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[5].ram.r_n_9 ),
        .addra(addra[11:0]),
        .clka(clka));
  DATA_SRAM_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[2].ram.r_n_4 ),
        .DOADO({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .DOPADOP(\ramloop[12].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka));
  DATA_SRAM_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 }),
        .addra(addra),
        .addra_13_sp_1(\ramloop[1].ram.r_n_2 ),
        .clka(clka));
  DATA_SRAM_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 }),
        .addra(addra),
        .addra_13_sp_1(\ramloop[2].ram.r_n_4 ),
        .clka(clka));
  DATA_SRAM_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\ramloop[1].ram.r_n_2 ),
        .addra(addra[12:0]),
        .clka(clka));
  DATA_SRAM_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[4].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array));
  DATA_SRAM_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[5].ram.r_n_8 ),
        .addra(addra),
        .addra_12_sp_1(\ramloop[5].ram.r_n_9 ),
        .clka(clka));
  DATA_SRAM_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[6].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[2].ram.r_n_4 ),
        .addra(addra[11:0]),
        .clka(clka));
  DATA_SRAM_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[7].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array));
  DATA_SRAM_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[8].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[5].ram.r_n_9 ),
        .addra(addra[11:0]),
        .clka(clka));
  DATA_SRAM_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[9].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[2].ram.r_n_4 ),
        .addra(addra[11:0]),
        .clka(clka));
endmodule

module DATA_SRAM_blk_mem_gen_mux
   (douta,
    addra,
    clka,
    DOPADOP,
    \douta[31] ,
    \douta[31]_0 ,
    DOADO,
    \douta[30] ,
    \douta[30]_0 ,
    \douta[22] ,
    \douta[22]_0 ,
    \douta[22]_1 ,
    \douta[21] ,
    \douta[21]_0 ,
    \douta[21]_1 ,
    \douta[13] ,
    \douta[13]_0 ,
    \douta[13]_1 ,
    \douta[12] ,
    \douta[12]_0 ,
    \douta[12]_1 ,
    \douta[4] ,
    \douta[4]_0 ,
    \douta[2] );
  output [30:0]douta;
  input [1:0]addra;
  input clka;
  input [0:0]DOPADOP;
  input [0:0]\douta[31] ;
  input [0:0]\douta[31]_0 ;
  input [7:0]DOADO;
  input [7:0]\douta[30] ;
  input [7:0]\douta[30]_0 ;
  input [0:0]\douta[22] ;
  input [0:0]\douta[22]_0 ;
  input [0:0]\douta[22]_1 ;
  input [7:0]\douta[21] ;
  input [7:0]\douta[21]_0 ;
  input [7:0]\douta[21]_1 ;
  input [0:0]\douta[13] ;
  input [0:0]\douta[13]_0 ;
  input [0:0]\douta[13]_1 ;
  input [7:0]\douta[12] ;
  input [7:0]\douta[12]_0 ;
  input [7:0]\douta[12]_1 ;
  input [3:0]\douta[4] ;
  input [1:0]\douta[4]_0 ;
  input [1:0]\douta[2] ;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [1:0]addra;
  wire clka;
  wire [30:0]douta;
  wire [7:0]\douta[12] ;
  wire [7:0]\douta[12]_0 ;
  wire [7:0]\douta[12]_1 ;
  wire [0:0]\douta[13] ;
  wire [0:0]\douta[13]_0 ;
  wire [0:0]\douta[13]_1 ;
  wire [7:0]\douta[21] ;
  wire [7:0]\douta[21]_0 ;
  wire [7:0]\douta[21]_1 ;
  wire [0:0]\douta[22] ;
  wire [0:0]\douta[22]_0 ;
  wire [0:0]\douta[22]_1 ;
  wire [1:0]\douta[2] ;
  wire [7:0]\douta[30] ;
  wire [7:0]\douta[30]_0 ;
  wire [0:0]\douta[31] ;
  wire [0:0]\douta[31]_0 ;
  wire [3:0]\douta[4] ;
  wire [1:0]\douta[4]_0 ;
  wire [1:0]sel_pipe;
  wire [1:0]sel_pipe_d1;

  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[10]_INST_0 
       (.I0(\douta[12] [5]),
        .I1(\douta[12]_0 [5]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[12]_1 [5]),
        .O(douta[9]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[11]_INST_0 
       (.I0(\douta[12] [6]),
        .I1(\douta[12]_0 [6]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[12]_1 [6]),
        .O(douta[10]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[12]_INST_0 
       (.I0(\douta[12] [7]),
        .I1(\douta[12]_0 [7]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[12]_1 [7]),
        .O(douta[11]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[13]_INST_0 
       (.I0(\douta[13] ),
        .I1(\douta[13]_0 ),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[13]_1 ),
        .O(douta[12]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[14]_INST_0 
       (.I0(\douta[21] [0]),
        .I1(\douta[21]_0 [0]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[21]_1 [0]),
        .O(douta[13]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[15]_INST_0 
       (.I0(\douta[21] [1]),
        .I1(\douta[21]_0 [1]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[21]_1 [1]),
        .O(douta[14]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[16]_INST_0 
       (.I0(\douta[21] [2]),
        .I1(\douta[21]_0 [2]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[21]_1 [2]),
        .O(douta[15]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[17]_INST_0 
       (.I0(\douta[21] [3]),
        .I1(\douta[21]_0 [3]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[21]_1 [3]),
        .O(douta[16]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[18]_INST_0 
       (.I0(\douta[21] [4]),
        .I1(\douta[21]_0 [4]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[21]_1 [4]),
        .O(douta[17]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[19]_INST_0 
       (.I0(\douta[21] [5]),
        .I1(\douta[21]_0 [5]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[21]_1 [5]),
        .O(douta[18]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[1]_INST_0 
       (.I0(\douta[4] [0]),
        .I1(\douta[2] [0]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[0]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[20]_INST_0 
       (.I0(\douta[21] [6]),
        .I1(\douta[21]_0 [6]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[21]_1 [6]),
        .O(douta[19]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[21]_INST_0 
       (.I0(\douta[21] [7]),
        .I1(\douta[21]_0 [7]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[21]_1 [7]),
        .O(douta[20]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[22]_INST_0 
       (.I0(\douta[22] ),
        .I1(\douta[22]_0 ),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[22]_1 ),
        .O(douta[21]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[23]_INST_0 
       (.I0(DOADO[0]),
        .I1(\douta[30] [0]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[30]_0 [0]),
        .O(douta[22]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[24]_INST_0 
       (.I0(DOADO[1]),
        .I1(\douta[30] [1]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[30]_0 [1]),
        .O(douta[23]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[25]_INST_0 
       (.I0(DOADO[2]),
        .I1(\douta[30] [2]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[30]_0 [2]),
        .O(douta[24]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[26]_INST_0 
       (.I0(DOADO[3]),
        .I1(\douta[30] [3]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[30]_0 [3]),
        .O(douta[25]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[27]_INST_0 
       (.I0(DOADO[4]),
        .I1(\douta[30] [4]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[30]_0 [4]),
        .O(douta[26]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[28]_INST_0 
       (.I0(DOADO[5]),
        .I1(\douta[30] [5]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[30]_0 [5]),
        .O(douta[27]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[29]_INST_0 
       (.I0(DOADO[6]),
        .I1(\douta[30] [6]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[30]_0 [6]),
        .O(douta[28]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[2]_INST_0 
       (.I0(\douta[4] [1]),
        .I1(\douta[2] [1]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[1]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[30]_INST_0 
       (.I0(DOADO[7]),
        .I1(\douta[30] [7]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[30]_0 [7]),
        .O(douta[29]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[31]_INST_0 
       (.I0(DOPADOP),
        .I1(\douta[31] ),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[31]_0 ),
        .O(douta[30]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[3]_INST_0 
       (.I0(\douta[4] [2]),
        .I1(\douta[4]_0 [0]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[2]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[4]_INST_0 
       (.I0(\douta[4] [3]),
        .I1(\douta[4]_0 [1]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[3]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[5]_INST_0 
       (.I0(\douta[12] [0]),
        .I1(\douta[12]_0 [0]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[12]_1 [0]),
        .O(douta[4]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[6]_INST_0 
       (.I0(\douta[12] [1]),
        .I1(\douta[12]_0 [1]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[12]_1 [1]),
        .O(douta[5]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[7]_INST_0 
       (.I0(\douta[12] [2]),
        .I1(\douta[12]_0 [2]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[12]_1 [2]),
        .O(douta[6]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[8]_INST_0 
       (.I0(\douta[12] [3]),
        .I1(\douta[12]_0 [3]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[12]_1 [3]),
        .O(douta[7]));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \douta[9]_INST_0 
       (.I0(\douta[12] [4]),
        .I1(\douta[12]_0 [4]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .I4(\douta[12]_1 [4]),
        .O(douta[8]));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
endmodule

module DATA_SRAM_blk_mem_gen_prim_width
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [0:0]douta;

  DATA_SRAM_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module DATA_SRAM_blk_mem_gen_prim_width__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    addra_13_sp_1,
    clka,
    addra);
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  output addra_13_sp_1;
  input clka;
  input [13:0]addra;

  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [13:0]addra;
  wire addra_13_sn_1;
  wire clka;

  assign addra_13_sp_1 = addra_13_sn_1;
  DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .addra(addra),
        .addra_13_sp_1(addra_13_sn_1),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module DATA_SRAM_blk_mem_gen_prim_width__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    addra_13_sp_1,
    clka,
    addra);
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  output addra_13_sp_1;
  input clka;
  input [13:0]addra;

  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [13:0]addra;
  wire addra_13_sn_1;
  wire clka;

  assign addra_13_sp_1 = addra_13_sn_1;
  DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .addra(addra),
        .addra_13_sp_1(addra_13_sn_1),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module DATA_SRAM_blk_mem_gen_prim_width__parameterized10
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;

  DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module DATA_SRAM_blk_mem_gen_prim_width__parameterized11
   (DOADO,
    DOPADOP,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input [11:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire clka;

  DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module DATA_SRAM_blk_mem_gen_prim_width__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    addra);
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input [12:0]addra;

  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [12:0]addra;
  wire clka;

  DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module DATA_SRAM_blk_mem_gen_prim_width__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module DATA_SRAM_blk_mem_gen_prim_width__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra_12_sp_1,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output addra_12_sp_1;
  input clka;
  input [13:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]addra;
  wire addra_12_sn_1;
  wire clka;

  assign addra_12_sp_1 = addra_12_sn_1;
  DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .addra_12_sp_1(addra_12_sn_1),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module DATA_SRAM_blk_mem_gen_prim_width__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;

  DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module DATA_SRAM_blk_mem_gen_prim_width__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module DATA_SRAM_blk_mem_gen_prim_width__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;

  DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module DATA_SRAM_blk_mem_gen_prim_width__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;

  DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module DATA_SRAM_blk_mem_gen_prim_width__parameterized9
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

module DATA_SRAM_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [0:0]douta;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h39926DE92455F4EBDDB83783584FB5BD4C7C33393FDD27FF666460F1F5178781),
    .INIT_01(256'hC9235481BA1E512C60A96921110514F9482A1F7B525BEA7904DCAFCAA7B23908),
    .INIT_02(256'hE18DE8A89A6D0DA2142150BB2E3BD4901A67D7EDD99802647C3550C115EA22A0),
    .INIT_03(256'h7864203D7F783F0D46F6B07185785968F0C8407AFEF07E1A8DED60E30AF0B2D1),
    .INIT_04(256'h1E19080F5FDE0FC351BDAC1C615E165A3C32101EBFBC1F86A37B5838C2BC2CB4),
    .INIT_05(256'h47864203D7F783F0D46F6B07185785968F0C8407AFEF07E1A8DED60E30AF0B2D),
    .INIT_06(256'hD1E19080F5FDE0FC351BDAC1C615E165A3C32101EBFBC1F86A37B5838C2BC2CB),
    .INIT_07(256'h83F0D46F6B07185785968F0C8407AFEF07E1A8407AFEF07E1A8DED60E30AF0B2),
    .INIT_08(256'h615E165A3C32101EBFBC1F86A101EBFBC1F86A37B5838C2BC2CB47864203D7F7),
    .INIT_09(256'hABE9D7BB706E8407AFEF07E1A8DED60E30AF0B2D1E19080F5FDE0FC351BDAC1C),
    .INIT_0A(256'h9157D3AF76E0DE220A29F290543EF6A4B7D4F209B95F954F6472107324DBD248),
    .INIT_0B(256'h4922AFA75EEDC1BC441453E520A87DED496FA9E41372BF2A9EC8E420E649B7A4),
    .INIT_0C(256'h5E165A3C32101EBFB88828A7CA4150FBDA92DF53C826E57E553D91C841CC936F),
    .INIT_0D(256'h5785968F0C8407AFEF07E1A8DED60E30AF0B2D1E19080F5FDE0FC351BDAC1C61),
    .INIT_0E(256'hF6A4B7D4F209B95F954F6472107324DBD248ABE9D7BB706F110514F9482A1F18),
    .INIT_0F(256'h2BC2CB47864203D7F783F0D46F6B07185785968F0C8407AFEE220A29F290543E),
    .INIT_10(256'hF4922AFA75EEDC1BC441453E520A87C615E165A3C32101EBFBC1F86A37B5838C),
    .INIT_11(256'h15E165A3C32101EBFB88828A7CA4150FBDA92DF53C826E57E553D91C841CC936),
    .INIT_12(256'h85785968F0C8407AFEF07E1A8DED60E30AF0B2D1E19080F5FDE0FC351BDAC1C6),
    .INIT_13(256'hEF6A4B7D4F209B95F954F6472107324DBD248ABE9D7BB706F110514F9482A1F1),
    .INIT_14(256'h000000000000000000183F0D46F6B07185785968F0C8407AFEE220A29F290543),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:1],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    addra_13_sp_1,
    clka,
    addra);
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  output addra_13_sp_1;
  input clka;
  input [13:0]addra;

  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [13:0]addra;
  wire addra_13_sn_1;
  wire clka;
  wire [15:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  assign addra_13_sp_1 = addra_13_sn_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hB9A243BBB50BB9EB7A77E9551631059201ED549DA644A7FFFC588281D0D6E3C3),
    .INIT_01(256'h765993ED600AC48A961B7D514411BFD1F3C1799C8095126057282915B13B77ED),
    .INIT_02(256'hEB6174578930D11960CA7F2D2A650EDC552D07EBEFD1A6F268512B64E8413E03),
    .INIT_03(256'h5D484AB7B6F5024D902AFD2D6C3A4D3E6016CF98C0DC126034F808541167E769),
    .INIT_04(256'hF65341A0C763DFB45C82188406F75E631B96231EDBFEEB0DBD9F949DCCC44D8D),
    .INIT_05(256'hC986F6AE6D958ACAD7046591A8CB6453AFAD05957CB943FA1F93763D6EC6517A),
    .INIT_06(256'hB261BEE9EA56E721137D0020ACF72B1B579ADBB17E95A6B52EC4EB504AAB5A12),
    .INIT_07(256'h2C986FBA7A95B9C844DF40082B3DCAC6D5E6B6EC5FA569AD4BB13AD412AAD684),
    .INIT_08(256'h4B261BEE9EA56E721137D0020ACF72B1B579ADBB17E95A6B52EC4EB504AAB5A1),
    .INIT_09(256'h12C986FBA7A95B9C844DF40082B3DCAC6D5E6B6EC5FA569AD4BB13AD412AAD68),
    .INIT_0A(256'h84B261BEE9EA56E721137D0020ACF72B1B579ADBB17E95A6B52EC4EB504AAB5A),
    .INIT_0B(256'hA12C986FBA7A95B9C844DF40082B3DCAC6D5E6B6EC5FA569AD4BB13AD412AAD6),
    .INIT_0C(256'h684B261BEE9EA56E721137D0020ACF72B1B579ADBB17E95A6B52EC4EB504AAB5),
    .INIT_0D(256'h5A12C986FBA7A95B9C844DF40082B3DCAC6D5E6B6EC5FA569AD4BB13AD412AAD),
    .INIT_0E(256'h20ACF72B1AE9EA56E721137D0020ACF72B1B579ADBB17E95A6B52EC4EB504AAB),
    .INIT_0F(256'h082B3DCAC6D5E6B6EC5FA56BAD4BB13AD412AAD684B261BEE9EA56E721137D00),
    .INIT_10(256'h020ACF72B1B579ADBB17E95A6B52EC4EB504AAB5A12C986FBA7A95B9C844DF40),
    .INIT_11(256'hD4BB13AD412AAD684B261BEE9EA56E721137D0020ACF72B1AE9FA56E721137D0),
    .INIT_12(256'hB52EC4EB504AAB5B12C986FBA7A95B9C844DF40082B3DCAC6D5E6B6EC5FA569A),
    .INIT_13(256'hF5451046FF47CF05E6720256E9EA56E721137D0020ACF72B1B579ADBB17E95A6),
    .INIT_14(256'hFCB4A9943B7154B41FAFBF469BC9A144AD93A104F80DD9664FB5802A122A586D),
    .INIT_15(256'h61B7D514411BFD1F3C1799C80950D3E02150459F9DA7AD85D15E24C344658329),
    .INIT_16(256'h0CA7F2D2A650EDC552D07EBEFD1A6F268512B64E8413E03765993ED600A848A9),
    .INIT_17(256'h22A586DF5451046FF47CF05E672025434F808541167E769EB6174578930D1196),
    .INIT_18(256'h4658329FCB4A9943B7154B41FAFBF469BC9A144AD93A104F80DD9664FB5802A1),
    .INIT_19(256'h13AD412AAD684B261BEE9EA56E721137D00D3E02150459F9DA7AD85D15E24C34),
    .INIT_1A(256'hC4EB504AAB5A12C986FBA7A95B9C844DF40082B3DCAC6D5E6B6EC5FA569AD4BB),
    .INIT_1B(256'hB13AD412AAD684B261BEE9EA56E721137D0020ACF72B1B579ADBB17E95A6B52E),
    .INIT_1C(256'h122A586DF5451046FF47CF05E672025434F808541167E769EB6174578939AD4B),
    .INIT_1D(256'h44658329FCB4A9943B7154B41FAFBF469BC9A144AD93A104F80DD9664FB5802A),
    .INIT_1E(256'hB13AD412AAD684B261BEE9EA56E721137D00D3E02150459F9DA7AD85D15E24C3),
    .INIT_1F(256'hEC4EB504AAB5A12C986FBA7A95B9C844DF40082B3DCAC6D5E6B6EC5FA569AD4B),
    .INIT_20(256'hBB13AD412AAD684B261BEE9EA56E721137D0020ACF72B1B579ADBB17E95A6B52),
    .INIT_21(256'hA122A586DF5451046FF47CF05E672025434F808541167E769EB6174578939AD4),
    .INIT_22(256'h344658329FCB4A9943B7154B41FAFBF469BC9A144AD93A104F80DD9664FB5802),
    .INIT_23(256'hBB13AD412AAD684B261BEE9EA56E721137D00D3E02150459F9DA7AD85D15E24C),
    .INIT_24(256'h2EC4EB504AAB5A12C986FBA7A95B9C844DF40082B3DCAC6D5E6B6EC5FA569AD4),
    .INIT_25(256'h4BB13AD412AAD684B261BEE9EA56E721137D0020ACF72B1B579ADBB17E95A6B5),
    .INIT_26(256'h2A122A586DF5451046FF47CF05E672025434F808541167E769EB6174578939AD),
    .INIT_27(256'hC344658329FCB4A9943B7154B41FAFBF469BC9A144AD93A104F80DD9664FB580),
    .INIT_28(256'h4BB13AD412AAD684B261BEE9EA56E721137D00D3E02150459F9DA7AD85D15E24),
    .INIT_29(256'h8E663037FF8833429534376C521F68F9CAC867082B3DCAC6D5E6B6EC5FA569AD),
    .INIT_2A(256'hCA2263D66DEE17DCBF25538725E5613A0296D380E8226D82F796B7405DC95AE4),
    .INIT_2B(256'hD281E31B70C39ADA60395D62A76B6BAA68C8E4CC9E07EEA9BA975EAF0EEEC7F1),
    .INIT_2C(256'hD2DECB38BE3F206E4C9CC99FBCF733288A0A4BE1EB4124923CD51D1A6765406F),
    .INIT_2D(256'hF74C10BABD8D17B91D16E0CF04422D71686F4DF5BDDC07FDEEE3AAA0C8A08936),
    .INIT_2E(256'h08A4D5D7CD697C90E45795C634D0CCCE6AA22CE62D80AF49FD03BE1E40EAED79),
    .INIT_2F(256'h13CD69544B86DB07E4162016E395D5331501C66FD238EB113B9BD882A098EB3E),
    .INIT_30(256'h398F9C720F7CB46BF73F1CD104B7F9CF9128E5E33873CEF20B106BE8C0969487),
    .INIT_31(256'hADD0177256B923998C0DFFE20CD0A54D0DDB1487DA3E72B2191DF97A8872E771),
    .INIT_32(256'hD7ABC3BBB1FC728898F59B7B85F72FC954E1C979584E80A5B4E03A089B60BDE5),
    .INIT_33(256'h474699D9501BF4A078C6DC30E6B6980E5758A9DADAEA9A3239332781FBAA6EA5),
    .INIT_34(256'hEAA83228224DB4B7B2CE2F8FC81B93273267EF3DCCCA228292F87AD049248F35),
    .INIT_35(256'hEF87903ABB5E7DD3042EAF6345EE4745B833C1108B5C5A1BD37D6F7701FF7BB8),
    .INIT_36(256'hF620A8263ACF82293575F35A5F243915E5718D3433339AA88B398B602BD27F40),
    .INIT_37(256'h1AFA3025A521C4F35A5512E1B6C1F9058805B8E5754CC540719BF48E3AC44EE6),
    .INIT_38(256'h7E5EA21CB9DC4E63E71C83DF2D1AFDCFC734412DFE73E44A3978CE1CF3BC82C4),
    .INIT_39(256'h0E8226D82F796B7405DC95AE48E663037FF8833429534376C521F68F9CAC8647),
    .INIT_3A(256'hC9E07EEA9BA975EAF0EEEC7F1CA2263D66DEE17DCBF25538725E5613A0296D38),
    .INIT_3B(256'h1EB4124923CD51D1A6765406FD281E31B70C39ADA60395D62A76B6BAA68C8E4C),
    .INIT_3C(256'h5BDDC07FDEEE3AAA0C8A08936D2DECB38BE3F206E4C9CC99FBCF733288A0A4BE),
    .INIT_3D(256'h62D80AF49FD03BE1E40EAED79F74C10BABD8D17B91D16E0CF04422D71686F4DF),
    .INIT_3E(256'hFD238EB113B9BD882A098EB3E08A4D5D7CD697C90E45795C634D0CCCE6AA22CE),
    .INIT_3F(256'h33873CEF20B106BE8C096948713CD69544B86DB07E4162016E395D5331501C66),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra[12:0],1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(addra_13_sn_1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1 
       (.I0(addra[13]),
        .O(addra_13_sn_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    addra_13_sp_1,
    clka,
    addra);
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  output addra_13_sp_1;
  input clka;
  input [13:0]addra;

  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [13:0]addra;
  wire addra_13_sn_1;
  wire clka;
  wire [15:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  assign addra_13_sp_1 = addra_13_sn_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h8A80371B346714D227BF934F3F41B0390D8C58E31B7B2D747B25890A68BE9DB6),
    .INIT_01(256'h05D6281EBBD039FBD16335C1B13FA9DBA6A06CDF0EB6535F89432DE8BB25B45B),
    .INIT_02(256'hE13713D474C1C8EB6667392C79C15BEB2189B145D2FE04347300901CCE4EB55F),
    .INIT_03(256'h7ED2EA2A8A427436DE4A35E04C227754E5BBF188C3AF3A49BE184C7622B675D7),
    .INIT_04(256'hB60CA0EE147111F113BCF952699B34614CB6D8D9532159B8DE0B50F908F4FCB0),
    .INIT_05(256'hC381998441BCD6DA3B7D0ECF28B627C545032FE96331ACEC066A4021A8F2AF4B),
    .INIT_06(256'h57858B34799EA1DDD8D4A7E41AB1EBCC9F3ED40D1E8A84C99232CFED1939914F),
    .INIT_07(256'h7B25890A68BE9DB6434F6817033CFABB8A046B0504522BBEACBC0CA116A15428),
    .INIT_08(256'h89432DE8BB25B45B8A80371B346714D227BF934F3F41B0390D8C58E31B7B2D74),
    .INIT_09(256'h7300901CCE4EB55F05D6281EBBD039FBD16335C1B13FA9DBA6A06CDF0EB6535F),
    .INIT_0A(256'hBE184C7622B675D7E13713D474C1C8EB6667392C79C15BEB2189B145D2FE0434),
    .INIT_0B(256'hDE0B50F908F4FCB07ED2EA2A8A427436DE4A35E04C227754E5BBF188C3AF3A49),
    .INIT_0C(256'h066A4021A8F2AF4BB60CA0EE147111F113BCF952699B34614CB6D8D9532159B8),
    .INIT_0D(256'h9232CFED1939914FC381998441BCD6DA3B7D0ECF28B627C545032FE96331ACEC),
    .INIT_0E(256'hACBC0CA116A1542857858B34799EA1DDD8D4A7E41AB1EBCC9F3ED40D1E8A84C9),
    .INIT_0F(256'h0D8C58E31B7B2D747B25890A68BE9DB6434F6817033CFABB8A046B0504522BBE),
    .INIT_10(256'hA6A06CDF0EB6535F89432DE8BB25B45B8A80371B346714D227BF934F3F41B039),
    .INIT_11(256'h2189B145D2FE04347300901CCE4EB55F05D6281EBBD039FBD16335C1B13FA9DB),
    .INIT_12(256'hE5BBF188C3AF3A49BE184C7622B675D7E13713D474C1C8EB6667392C79C15BEB),
    .INIT_13(256'h4CB6D8D9532159B8DE0B50F908F4FCB07ED2EA2A8A427436DE4A35E04C227754),
    .INIT_14(256'h45032FE96331ACEC066A4021A8F2AF4BB60CA0EE147111F113BCF952699B3461),
    .INIT_15(256'h9F3ED40D1E8A84C99232CFED1939914FC381998441BCD6DA3B7D0ECF28B627C5),
    .INIT_16(256'h8A046B0504522BBEACBC0CA116A1542857858B34799EA1DDD8D4A7E41AB1EBCC),
    .INIT_17(256'h27BF934F3F41B0390D8C58E31B7B2D747B25890A68BE9DB6434F6817033CFABB),
    .INIT_18(256'hD16335C1B13FA9DBA6A06CDF0EB6535F89432DE8BB25B45B8A80371B346714D2),
    .INIT_19(256'h6667392C79C15BEB2189B145D2FE04347300901CCE4EB55F05D6281EBBD039FB),
    .INIT_1A(256'hDE4A35E04C227754E5BBF188C3AF3A49BE184C7622B675D7E13713D474C1C8EB),
    .INIT_1B(256'h13BCF952699B34614CB6D8D9532159B8DE0B50F908F4FCB07ED2EA2A8A427436),
    .INIT_1C(256'h3B7D0ECF28B627C545032FE96331ACEC066A4021A8F2AF4BB60CA0EE147111F1),
    .INIT_1D(256'hD8D4A7E41AB1EBCC9F3ED40D1E8A84C99232CFED1939914FC381998441BCD6DA),
    .INIT_1E(256'h434F6817033CFABB8A046B0504522BBEACBC0CA116A1542857858B34799EA1DD),
    .INIT_1F(256'h8A80371B346714D227BF934F3F41B0390D8C58E31B7B2D747B25890A68BE9DB6),
    .INIT_20(256'h05D6281EBBD039FBD16335C1B13FA9DBA6A06CDF0EB6535F89432DE8BB25B45B),
    .INIT_21(256'hE13713D474C1C8EB6667392C79C15BEB2189B145D2FE04347300901CCE4EB55F),
    .INIT_22(256'h7ED2EA2A8A427436DE4A35E04C227754E5BBF188C3AF3A49BE184C7622B675D7),
    .INIT_23(256'hB60CA0EE147111F113BCF952699B34614CB6D8D9532159B8DE0B50F908F4FCB0),
    .INIT_24(256'hC381998441BCD6DA3B7D0ECF28B627C545032FE96331ACEC066A4021A8F2AF4B),
    .INIT_25(256'h57858B34799EA1DDD8D4A7E41AB1EBCC9F3ED40D1E8A84C99232CFED1939914F),
    .INIT_26(256'h7B25890A68BE9DB6434F6817033CFABB8A046B0504522BBEACBC0CA116A15428),
    .INIT_27(256'h89432DE8BB25B45B8A80371B346714D227BF934F3F41B0390D8C58E31B7B2D74),
    .INIT_28(256'h7300901CCE4EB55F05D6281EBBD039FBD16335C1B13FA9DBA6A06CDF0EB6535F),
    .INIT_29(256'hBE184C7622B675D7E13713D474C1C8EB6667392C79C15BEB2189B145D2FE0434),
    .INIT_2A(256'hDE0B50F908F4FCB07ED2EA2A8A427436DE4A35E04C227754E5BBF188C3AF3A49),
    .INIT_2B(256'h066A4021A8F2AF4BB60CA0EE147111F113BCF952699B34614CB6D8D9532159B8),
    .INIT_2C(256'h9232CFED1939914FC381998441BCD6DA3B7D0ECF28B627C545032FE96331ACEC),
    .INIT_2D(256'hACBC0CA116A1542857858B34799EA1DDD8D4A7E41AB1EBCC9F3ED40D1E8A84C9),
    .INIT_2E(256'h0D8C58E31B7B2D747B25890A68BE9DB6434F6817033CFABB8A046B0504522BBE),
    .INIT_2F(256'hA6A06CDF0EB6535F89432DE8BB25B45B8A80371B346714D227BF934F3F41B039),
    .INIT_30(256'h2189B145D2FE04347300901CCE4EB55F05D6281EBBD039FBD16335C1B13FA9DB),
    .INIT_31(256'hE5BBF188C3AF3A49BE184C7622B675D7E13713D474C1C8EB6667392C79C15BEB),
    .INIT_32(256'h4CB6D8D9532159B8DE0B50F908F4FCB07ED2EA2A8A427436DE4A35E04C227754),
    .INIT_33(256'h45032FE96331ACEC066A4021A8F2AF4BB60CA0EE147111F113BCF952699B3461),
    .INIT_34(256'h9F3ED40D1E8A84C99232CFED1939914FC381998441BCD6DA3B7D0ECF28B627C5),
    .INIT_35(256'h8A046B0504522BBEACBC0CA116A1542857858B34799EA1DDD8D4A7E41AB1EBCC),
    .INIT_36(256'h27BF934F3F41B0390D8C58E31B7B2D747B25890A68BE9DB6434F6817033CFABB),
    .INIT_37(256'hD16335C1B13FA9DBA6A06CDF0EB6535F89432DE8BB25B45B8A80371B346714D2),
    .INIT_38(256'h6667392C79C15BEB2189B145D2FE04347300901CCE4EB55F05D6281EBBD039FB),
    .INIT_39(256'hDE4A35E04C227754E5BBF188C3AF3A49BE184C7622B675D7E13713D474C1C8EB),
    .INIT_3A(256'h13BCF952699B34614CB6D8D9532159B8DE0B50F908F4FCB07ED2EA2A8A427436),
    .INIT_3B(256'h3B7D0ECF28B627C545032FE96331ACEC066A4021A8F2AF4BB60CA0EE147111F1),
    .INIT_3C(256'hD8D4A7E41AB1EBCC9F3ED40D1E8A84C99232CFED1939914FC381998441BCD6DA),
    .INIT_3D(256'h434F6817033CFABB8A046B0504522BBEACBC0CA116A1542857858B34799EA1DD),
    .INIT_3E(256'h8A80371B346714D227BF934F3F41B0390D8C58E31B7B2D747B25890A68BE9DB6),
    .INIT_3F(256'h0000000000000000000000C1B13FA9DBA6A06CDF0EB6535F89432DE8BB25B45B),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra[11:0],1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:4],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(addra_13_sn_1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__0 
       (.I0(addra[13]),
        .I1(addra[12]),
        .O(addra_13_sn_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized10
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [11:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h4249994F6929CD556F5846CC5C029D037A8D2E311F4AD6E19BB183704BC76C06),
    .INITP_01(256'h7A8D2E311F4AD6E19BDEB08D98B8053A3983B2FFBDBB82DC3F5D76D1DAC33789),
    .INITP_02(256'hDEA34B8C47D2B5B866EC60DC12F1DB01BD4697188FA56B70CDD8C1B825E3B603),
    .INITP_03(256'h8E60ECBFEF6EE0B70FD75DB476B0CDE250926653DA4A73555BD611B31700A740),
    .INITP_04(256'h00000000000000000016306E0978ED80DEA34B8C47D2B5B866F7AC23662E014E),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h3E90EA06A49390B74164E32AE72E1B2E88FBC130BB5AB31391A34FCFB222F212),
    .INIT_01(256'h5D5A076EA88E739B115E57FDBF80DBCB13B409DD098D410EE094A9E1C7F55B69),
    .INIT_02(256'h6F58E0D31BC36E42B26559EC1D7B29AB59224F2111C1CAD0F17C53C7459BAA42),
    .INIT_03(256'h12069B83630BA37A252D2808700CA339E1E87CB6432C1B1D2B7B6041A91A7492),
    .INIT_04(256'hDF0EC90DAB633687801FB1E7A65107C13D248598F524E35C1391A34FCFB222F2),
    .INIT_05(256'h07E2AA38A55D49558C2898CCE8A3E63E6F5A50EA2B5A59AFE1A2712DED0E2358),
    .INIT_06(256'hCE3C763468330CB3773EF6AE01B1724888D1046C39AFFBBB4059886D5A0F5A90),
    .INIT_07(256'h16E91DBF90F64A5F86D74106AE85081DF06A1CE79EAC7CDDCCCD371D2F542E33),
    .INIT_08(256'h86AA59907D947EB3B830B05E5661099AE282C6ECAF09EB00A56E884B9A8C2D48),
    .INIT_09(256'hEBE3B404F51FEEA5BFB73C8BD1A6F2957A4F56CB40ABB67F8FBE26B0DD936F07),
    .INIT_0A(256'h2D0FAFAABA129598E8FE6D862A6AB9901A4F6C2B5689ACD37B1E7BB3DC42F7D8),
    .INIT_0B(256'h15A30F4AB1BD1E9A877691415D72CB23319526F99189D720AE0020B849C53D20),
    .INIT_0C(256'hA2712DED0E2358DF0EC90DAB633687801FB1E7A65107C13D248598F524E35C42),
    .INIT_0D(256'h5D5A076EA88E739BE2AA38A55D49558C2898CCE8A3E63E6F5A50EA2B5A59AFE1),
    .INIT_0E(256'h6F58E0D31BC36E42B26559EC1D7B29AB59224F2111C1CAD0F17C53C7459BAA42),
    .INIT_0F(256'h12069B83630BA37A252D2808700CA339E1E87CB6432C1B1D2B7B6041A91A7492),
    .INIT_10(256'h693E90EA06A49390B74164E32AE72E1B2E88FBC130BB5AB31391A34FCFB222F2),
    .INIT_11(256'h425D5A076EA88E739B115E57FDBF80DBCB13B409DD098D410EE094A9E1C7F55B),
    .INIT_12(256'h926F58E0D31BC36E42B26559EC1D7B29AB59224F2111C1CAD0F17C53C7459BAA),
    .INIT_13(256'hF212069B83630BA37A252D2808700CA339E1E87CB6432C1B1D2B7B6041A91A74),
    .INIT_14(256'h5B693E90EA06A49390B74164E32AE72E1B2E88FBC130BB5AB31391A34FCFB222),
    .INIT_15(256'hAA425D5A076EA88E739B115E57FDBF80DBCB13B409DD098D410EE094A9E1C7F5),
    .INIT_16(256'h74926F58E0D31BC36E42B26559EC1D7B29AB59224F2111C1CAD0F17C53C7459B),
    .INIT_17(256'h22F212069B83630BA37A252D2808700CA339E1E87CB6432C1B1D2B7B6041A91A),
    .INIT_18(256'h2358DF0EC90DAB633687801FB1E7A65107C13D248598F524E35C1391A34FCFB2),
    .INIT_19(256'h5A9007E2AA38A55D49558C2898CCE8A3E63E6F5A50EA2B5A59AFE1A2712DED0E),
    .INIT_1A(256'h2E33CE3C763468330CB3773EF6AE01B1724888D1046C39AFFBBB4059886D5A0F),
    .INIT_1B(256'h2D4816E91DBF90F64A5F86D74106AE85081DF06A1CE79EAC7CDDCCCD371D2F54),
    .INIT_1C(256'h6F0786AA59907D947EB3B830B05E5661099AE282C6ECAF09EB00A56E884B9A8C),
    .INIT_1D(256'hF7D8EBE3B404F51FEEA5BFB73C8BD1A6F2957A4F56CB40ABB67F8FBE26B0DD93),
    .INIT_1E(256'h3D202D0FAFAABA129598E8FE6D862A6AB9901A4F6C2B5689ACD37B1E7BB3DC42),
    .INIT_1F(256'h5C4215A30F4AB1BD1E9A877691415D72CB23319526F99189D720AE0020B849C5),
    .INIT_20(256'hAFE1A2712DED0E2358DF0EC90DAB633687801FB1E7A65107C13D248598F524E3),
    .INIT_21(256'hAA425D5A076EA88E739BE2AA38A55D49558C2898CCE8A3E63E6F5A50EA2B5A59),
    .INIT_22(256'h74926F58E0D31BC36E42B26559EC1D7B29AB59224F2111C1CAD0F17C53C7459B),
    .INIT_23(256'h22F212069B83630BA37A252D2808700CA339E1E87CB6432C1B1D2B7B6041A91A),
    .INIT_24(256'hF55B693E90EA06A49390B74164E32AE72E1B2E88FBC130BB5AB31391A34FCFB2),
    .INIT_25(256'h485C1424402C2410082050115E57FDBF80DBCB13B409DD098D410EE094A9E1C7),
    .INIT_26(256'h7038603C70487C74304C20707C203C787C2860787854542C281C0804681C7814),
    .INIT_27(256'h2824607814581410381C0844383C2C70145038585C603834005C70083C0C6030),
    .INIT_28(256'h1070287408705474601C743C7C606C542C0C203430344C54641C38343038103C),
    .INIT_29(256'h6C002468107C180C20286C283C0C3C700C50502414786024205C24402C100068),
    .INIT_2A(256'h2C4C18547C08404C00143444347C3C487C40280024102048640060045044707C),
    .INIT_2B(256'h280C544C3C1424604870144C181C142C386434301C281C58482C7C686C0C603C),
    .INIT_2C(256'h5C704018102C784428201C3074583050280814744C68483C4448107000787C68),
    .INIT_2D(256'h68307050401C485868283014686C28684028380C6C2C3C1C1038646C6C041070),
    .INIT_2E(256'h7C10587C5C705C6864381C1824702030705C40387C28547C5C2C305C5C503800),
    .INIT_2F(256'h280C4804540058444C5044086874581C38541014747470682038201C2C646804),
    .INIT_30(256'h745C40582C60045C0460483470545044385C086840581C085C60542800002800),
    .INIT_31(256'h3464046018043C2474282C7C782478745C74745C1810504C34480070280C2C0C),
    .INIT_32(256'h703848787064004058484C545804747C4868542058283C300850004414503C20),
    .INIT_33(256'h586854740C70701420787C643C7C680C1C0034645C38146460280C7C70041C70),
    .INIT_34(256'h145C3C781818100C446414540C180870703C506C44742C20084460607C740C78),
    .INIT_35(256'h04407C40501C20785854306C546C2028246C20047C14647C183C047C70245020),
    .INIT_36(256'h587C7438386C50287834407C3468001860607820243060584C28080C785C740C),
    .INIT_37(256'h203444141438082C481C443C1C18101C303C1438642064707C503C246C340450),
    .INIT_38(256'h7428440020340418247C3C1844784C4024444C78006418542454405428443438),
    .INIT_39(256'h200C545C6460382850441434043470086828041C4038285C440C044458101008),
    .INIT_3A(256'h206C6C145810402C50683C504420600028480C242C342048107030740C2C7C7C),
    .INIT_3B(256'h7C205C38002420281C582C3004647C6840380C140C28547C785478586C30247C),
    .INIT_3C(256'h4C406C243044245C00340C1C30385068182C484C504860781848540C1010583C),
    .INIT_3D(256'h580C70286C780C7C00182C2868501814343030340C38342414100C0404300034),
    .INIT_3E(256'h647C247838643410004C10143C00086818687C2C14205C701454707C5874687C),
    .INIT_3F(256'h705C6C44501028007C70201C28441C4C44203458785820204460502060041060),
    .INIT_40(256'h2C00505C345C2868306810286840705004187800403844505C143C2024241864),
    .INIT_41(256'h34681C28381C28143C4834605808340C740020440C345830501C6000701C4424),
    .INIT_42(256'h24100C54785C040440445C18441840703434383C101C7C2860445C3010481054),
    .INIT_43(256'h78044C7C54347C34047C2000204434783C2848002C14347474547C3C38542C18),
    .INIT_44(256'h1008205030141450687C50045C38247C5C40247850606858585858004C504858),
    .INIT_45(256'h74304C20707C203C787C2860787854542C281C0804681C7814485C1424402C24),
    .INIT_46(256'h10381C0844383C2C70145038585C603834005C70083C0C60307038603C70487C),
    .INIT_47(256'h74601C743C7C606C542C0C203430344C54641C38343038103C28246078145814),
    .INIT_48(256'h0C20286C283C0C3C700C50502414786024205C24402C10006810702874087054),
    .INIT_49(256'h4C00143444347C3C487C40280024102048640060045044707C6C002468107C18),
    .INIT_4A(256'h604870144C181C142C386434301C281C58482C7C686C0C603C2C4C18547C0840),
    .INIT_4B(256'h4428201C3074583050280814744C68483C4448107000787C68280C544C3C1424),
    .INIT_4C(256'h5868283014686C28684028380C6C2C3C1C1038646C6C0410705C704018102C78),
    .INIT_4D(256'h6864381C1824702030705C40387C28547C5C2C305C5C50380068307050401C48),
    .INIT_4E(256'h444C5044086874581C38541014747470682038201C2C6468047C10587C5C705C),
    .INIT_4F(256'h5C0460483470545044385C086840581C085C60542800002800280C4804540058),
    .INIT_50(256'h2474282C7C782478745C74745C1810504C34480070280C2C0C745C40582C6004),
    .INIT_51(256'h4058484C545804747C4868542058283C300850004414503C203464046018043C),
    .INIT_52(256'h1420787C643C7C680C1C0034645C38146460280C7C70041C7070384878706400),
    .INIT_53(256'h0C446414540C180870703C506C44742C20084460607C740C78586854740C7070),
    .INIT_54(256'h785854306C546C2028246C20047C14647C183C047C70245020145C3C78181810),
    .INIT_55(256'h287834407C3468001860607820243060584C28080C785C740C04407C40501C20),
    .INIT_56(256'h2C481C443C1C18101C303C1438642064707C503C246C340450587C7438386C50),
    .INIT_57(256'h18247C3C1844784C4024444C7800641854245440542844343820344414143808),
    .INIT_58(256'h2850441434043470086828041C4038285C440C04445810100874284400203404),
    .INIT_59(256'h2C50683C504420600028480C242C342048107030740C2C7C7C200C545C646038),
    .INIT_5A(256'h281C582C3004647C6840380C140C28547C785478586C30247C206C6C14581040),
    .INIT_5B(256'h5C00340C1C30385068182C484C504860781848540C1010583C7C205C38002420),
    .INIT_5C(256'h7C00182C2868501814343030340C38342414100C04043000344C406C24304424),
    .INIT_5D(256'h10004C10143C00086818687C2C14205C701454707C5874687C580C70286C780C),
    .INIT_5E(256'h007C70201C28441C4C44203458785820204460502060041060647C2478386434),
    .INIT_5F(256'h68306810286840705004187800403844505C143C2024241864705C6C44501028),
    .INIT_60(256'h143C4834605808340C740020440C345830501C6000701C44242C00505C345C28),
    .INIT_61(256'h0440445C18441840703434383C101C7C2860445C301048105434681C28381C28),
    .INIT_62(256'h34047C2000204434783C2848002C14347474547C3C38542C1824100C54785C04),
    .INIT_63(256'h50687C50045C38247C5C40247850606858585858004C50485878044C7C54347C),
    .INIT_64(256'h3C787C2860787854542C281C0804681C7814485C1424402C2410082050301414),
    .INIT_65(256'h2C70145038585C603834005C70083C0C60307038603C70487C74304C20707C20),
    .INIT_66(256'h6C542C0C203430344C54641C38343038103C2824607814581410381C0844383C),
    .INIT_67(256'h3C700C50502414786024205C24402C1000681070287408705474601C743C7C60),
    .INIT_68(256'h3C487C40280024102048640060045044707C6C002468107C180C20286C283C0C),
    .INIT_69(256'h142C386434301C281C58482C7C686C0C603C2C4C18547C08404C00143444347C),
    .INIT_6A(256'h3050280814744C68483C4448107000787C68280C544C3C1424604870144C181C),
    .INIT_6B(256'h28684028380C6C2C3C1C1038646C6C0410705C704018102C784428201C307458),
    .INIT_6C(256'h2030705C40387C28547C5C2C305C5C50380068307050401C485868283014686C),
    .INIT_6D(256'h581C38541014747470682038201C2C6468047C10587C5C705C6864381C182470),
    .INIT_6E(256'h5044385C086840581C085C60542800002800280C4804540058444C5044086874),
    .INIT_6F(256'h78745C74745C1810504C34480070280C2C0C745C40582C60045C046048347054),
    .INIT_70(256'h747C4868542058283C300850004414503C203464046018043C2474282C7C7824),
    .INIT_71(256'h680C1C0034645C38146460280C7C70041C70703848787064004058484C545804),
    .INIT_72(256'h0870703C506C44742C20084460607C740C78586854740C70701420787C643C7C),
    .INIT_73(256'h2028246C20047C14647C183C047C70245020145C3C781818100C446414540C18),
    .INIT_74(256'h001860607820243060584C28080C785C740C04407C40501C20785854306C546C),
    .INIT_75(256'h101C303C1438642064707C503C246C340450587C7438386C50287834407C3468),
    .INIT_76(256'h4C4024444C78006418542454405428443438203444141438082C481C443C1C18),
    .INIT_77(256'h70086828041C4038285C440C0444581010087428440020340418247C3C184478),
    .INIT_78(256'h600028480C242C342048107030740C2C7C7C200C545C64603828504414340434),
    .INIT_79(256'h7C6840380C140C28547C785478586C30247C206C6C145810402C50683C504420),
    .INIT_7A(256'h5068182C484C504860781848540C1010583C7C205C38002420281C582C300464),
    .INIT_7B(256'h1814343030340C38342414100C04043000344C406C243044245C00340C1C3038),
    .INIT_7C(256'h086818687C2C14205C701454707C5874687C580C70286C780C7C00182C286850),
    .INIT_7D(256'h1C4C44203458785820204460502060041060647C247838643410004C10143C00),
    .INIT_7E(256'h705004187800403844505C143C2024241864705C6C44501028007C70201C2844),
    .INIT_7F(256'h340C740020440C345830501C6000701C44242C00505C345C2868306810286840),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized11
   (DOADO,
    DOPADOP,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [11:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h40703434383C101C7C2860445C301048105434681C28381C28143C4834605808),
    .INIT_01(256'h34783C2848002C14347474547C3C38542C1824100C54785C040440445C184418),
    .INIT_02(256'h247C5C40247850606858585858004C50485878044C7C54347C34047C20002044),
    .INIT_03(256'h740C04407C40501C20785854306C546C2028246C200430141450687C50045C38),
    .INIT_04(256'h0450587C7438386C50287834407C3468001860607820243060584C28080C785C),
    .INIT_05(256'h3438203444141438082C481C443C1C18101C303C1438642064707C503C246C34),
    .INIT_06(256'h10087428440020340418247C3C1844784C4024444C7800641854245440542844),
    .INIT_07(256'h7C7C200C545C6460382850441434043470086828041C4038285C440C04445810),
    .INIT_08(256'h247C206C6C145810402C50683C504420600028480C242C342048107030740C2C),
    .INIT_09(256'h583C7C205C38002420281C582C3004647C6840380C140C28547C785478586C30),
    .INIT_0A(256'h00344C406C243044245C00340C1C30385068182C484C504860781848540C1010),
    .INIT_0B(256'h687C580C70286C780C7C00182C2868501814343030340C38342414100C040430),
    .INIT_0C(256'h1060647C247838643410004C10143C00086818687C2C14205C701454707C5874),
    .INIT_0D(256'h1864705C6C44501028007C70201C28441C4C4420345878582020446050206004),
    .INIT_0E(256'h44242C00505C345C2868306810286840705004187800403844505C143C202424),
    .INIT_0F(256'h105434681C28381C28143C4834605808340C740020440C345830501C6000701C),
    .INIT_10(256'h2C1824100C54785C040440445C18441840703434383C101C7C2860445C301048),
    .INIT_11(256'h485878044C7C54347C34047C2000204434783C2848002C14347474547C3C3854),
    .INIT_12(256'h2028246C200430141450687C50045C38247C5C40247850606858585858004C50),
    .INIT_13(256'h001860607820243060584C28080C785C740C04407C40501C20785854306C546C),
    .INIT_14(256'h101C303C1438642064707C503C246C340450587C7438386C50287834407C3468),
    .INIT_15(256'h4C4024444C78006418542454405428443438203444141438082C481C443C1C18),
    .INIT_16(256'h70086828041C4038285C440C0444581010087428440020340418247C3C184478),
    .INIT_17(256'h600028480C242C342048107030740C2C7C7C200C545C64603828504414340434),
    .INIT_18(256'h7C6840380C140C28547C785478586C30247C206C6C145810402C50683C504420),
    .INIT_19(256'h5068182C484C504860781848540C1010583C7C205C38002420281C582C300464),
    .INIT_1A(256'h1814343030340C38342414100C04043000344C406C243044245C00340C1C3038),
    .INIT_1B(256'h086818687C2C14205C701454707C5874687C580C70286C780C7C00182C286850),
    .INIT_1C(256'h1C4C44203458785820204460502060041060647C247838643410004C10143C00),
    .INIT_1D(256'h705004187800403844505C143C2024241864705C6C44501028007C70201C2844),
    .INIT_1E(256'h340C740020440C345830501C6000701C44242C00505C345C2868306810286840),
    .INIT_1F(256'h40703434383C101C7C2860445C301048105434681C28381C28143C4834605808),
    .INIT_20(256'h34783C2848002C14347474547C3C38542C1824100C54785C040440445C184418),
    .INIT_21(256'h247C5C40247850606858585858004C50485878044C7C54347C34047C20002044),
    .INIT_22(256'h740C04407C40501C20785854306C546C2028246C200430141450687C50045C38),
    .INIT_23(256'h0450587C7438386C50287834407C3468001860607820243060584C28080C785C),
    .INIT_24(256'h3438203444141438082C481C443C1C18101C303C1438642064707C503C246C34),
    .INIT_25(256'h10087428440020340418247C3C1844784C4024444C7800641854245440542844),
    .INIT_26(256'h7C7C200C545C6460382850441434043470086828041C4038285C440C04445810),
    .INIT_27(256'h247C206C6C145810402C50683C504420600028480C242C342048107030740C2C),
    .INIT_28(256'h583C7C205C38002420281C582C3004647C6840380C140C28547C785478586C30),
    .INIT_29(256'h00344C406C243044245C00340C1C30385068182C484C504860781848540C1010),
    .INIT_2A(256'h687C580C70286C780C7C00182C2868501814343030340C38342414100C040430),
    .INIT_2B(256'h1060647C247838643410004C10143C00086818687C2C14205C701454707C5874),
    .INIT_2C(256'h1864705C6C44501028007C70201C28441C4C4420345878582020446050206004),
    .INIT_2D(256'h44242C00505C345C2868306810286840705004187800403844505C143C202424),
    .INIT_2E(256'h105434681C28381C28143C4834605808340C740020440C345830501C6000701C),
    .INIT_2F(256'h2C1824100C54785C040440445C18441840703434383C101C7C2860445C301048),
    .INIT_30(256'h485878044C7C54347C34047C2000204434783C2848002C14347474547C3C3854),
    .INIT_31(256'h2028246C200430141450687C50045C38247C5C40247850606858585858004C50),
    .INIT_32(256'h001860607820243060584C28080C785C740C04407C40501C20785854306C546C),
    .INIT_33(256'h101C303C1438642064707C503C246C340450587C7438386C50287834407C3468),
    .INIT_34(256'h4C4024444C78006418542454405428443438203444141438082C481C443C1C18),
    .INIT_35(256'h70086828041C4038285C440C0444581010087428440020340418247C3C184478),
    .INIT_36(256'h600028480C242C342048107030740C2C7C7C200C545C64603828504414340434),
    .INIT_37(256'h7C6840380C140C28547C785478586C30247C206C6C145810402C50683C504420),
    .INIT_38(256'h5068182C484C504860781848540C1010583C7C205C38002420281C582C300464),
    .INIT_39(256'h1814343030340C38342414100C04043000344C406C243044245C00340C1C3038),
    .INIT_3A(256'h086818687C2C14205C701454707C5874687C580C70286C780C7C00182C286850),
    .INIT_3B(256'h1C4C44203458785820204460502060041060647C247838643410004C10143C00),
    .INIT_3C(256'h705004187800403844505C143C2024241864705C6C44501028007C70201C2844),
    .INIT_3D(256'h340C740020440C345830501C6000701C44242C00505C345C2868306810286840),
    .INIT_3E(256'h40703434383C101C7C2860445C301048105434681C28381C28143C4834605808),
    .INIT_3F(256'h34783C2848002C14347474547C3C38542C1824100C54785C040440445C184418),
    .INIT_40(256'h247C5C40247850606858585858004C50485878044C7C54347C34047C20002044),
    .INIT_41(256'h740C04407C40501C20785854306C546C2028246C200430141450687C50045C38),
    .INIT_42(256'h0450587C7438386C50287834407C3468001860607820243060584C28080C785C),
    .INIT_43(256'h3438203444141438082C481C443C1C18101C303C1438642064707C503C246C34),
    .INIT_44(256'h10087428440020340418247C3C1844784C4024444C7800641854245440542844),
    .INIT_45(256'h7C7C200C545C6460382850441434043470086828041C4038285C440C04445810),
    .INIT_46(256'h247C206C6C145810402C50683C504420600028480C242C342048107030740C2C),
    .INIT_47(256'h583C7C205C38002420281C582C3004647C6840380C140C28547C785478586C30),
    .INIT_48(256'h00344C406C243044245C00340C1C30385068182C484C504860781848540C1010),
    .INIT_49(256'h687C580C70286C780C7C00182C2868501814343030340C38342414100C040430),
    .INIT_4A(256'h1060647C247838643410004C10143C00086818687C2C14205C701454707C5874),
    .INIT_4B(256'h1864705C6C44501028007C70201C28441C4C4420345878582020446050206004),
    .INIT_4C(256'h44242C00505C345C2868306810286840705004187800403844505C143C202424),
    .INIT_4D(256'h105434681C28381C28143C4834605808340C740020440C345830501C6000701C),
    .INIT_4E(256'h2C1824100C54785C040440445C18441840703434383C101C7C2860445C301048),
    .INIT_4F(256'h485878044C7C54347C34047C2000204434783C2848002C14347474547C3C3854),
    .INIT_50(256'h2028246C200430141450687C50045C38247C5C40247850606858585858004C50),
    .INIT_51(256'h001860607820243060584C28080C785C740C04407C40501C20785854306C546C),
    .INIT_52(256'h101C303C1438642064707C503C246C340450587C7438386C50287834407C3468),
    .INIT_53(256'h4C4024444C78006418542454405428443438203444141438082C481C443C1C18),
    .INIT_54(256'h70086828041C4038285C440C0444581010087428440020340418247C3C184478),
    .INIT_55(256'h600028480C242C342048107030740C2C7C7C200C545C64603828504414340434),
    .INIT_56(256'h7C6840380C140C28547C785478586C30247C206C6C145810402C50683C504420),
    .INIT_57(256'h5068182C484C504860781848540C1010583C7C205C38002420281C582C300464),
    .INIT_58(256'h1814343030340C38342414100C04043000344C406C243044245C00340C1C3038),
    .INIT_59(256'h086818687C2C14205C701454707C5874687C580C70286C780C7C00182C286850),
    .INIT_5A(256'h1C4C44203458785820204460502060041060647C247838643410004C10143C00),
    .INIT_5B(256'h705004187800403844505C143C2024241864705C6C44501028007C70201C2844),
    .INIT_5C(256'h340C740020440C345830501C6000701C44242C00505C345C2868306810286840),
    .INIT_5D(256'h40703434383C101C7C2860445C301048105434681C28381C28143C4834605808),
    .INIT_5E(256'h34783C2848002C14347474547C3C38542C1824100C54785C040440445C184418),
    .INIT_5F(256'h247C5C40247850606858585858004C50485878044C7C54347C34047C20002044),
    .INIT_60(256'h740C04407C40501C20785854306C546C2028246C200430141450687C50045C38),
    .INIT_61(256'h0450587C7438386C50287834407C3468001860607820243060584C28080C785C),
    .INIT_62(256'h3438203444141438082C481C443C1C18101C303C1438642064707C503C246C34),
    .INIT_63(256'h10087428440020340418247C3C1844784C4024444C7800641854245440542844),
    .INIT_64(256'h7C7C200C545C6460382850441434043470086828041C4038285C440C04445810),
    .INIT_65(256'h247C206C6C145810402C50683C504420600028480C242C342048107030740C2C),
    .INIT_66(256'h583C7C205C38002420281C582C3004647C6840380C140C28547C785478586C30),
    .INIT_67(256'h00344C406C243044245C00340C1C30385068182C484C504860781848540C1010),
    .INIT_68(256'h687C580C70286C780C7C00182C2868501814343030340C38342414100C040430),
    .INIT_69(256'h1060647C247838643410004C10143C00086818687C2C14205C701454707C5874),
    .INIT_6A(256'h1864705C6C44501028007C70201C28441C4C4420345878582020446050206004),
    .INIT_6B(256'h44242C00505C345C2868306810286840705004187800403844505C143C202424),
    .INIT_6C(256'h105434681C28381C28143C4834605808340C740020440C345830501C6000701C),
    .INIT_6D(256'h2C1824100C54785C040440445C18441840703434383C101C7C2860445C301048),
    .INIT_6E(256'h485878044C7C54347C34047C2000204434783C2848002C14347474547C3C3854),
    .INIT_6F(256'h2028246C200430141450687C50045C38247C5C40247850606858585858004C50),
    .INIT_70(256'h001860607820243060584C28080C785C740C04407C40501C20785854306C546C),
    .INIT_71(256'h101C303C1438642064707C503C246C340450587C7438386C50287834407C3468),
    .INIT_72(256'h4C4024444C78006418542454405428443438203444141438082C481C443C1C18),
    .INIT_73(256'h70086828041C4038285C440C0444581010087428440020340418247C3C184478),
    .INIT_74(256'h600028480C242C342048107030740C2C7C7C200C545C64603828504414340434),
    .INIT_75(256'h7C6840380C140C28547C785478586C30247C206C6C145810402C50683C504420),
    .INIT_76(256'h5068182C484C504860781848540C1010583C7C205C38002420281C582C300464),
    .INIT_77(256'h1814343030340C38342414100C04043000344C406C243044245C00340C1C3038),
    .INIT_78(256'h086818687C2C14205C701454707C5874687C580C70286C780C7C00182C286850),
    .INIT_79(256'h1C4C44203458785820204460502060041060647C247838643410004C10143C00),
    .INIT_7A(256'h705004187800403844505C143C2024241864705C6C44501028007C70201C2844),
    .INIT_7B(256'h340C740020440C345830501C6000701C44242C00505C345C2868306810286840),
    .INIT_7C(256'h40703434383C101C7C2860445C301048105434681C28381C28143C4834605808),
    .INIT_7D(256'h34783C2848002C14347474547C3C38542C1824100C54785C040440445C184418),
    .INIT_7E(256'h247C5C40247850606858585858004C50485878044C7C54347C34047C20002044),
    .INIT_7F(256'h0000000000000000000000000000000000000000000030141450687C50045C38),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ,
    addra);
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ;
  input [12:0]addra;

  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ;
  wire [12:0]addra;
  wire clka;
  wire [15:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hB21D7D858700C6E5D8E34B5AC59BC2BC262C3DF884051F0D740CA94C5D7D5F03),
    .INIT_01(256'h421B51D76559FC294F13DBB06BBBEAF2A24EB7B11FADCC590339FF38B623D53F),
    .INIT_02(256'hB6779FC8EC2D600AAF918AD06E82AFEB5262B3392CE65F682A063CA498F08B7E),
    .INIT_03(256'h1AB47A7CCE6A32028A9AD8C9244BB6843E1B65212B2A20797DA1DF90E5C9169C),
    .INIT_04(256'hA2857004B3802CF249AC4F827950DF61F791CBC36F77905B7E04E11E76FBD550),
    .INIT_05(256'h04BF9CF8D4DD601B8A257963FC4C2EB4195EA659A52C35A355F1DAE9CA41989C),
    .INIT_06(256'h812FE416E79F2A5D8CB7CC5BD95D2B25BBEE0DEC574B18F5B91A92141A24789A),
    .INIT_07(256'hA04BF905B9E7CA97632DF316F6574AC96EFB837B15D2C63D6E46A48506891E26),
    .INIT_08(256'h6812FE416E79F2A5D8CB7CC5BD95D2B25BBEE0DEC574B18F5B91A92141A24789),
    .INIT_09(256'h9A04BF905B9E7CA97632DF316F6574AC96EFB837B15D2C63D6E46A48506891E2),
    .INIT_0A(256'h26812FE416E79F2A5D8CB7CC5BD95D2B25BBEE0DEC574B18F5B91A92141A2478),
    .INIT_0B(256'h89A04BF905B9E7CA97632DF316F6574AC96EFB837B15D2C63D6E46A48506891E),
    .INIT_0C(256'hE26812FE416E79F2A5D8CB7CC5BD95D2B25BBEE0DEC574B18F5B91A92141A247),
    .INIT_0D(256'h789A04BF905B9E7CA97632DF316F6574AC96EFB837B15D2C63D6E46A48506891),
    .INIT_0E(256'h5BD95D2B2416E79F2A5D8CB7CC5BD95D2B25BBEE0DEC574B18F5B91A92141A24),
    .INIT_0F(256'h16F6574AC96EFB837B15D2C73D6E46A48506891E26812FE416E79F2A5D8CB7CC),
    .INIT_10(256'hC5BD95D2B25BBEE0DEC574B18F5B91A92141A24789A04BF905B9E7CA97632DF3),
    .INIT_11(256'hD6E46A48506891E26812FE416E79F2A5D8CB7CC5BD95D2B2416F79F2A5D8CB7C),
    .INIT_12(256'hF5B91A92141A247B9A04BF905B9E7CA97632DF316F6574AC96EFB837B15D2C63),
    .INIT_13(256'h6EC1AEEFABCA893ADEC47EB416E79F2A5D8CB7CC5BD95D2B25BBEE0DEC574B18),
    .INIT_14(256'h2B41BA0ABFAD498ACCE4B3997DA0A818F29263C22DF9086D475D9565F0A53C4F),
    .INIT_15(256'hF13DBB06BBBEAF2A24EB7B11FAD5F6877E4397245A72D9DE7F23B0B5802ABE46),
    .INIT_16(256'hF918AD06E82AFEB5262B3392CE65F682A063CA498F08B7E421B51D765597C294),
    .INIT_17(256'h0A53C4F6EC1AEEFABCA893ADEC47EB57DA1DF90E5C9169CB6779FC8EC2D600AA),
    .INIT_18(256'h02ABE462B41BA0ABFAD498ACCE4B3997DA0A818F29263C22DF9086D475D9565F),
    .INIT_19(256'h6A48506891E26812FE416E79F2A5D8CB7C5F6877E4397245A72D9DE7F23B0B58),
    .INIT_1A(256'h1A92141A24789A04BF905B9E7CA97632DF316F6574AC96EFB837B15D2C63D6E4),
    .INIT_1B(256'h46A48506891E26812FE416E79F2A5D8CB7CC5BD95D2B25BBEE0DEC574B18F5B9),
    .INIT_1C(256'hF0A53C4F6EC1AEEFABCA893ADEC47EB57DA1DF90E5C9169CB6779FC8EC263D6E),
    .INIT_1D(256'h802ABE462B41BA0ABFAD498ACCE4B3997DA0A818F29263C22DF9086D475D9565),
    .INIT_1E(256'h46A48506891E26812FE416E79F2A5D8CB7C5F6877E4397245A72D9DE7F23B0B5),
    .INIT_1F(256'h91A92141A24789A04BF905B9E7CA97632DF316F6574AC96EFB837B15D2C63D6E),
    .INIT_20(256'hE46A48506891E26812FE416E79F2A5D8CB7CC5BD95D2B25BBEE0DEC574B18F5B),
    .INIT_21(256'h5F0A53C4F6EC1AEEFABCA893ADEC47EB57DA1DF90E5C9169CB6779FC8EC263D6),
    .INIT_22(256'h5802ABE462B41BA0ABFAD498ACCE4B3997DA0A818F29263C22DF9086D475D956),
    .INIT_23(256'hE46A48506891E26812FE416E79F2A5D8CB7C5F6877E4397245A72D9DE7F23B0B),
    .INIT_24(256'hB91A92141A24789A04BF905B9E7CA97632DF316F6574AC96EFB837B15D2C63D6),
    .INIT_25(256'h6E46A48506891E26812FE416E79F2A5D8CB7CC5BD95D2B25BBEE0DEC574B18F5),
    .INIT_26(256'h65F0A53C4F6EC1AEEFABCA893ADEC47EB57DA1DF90E5C9169CB6779FC8EC263D),
    .INIT_27(256'hB5802ABE462B41BA0ABFAD498ACCE4B3997DA0A818F29263C22DF9086D475D95),
    .INIT_28(256'h6E46A48506891E26812FE416E79F2A5D8CB7C5F6877E4397245A72D9DE7F23B0),
    .INIT_29(256'h9993C37635041065024FF25DE3B5EBB3A0BAFF16F6574AC96EFB837B15D2C63D),
    .INIT_2A(256'hD97E551ACB92B3CAAD3C75ED381731E1A0C5B98210EB9006AC5DBD8074576EB6),
    .INIT_2B(256'h389CC514FC76F203D53E6DE74D05254954A31921A8D3D6C6D437CC479FEAC04D),
    .INIT_2C(256'hED6176D8468E9A7056E6D6223CE10275E66217037C866BEA00DB0FE52875331C),
    .INIT_2D(256'h10D5CEE55236C6E0A85CF114083F7971D23AC2EC4142B314B619BEF392E748D1),
    .INIT_2E(256'h38F140C0BE46A1479EE406AF24E2DF87CE2A451F61C7055DACACB26B275095DC),
    .INIT_2F(256'h9A16B8FED9D28EFB3D33A9E80FF2287C8A94BDE273F291D503E40BF1640ACB69),
    .INIT_30(256'h43EA196A812151C1B8734823B6C263561A26BB9476103EAA161142BBB3818525),
    .INIT_31(256'h6F601D15DBADA664F0DD8D4104194093FC9778ED7AECE82EBFC83AE987F3947A),
    .INIT_32(256'hF311E7FAB013765F9546B2E4ACF2AB4F1D7B4E05CC7868316E60843AE401AB17),
    .INIT_33(256'hC3F94A1D4CC70E2731453F1DBC80F54F9B79D34149525528C6486A34F5B1B50D),
    .INIT_34(256'h6FBCE4B9D2347B585DB611A3A69C15B9B5888F38409D799885C0DF219AFA8036),
    .INIT_35(256'h2C9AC9D42577043573B9548DB1B82A173C45020FDE5C748EB0BB1050ACC52D86),
    .INIT_36(256'h02FC5902B2DA4E3C50302F91A851E7B901ABC938B7E1F38A9147D871C1576B2B),
    .INIT_37(256'h50AEECE061496685AE3FB674A3BECF4CEA7A03FC8A1F22A52F789CFCA47540F9),
    .INIT_38(256'h0EBA61FCE51E90FA865AA04854706E1CD208EDB098D58689AEE51D840FAA8584),
    .INIT_39(256'h210EB9006AC5DBD8074576EB69993C37635041065024FF25DE3B5EBB3A0BAFF2),
    .INIT_3A(256'h1A8D3D6C6D437CC479FEAC04DD97E551ACB92B3CAAD3C75ED381731E1A0C5B98),
    .INIT_3B(256'h37C866BEA00DB0FE52875331C389CC514FC76F203D53E6DE74D05254954A3192),
    .INIT_3C(256'hC4142B314B619BEF392E748D1ED6176D8468E9A7056E6D6223CE10275E662170),
    .INIT_3D(256'hF61C7055DACACB26B275095DC10D5CEE55236C6E0A85CF114083F7971D23AC2E),
    .INIT_3E(256'h273F291D503E40BF1640ACB6938F140C0BE46A1479EE406AF24E2DF87CE2A451),
    .INIT_3F(256'h476103EAA161142BBB38185259A16B8FED9D28EFB3D33A9E80FF2287C8A94BDE),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h439CD14F676231D062A2AABF213F82761838A0651563E9D199D44F367D9DA9D8),
    .INITP_01(256'h8710A4ECB3EFA152CA010646083C4AD1127F1EBD59F560433574320253C0A5A0),
    .INITP_02(256'h0D4C2C2C8DC05B59EE72239577576E29F6C8E3EC464F5158623A1C0D13569648),
    .INITP_03(256'h035717D54739E3AACE66ABBA883A4B1806AE2FAA8E73C7559CCD577510749630),
    .INITP_04(256'h00D5C5F551CE78EAB399AAEEA20E92C601AB8BEAA39CF1D5673355DD441D258C),
    .INITP_05(256'hC035717D54739E3AACE66ABBA883A4B1806AE2FAA8E73C7559CCD57751074963),
    .INITP_06(256'h300D5C5F551CE78EAB399AAEEA20E92C601AB8BEAA39CF1D5673355DD441D258),
    .INITP_07(256'h9E3AACE66ABAA883A4B1806AE2FAA8E73C754E2FAA8E73C7559CCD5775107496),
    .INITP_08(256'hA20E92C601AB8BEAA39CF1D539BEAA39CF1D5673355DD441D258C035717D5473),
    .INITP_09(256'hC463A0C54554E2FAA8E73C7559CCD5775107496300D5C5F551CE78EAB399AAEE),
    .INITP_0A(256'h9D88C7418A8AA8107895A224FE3D7AB3EAC0866AE86404A7814B408739A39ECE),
    .INITP_0B(256'h7B3B118E8315155020F12B4449FC7AF567D5810CD5D0C8094F0296810E73473D),
    .INITP_0C(256'h0E92C601AB8BEAA39041E2568893F8F5EACFAB0219ABA190129E052D021CE68E),
    .INITP_0D(256'h83A4B1806AE2FAA8E73C7559CCD5775107496300D5C5F551CE78EAB399AAEEA2),
    .INITP_0E(256'h7AB3EAC0866AE86404A7814B408739A39ECEC463A0C54554083C4AD1127F1FA8),
    .INITP_0F(256'h41D258C035717D54739E3AACE66ABBA883A4B1806AE2FAA8E4107895A224FE3D),
    .INIT_00(256'hA6DED82C55141EA3FBD9EE9FEF83D84683E922B8D9713F3A2A0D7ACCCD000001),
    .INIT_01(256'hA33E3BC0EF6CDF0B3139D02DA6EEBEF829A768EFC9D9057D69911AE8204D7907),
    .INIT_02(256'h64F9B6175062A84E404ABBA9F9ECD8102045ABF4E0AFDA5E65EBB04D422C2711),
    .INIT_03(256'hDA8321F39A33A364A05DB7C60492031A48FF0E0A0000163AA5A6ACB8DC492B09),
    .INIT_04(256'h5BBDCB2A49D80460B88DB7EEB80A744FD7FF40D2B4BCBC81CF6EA1EA530EE999),
    .INIT_05(256'h352DFAC80CB0150BB2795C816A1C8EC58D8DFBC4EA64AF50B55126ABE9A79A12),
    .INIT_06(256'hE2179B08EB1D18DA54E35C040C7894CF6398B0F5B9CA399602007CD9B5AFFED8),
    .INIT_07(256'h9AE7447D2ED056915AC8E1B39D53CF02F048D91B3D894EFE0777BC7156EBB904),
    .INIT_08(256'h460747CB54B05ADF95A11CED869D57DD22F07F4A68B71FECBADA4F526EF549EE),
    .INIT_09(256'h518994DD6088A0403EA13A188A9EDB6A7D1E655BFCF4A17EFBCBBDDDD5D66199),
    .INIT_0A(256'h009ED770491C4697B20E80C84F4A5495F683BD26F1CD83A6941F86922249050F),
    .INIT_0B(256'h70116BDFBB07D7C8B0568C3AA0C56C255AC708615DF6837377D3F3A6EC654262),
    .INIT_0C(256'hBDB9E6F2FBA5B3DE35C982F4CD14D81C73437B3E45E65DF79EBB2B46AA0280C9),
    .INIT_0D(256'h6965B384E938726D5C9E0537156FC5DDAEFF3F3282D2AAAB158EC8D30C1B3F5D),
    .INIT_0E(256'h8AB836E306EB96F24FDF154625ACD72959436EF45837274123BD50A040DC8EDE),
    .INIT_0F(256'hBAC4D6682ABA3D5989CBDC72A0B050BF52AF78080B51E85F2884062DFD7B86AE),
    .INIT_10(256'hDC78A0E257F74A77CAE726050DBA5FFCAA7AA24B9585A77AFD1637399BB5CD0E),
    .INIT_11(256'h8A5FD2231908130B9261A124A8A70F9C82FFAA00BFA66F41A88C0F9B596892A6),
    .INIT_12(256'hF0F77F10E785A70AC128701EA72452D350218448FAFBB3E899D188819D3E3E09),
    .INIT_13(256'h959DBA6430B5E79030A267E3B47EE51507D528E004986AA7B08AC3BCB764B468),
    .INIT_14(256'hF88EF3BF731E0D22CF3815681450C14FBDE556F6B9AEEE6673200D9C73AE92EC),
    .INIT_15(256'h26B52952556A4B859C34A1DC1A68CEF460FE8AA23F45CE592051E5D25AF7DBDB),
    .INIT_16(256'hE950CFEA9DE30023EECCD52F3194EE9655D3632636B2F3844F2A98176D2B0870),
    .INIT_17(256'hFD8F757D2E79A11CC959267FE7A7679846051FD16D444467ABE9700E615040C8),
    .INIT_18(256'h3BE6A07781E455D28AE4D92F737DFEFBF16EC0A6DDB88B93FA73D5079A8B8ACA),
    .INIT_19(256'h2EB5E7278765732B219BED2598FB07B772279B3184BEF57FF01296F7F2D87A4B),
    .INIT_1A(256'hF4640A6176DCDA0EA9BB6E733C7DF2C4E40E66B0DB129927A59889F0481049D4),
    .INIT_1B(256'hCAFD8F757D2E79A11CC959ADC02FB685FBF34C8F0B6CAF29E4C074721245DAB6),
    .INIT_1C(256'h4B3BE6A07781E455D28AE4D92F737DFEFBF16EC0A6DDB88B93FA73D5079A8B8A),
    .INIT_1D(256'hD42EB5E7278765732B219BED2598FB07B772279B3184BEF57FF01296F7F2D87A),
    .INIT_1E(256'hB6F4640A6176DCDA0EA9BB6E733C7DF2C4E40E66B0DB129927A59889F0481049),
    .INIT_1F(256'h8ACAFD8F757D2E79A11CC959ADC02FB685FBF34C8F0B6CAF29E4C074721245DA),
    .INIT_20(256'h7A4B3BE6A07781E455D28AE4D92F737DFEFBF16EC0A6DDB88B93FA73D5079A8B),
    .INIT_21(256'h49D42EB5E7278765732B219BED2598FB07B772279B3184BEF57FF01296F7F2D8),
    .INIT_22(256'hDAB6F4640A6176DCDA0EA9BB6E733C7DF2C4E40E66B0DB129927A59889F04810),
    .INIT_23(256'h8B8ACAFD8F757D2E79A11CC959ADC02FB685FBF34C8F0B6CAF29E4C074721245),
    .INIT_24(256'hD87A4B3BE6A07781E455D28AE4D92F737DFEFBF16EC0A6DDB88B93FA73D5079A),
    .INIT_25(256'h1049D42EB5E7278765732B219BED2598FB07B772279B3184BEF57FF01296F7F2),
    .INIT_26(256'h45DAB6F4640A6176DCDA0EA9BB6E733C7DF2C4E40E66B0DB129927A59889F048),
    .INIT_27(256'h9A8B8ACAFD8F757D2E79A11CC959ADC02FB685FBF34C8F0B6CAF29E4C0747212),
    .INIT_28(256'hF2D87A4B3BE6A07781E455D28AE4D92F737DFEFBF16EC0A6DDB88B93FA73D507),
    .INIT_29(256'h481049D42EB5E7278765732B219BED2598FB07B772279B3184BEF57FF01296F7),
    .INIT_2A(256'h1245DAB6F4640A6176DCDA0EA9BB6E733C7DF2C4E40E66B0DB129927A59889F0),
    .INIT_2B(256'h079A8B8ACAFD8F757D2E79A11CC959ADC02FB685FBF34C8F0B6CAF29E4C07472),
    .INIT_2C(256'hF7F2D87A4B3BE6A07781E455D28AE4D92F737DFEFBF16EC0A6DDB88B93FA73D5),
    .INIT_2D(256'hF0481049D42EB5E7278765732B219BED2598FB07B772279B3184BEF57FF01296),
    .INIT_2E(256'h721245DAB6F4640A6176DCDA0EA9BB6E733C7DF2C4E40E66B0DB129927A59889),
    .INIT_2F(256'hD5079A8B8ACAFD8F757D2E79A11CC959ADC02FB685FBF34C8F0B6CAF29E4C074),
    .INIT_30(256'h96F7F2D87A4B3BE6A07781E455D28AE4D92F737DFEFBF16EC0A6DDB88B93FA73),
    .INIT_31(256'h89F0481049D42EB5E7278765732B219BED2598FB07B772279B3184BEF57FF012),
    .INIT_32(256'h74721245DAB6F4640A6176DCDA0EA9BB6E733C7DF2C4E40E66B0DB129927A598),
    .INIT_33(256'h73D5079A8B8ACAFD8F757D2E79A11CC959ADC02FB685FBF34C8F0B6CAF29E4C0),
    .INIT_34(256'h1296F7F2D87A4B3BE6A07781E455D28AE4D92F737DFEFBF16EC0A6DDB88B93FA),
    .INIT_35(256'h9889F0481049D42EB5E7278765732B219BED2598FB07B772279B3184BEF57FF0),
    .INIT_36(256'hC074721245DAB6F4640A6176DCDA0EA9BB6E733C7DF2C4E40E66B0DB129927A5),
    .INIT_37(256'hFA73D5079A8B8ACAFD8F757D2E79A11CC959ADC02FB685FBF34C8F0B6CAF29E4),
    .INIT_38(256'hF01296F7F2D87A4B3BE6A07781E455D28AE4D92F737DFEFBF16EC0A6DDB88B93),
    .INIT_39(256'hA59889F0481049D42EB5E7278765732B219BED2598FB07B772279B3184BEF57F),
    .INIT_3A(256'hE4C074721245DAB6F4640A6176DCDA0EA9BB6E733C7DF2C4E40E66B0DB129927),
    .INIT_3B(256'h3C7DF2C4E40E66B0DB129927A59889F0481049ADC02FB685FBF34C8F0B6CAF29),
    .INIT_3C(256'hC02FB685FBF34C8F0B6CAF29E4C074721245DAB6F4640A6176DCDA0EA9BB6E73),
    .INIT_3D(256'h2F737DFEFBF16EC0A6DDB88B93FA73D5079A8B8ACAFD8F757D2E79A11CC959AD),
    .INIT_3E(256'h2598FB07B772279B3184BEF57FF01207F7F2D87A4B3BE6A07781E455D28AE4D9),
    .INIT_3F(256'h733C7DF2C4E40E66B0DB129927A59889F0481049D42EB5E7278765732B219BED),
    .INIT_40(256'hADC02FB685FBF34C8F0B6CAF29E4C074721245DAB6F4640A6176DCDA0EA9BB6E),
    .INIT_41(256'hD92F737DFEFBF16EC0A6DDB88B93FA73D5079A8B8ACAFD8F757D2E79A11CC959),
    .INIT_42(256'hED2598FB07B772279B3184BEF57FF01296F7F2D87A4B3BE6A07781E455D28AE4),
    .INIT_43(256'h6E733C7DF2C4E40E66B0DB129927A59889F0481049D42EB5E7278765732B219B),
    .INIT_44(256'h49ADC02FB685FBFF4C8F0B6CAF29E4C074721245DAB6F4640A6176DCDA0EA9BB),
    .INIT_45(256'hDAB6F4640A6176DCDA0EA9BB6E733C7DF2C4E40E66B0DB129927A59889F04810),
    .INIT_46(256'h8B8ACAFD8F757D2E79A11CC959ADC02FB685FBF34C8F0B6CAF29E4C074721245),
    .INIT_47(256'hD87A4B3BE6A07781E455D28AE4D92F737DFEFBF16EC0A6DDB88B93FA73D5079A),
    .INIT_48(256'h1049D42EB5E7278765732B219BED2598FB07B772279B3184BEF57FF01296F7F2),
    .INIT_49(256'h45DAB6F4640A6176DCDA0EA9BB6E733C7DF2C4E40E66B0DB129927A59889F048),
    .INIT_4A(256'h9A8B8ACAFD8F757D2E79A11CC959ADC02FB685FBF34C8F0B6CAF29E4C0747212),
    .INIT_4B(256'hF2D87A4B3BE6A07781E455D28AE4D92F737DFEFBF16EC0A6DDB88B93FA73D5FF),
    .INIT_4C(256'h481049D42EB5E7278765732B219BED2598FB07B772279B3184BEF57FF01296F7),
    .INIT_4D(256'h1245DAB6F4640A6176DCDA0EA9BB6E733C7DF2C4E40E66B0DB129927A59889F0),
    .INIT_4E(256'h795C816A1C8EC58D8DFBC4EA64AF50ADC02FB685FBF34C8F0B6CAF29E4C07472),
    .INIT_4F(256'hE35C040C7894CF6398B0F5B9CA399602007CD9B5AFFED8352DFAC80CB0150BB2),
    .INIT_50(256'hC8E1B39D53CF02F048D91B3D894EFE2E77BC7156EBB904E2179B08EB1D18DA54),
    .INIT_51(256'hA11CED869D57DD22F07F4A68B71FECBADA4F526EF549EE9AE7447D2ED056915A),
    .INIT_52(256'hA13A188A9EDB6A7D1E655BFCF4A17EFBCBBDDDD5D66199460747CB54B05ADF95),
    .INIT_53(256'h0E80C84F4A5495F683BD26F1CD83A6941F86922249050F518994DD6088A0403E),
    .INIT_54(256'h568C3AA0C56C255AC708615DF6837377D3F3A6EC654262009ED770491C4697B2),
    .INIT_55(256'hC982F4CD14D81C73437B3E45E65DF79EBB2B46AA0280C970116BDFBB07D7C8B0),
    .INIT_56(256'hFAC80CB0150BB2795C816A1C8EC58D8DFBC4EA64AF505DBDB9E6F2FBA5B3DE35),
    .INIT_57(256'h9B08EB1D18DA54E35C040C7894CF6398B0F5B9CA399602007CD9B5AFFED8352D),
    .INIT_58(256'h447D2ED056915AC8E1B39D53CF02F048D91B3D894EFE2E77BC7156EBB904E217),
    .INIT_59(256'h47CB54B05ADF95A11CED869D57DD22F07F4A68B71FECBADA4F526EF549EE9AE7),
    .INIT_5A(256'h94DD6088A0403EA13A188A9EDB6A7D1E655BFCF4A17EFBCBBDDDD5D661994607),
    .INIT_5B(256'hD770491C4697B20E80C84F4A5495F683BD26F1CD83A6941F86922249050F5189),
    .INIT_5C(256'h6BDFBB07D7C8B0568C3AA0C56C255AC708615DF6837377D3F3A6EC654262009E),
    .INIT_5D(256'hE6F2FBA5B3DE35C982F4CD14D81C73437B3E45E65DF79EBB2B46AA0280C97011),
    .INIT_5E(256'hD9B5AFFED8352DFAC80CB0150BB2795C816A1C8EC58D8DFBC4EA64AF505DBDB9),
    .INIT_5F(256'h7156EBB904E2179B08EB1D18DA54E35C040C7894CF6398B0F5B9CA399602007C),
    .INIT_60(256'h526EF549EE9AE7447D2ED056915AC8E1B39D53CF02F048D91B3D894EFE2E77BC),
    .INIT_61(256'hDDD5D66199460747CB54B05ADF95A11CED869D57DD22F07F4A68B71FECBADA4F),
    .INIT_62(256'h922249050F518994DD6088A0403EA13A188A9EDB6A7D1E655BFCF4A17EFBCBBD),
    .INIT_63(256'hA6EC654262009ED770491C4697B20E80C84F4A5495F683BD26F1CD83A6941F86),
    .INIT_64(256'h46AA0280C970116BDFBB07D7C8B0568C3AA0C56C255AC708615DF6837377D3F3),
    .INIT_65(256'hDA0EA9BB5DBDB9E6F2FBA5B3DE35C982F4CD14D81C73437B3E45E65DF79EBB2B),
    .INIT_66(256'h79A11CC959ADC02FB685FBF34C8F0B6CAF29E4C074721245DAB6F4640A6176DC),
    .INIT_67(256'hE455D28AE4D92F737DFEFBF16EC0A6DDB88B93FA73D5079A8B8ACAFD8F757D2E),
    .INIT_68(256'h65732B219BED2598FB07B772279B3184BEF57FF01296F7F2D87A4B3BE6A07781),
    .INIT_69(256'hDCDA0EA9BB6E733C7DF2C4E40E66B0DB129927A59889F0481049D42EB5E72787),
    .INIT_6A(256'h2E79A11CC959ADC02FB685FBF34C8F0B6CAF29E4C074721245DAB6F4640A6176),
    .INIT_6B(256'h81E455D28AE4D92F737DFEFBF16EC0A6DDB88B93FA73D5079A8B8ACAFD8F757D),
    .INIT_6C(256'h8765732B219BED2598FB07B772279B3184BEF57FF01296F7F2D87A4B3BE6A077),
    .INIT_6D(256'h76DCDA0EA9BB6E733C7DF2C4E40E66B0DB129927A59889F0481049D42EB5E727),
    .INIT_6E(256'h7D2E79A11CC959ADC02FB685FBF34C8F0B6CAF29E4C074721245DAB6F4640A61),
    .INIT_6F(256'h7781E455D28AE4D92F737DFEFBF16EC0A6DDB88B93FA73D5079A8B8ACAFD8F75),
    .INIT_70(256'h70116BDFBB07D7C8B0568C3AA0C56C255AC708615DF61296F7F2D87A4B3BE6A0),
    .INIT_71(256'hBDB9E6F2FBA5B3DE35C982F4CD14D81C73437B3E45E65DF79EBB2B46AA0280C9),
    .INIT_72(256'h007CD9B5AFFED8352DFAC80CB0150BB2795C816A1C8EC58D8DFBC4EA64AF505D),
    .INIT_73(256'h77BC7156EBB904E2179B08EB1D18DA54E35C040C7894CF6398B0F5B9CA399602),
    .INIT_74(256'hDA4F526EF549EE9AE7447D2ED056915AC8E1B39D53CF02F048D91B3D894EFE2E),
    .INIT_75(256'hCBBDDDD5D66199460747CB54B05ADF95A11CED869D57DD22F07F4A68B71FECBA),
    .INIT_76(256'h1F86922249050F518994DD6088A0403EA13A188A9EDB6A7D1E655BFCF4A17EFB),
    .INIT_77(256'hD3F3A6EC654262009ED770491C4697B20E80C84F4A5495F683BD26F1CD83A694),
    .INIT_78(256'hBB2B46AA0280C970116BDFBB07D7C8B0568C3AA0C56C255AC708615DF6837377),
    .INIT_79(256'h76DCDA0EA9BB5DBDB9E6F2FBA5B3DE35C982F4CD14D81C73437B3E45E65DF79E),
    .INIT_7A(256'h7D2E79A11CC959ADC02FB685FBF34C8F0B6CAF29E4C074721245DAB6F4640A61),
    .INIT_7B(256'h7781E455D28AE4D92F737DFEFBF16EC0A6DDB88B93FA73D5079A8B8ACAFD8F75),
    .INIT_7C(256'h278765732B219BED2598FB07B772279B3184BEF57FF01296F7F2D87A4B3BE6A0),
    .INIT_7D(256'h6176DCDA0EA9BB6E733C7DF2C4E40E66B0DB129927A59889F0481049D42EB5E7),
    .INIT_7E(256'h757D2E79A11CC959ADC02FB685FBF34C8F0B6CAF29E4C074721245DAB6F4640A),
    .INIT_7F(256'hA07781E455D28AE4D92F737DFEFBF16EC0A6DDB88B93FA73D5079A8B8ACAFD8F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra_12_sp_1,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  output addra_12_sp_1;
  input clka;
  input [13:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [13:0]addra;
  wire addra_12_sn_1;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_12_sp_1 = addra_12_sn_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hE7B3B118E8315155020F12B4449FC7EA20E92C601AB8BEAA39CF1D5673355DD4),
    .INITP_01(256'h20E92C601AB8BEAA39041E2568893F8F5EACFAB0219ABA190129E052D021CE68),
    .INITP_02(256'h883A4B1806AE2FAA8E73C7559CCD5775107496300D5C5F551CE78EAB399AAEEA),
    .INITP_03(256'hD7AB3EAC0866AE86404A7814B408739A39ECEC463A0C54554083C4AD1127F1FA),
    .INITP_04(256'h9A7F9EEDE7F2BA911199E3AACE66ABBA883A4B1806AE2FAA8E4107895A224FE3),
    .INITP_05(256'hBA0A9D44407011AAB2EA981BD8B48CADE919FD6493BA53BA0E4A957DCFC6C6A3),
    .INITP_06(256'h4B71C084A0BB99C94A5C671562D7E331BF7A540710BCEC66907DEF5DE348DEE4),
    .INITP_07(256'h2709A026139520BBFFEB177330001A978FC58BCA26801ED27F67E15E1CD00254),
    .INITP_08(256'hE36351CD3FCF76F3F95D4888C91855235A62D85475B3D5B09A0E5505388D0578),
    .INITP_09(256'hA46F725D054EA2203808D559754C0DEC5A4656F48CFEB249DD29DD07254ABEE7),
    .INITP_0A(256'h68012A25B8E042505DCCE4A52E338AB16BF198DFBD2A03885E7633483EF7AEF1),
    .INITP_0B(256'h4682BC1384D01309CA905DFFF58BB998000D4BC7E2C5E513400F693FB3F0AF0E),
    .INITP_0C(256'hA55F73F1B1A8E69FE7BB79FCAEA444648C2A91AD316C2A3AD9EAD84D072A829C),
    .INITP_0D(256'h7BD778D237B92E82A751101C046AACBAA606F62D232B7A467F5924EE94EE8392),
    .INITP_0E(256'hF8578734009512DC7021282EE672529719C558B5F8CC6FDE9501C42F3B19A41F),
    .INITP_0F(256'h95414E23415E09C2680984E5482EFFFAC5DCCC0006A5E3F162F289A007B49FD9),
    .INIT_00(256'hE7278765732B219BED2598FB07B772279B3184BEF57FF01296F7F2D87A4B3BE6),
    .INIT_01(256'h0A6176DCDA0EA9BB6E733C7DF2C4E40E66B0DB129927A59889F0481049D42EB5),
    .INIT_02(256'h8F757D2E79A11CC959ADC02FB685FBF34C8F0B6CAF29E4C074721245DAB6F464),
    .INIT_03(256'hE6A07781E455D28AE4D92F737DFEFBF16EC0A6DDB88B93FA73D5079A8B8ACAFD),
    .INIT_04(256'h80C970116BDFBB07D7C8B0568C3AA0C56C255AC708615DF61296F7F2D87A4B3B),
    .INIT_05(256'h505DBDB9E6F2FBA5B3DE35C982F4CD14D81C73437B3E45E65DF79EBB2B46AA02),
    .INIT_06(256'h9602007CD9B5AFFED8352DFAC80CB0150BB2795C816A1C8EC58D8DFBC4EA64AF),
    .INIT_07(256'hFE2E77BC7156EBB904E2179B08EB1D18DA54E35C040C7894CF6398B0F5B9CA39),
    .INIT_08(256'hECBADA4F526EF549EE9AE7447D2ED056915AC8E1B39D53CF02F048D91B3D894E),
    .INIT_09(256'h7EFBCBBDDDD5D66199460747CB54B05ADF95A11CED869D57DD22F07F4A68B71F),
    .INIT_0A(256'hA6941F86922249050F518994DD6088A0403EA13A188A9EDB6A7D1E655BFCF4A1),
    .INIT_0B(256'h7377D3F3A6EC654262009ED770491C4697B20E80C84F4A5495F683BD26F1CD83),
    .INIT_0C(256'hF79EBB2B46AA0280C970116BDFBB07D7C8B0568C3AA0C56C255AC708615DF683),
    .INIT_0D(256'h0A6176DCDA0EA9BB5DBDB9E6F2FBA5B3DE35C982F4CD14D81C73437B3E45E65D),
    .INIT_0E(256'h8F757D2E79A11CC959ADC02FB685FBF34C8F0B6CAF29E4C074721245DAB6F464),
    .INIT_0F(256'hE6A07781E455D28AE4D92F737DFEFBF16EC0A6DDB88B93FA73D5079A8B8ACAFD),
    .INIT_10(256'hB5E7278765732B219BED2598FB07B772279B3184BEF57FF01296F7F2D87A4B3B),
    .INIT_11(256'h640A6176DCDA0EA9BB6E733C7DF2C4E40E66B0DB129927A59889F0481049D42E),
    .INIT_12(256'hFD8F757D2E79A11CC959ADC02FB685FBF34C8F0B6CAF29E4C074721245DAB6F4),
    .INIT_13(256'h3BE6A07781E455D28AE4D92F737DFEFBF16EC0A6DDB88B93FA73D5079A8B8ACA),
    .INIT_14(256'h2EB5E7278765732B219BED2598FB07B772279B3184BEF57FF01296F7F2D87A4B),
    .INIT_15(256'hF4640A6176DCDA0EA9BB6E733C7DF2C4E40E66B0DB129927A59889F0481049D4),
    .INIT_16(256'hCAFD8F757D2E79A11CC959ADC02FB685FBF34C8F0B6CAF29E4C074721245DAB6),
    .INIT_17(256'h4B3BE6A07781E455D28AE4D92F737DFEFBF16EC0A6DDB88B93FA73D5079A8B8A),
    .INIT_18(256'hAA0280C970116BDFBB07D7C8B0568C3AA0C56C255AC708615DF61296F7F2D87A),
    .INIT_19(256'h64AF505DBDB9E6F2FBA5B3DE35C982F4CD14D81C73437B3E45E65DF79EBB2B46),
    .INIT_1A(256'hCA399602007CD9B5AFFED8352DFAC80CB0150BB2795C816A1C8EC58D8DFBC4EA),
    .INIT_1B(256'h894EFE2E77BC7156EBB904E2179B08EB1D18DA54E35C040C7894CF6398B0F5B9),
    .INIT_1C(256'hB71FECBADA4F526EF549EE9AE7447D2ED056915AC8E1B39D53CF02F048D91B3D),
    .INIT_1D(256'hF4A17EFBCBBDDDD5D66199460747CB54B05ADF95A11CED869D57DD22F07F4A68),
    .INIT_1E(256'hCD83A6941F86922249050F518994DD6088A0403EA13A188A9EDB6A7D1E655BFC),
    .INIT_1F(256'hF6837377D3F3A6EC654262009ED770491C4697B20E80C84F4A5495F683BD26F1),
    .INIT_20(256'hE65DF79EBB2B46AA0280C970116BDFBB07D7C8B0568C3AA0C56C255AC708615D),
    .INIT_21(256'hF4640A6176DCDA0EA9BB5DBDB9E6F2FBA5B3DE35C982F4CD14D81C73437B3E45),
    .INIT_22(256'hCAFD8F757D2E79A11CC959ADC02FB685FBF34C8F0B6CAF29E4C074721245DAB6),
    .INIT_23(256'h4B3BE6A07781E455D28AE4D92F737DFEFBF16EC0A6DDB88B93FA73D5079A8B8A),
    .INIT_24(256'hD42EB5E7278765732B219BED2598FB07B772279B3184BEF57FF01296F7F2D87A),
    .INIT_25(256'h6031B061E05080410160B0FF733C7DF2C4E40E66B0DB129927A59889F0481049),
    .INIT_26(256'hD1C131F180F0804180F1E191D0D1C1B1C0B180C1E19110B1E140D011E0B0E121),
    .INIT_27(256'hE0D131D14040A071D1F1A09120B19051714060519180000170F070D0E0615180),
    .INIT_28(256'hF0D1A01031602080E12121C0016000C020C04191D0900080E1D191308010E0D1),
    .INIT_29(256'hB0A060007070D0D0F1B04161207150F17091A031A02080D071011160F171C0D0),
    .INIT_2A(256'hE15181307181F060D151F111D061D1519010209060D0F001B0600090C090C1E1),
    .INIT_2B(256'hB0F1C1A1B1E1D011D191C051A0A0F0A051E00071D14021F1001131C1C0D180A1),
    .INIT_2C(256'h306030E0914100B0E19161E00170D180C0A190E1F05151B0015141E1F0A08161),
    .INIT_2D(256'h91A0A021601051D11001A10160303190B101513130A1D090D1A0B1712000C190),
    .INIT_2E(256'h0141116191D1C170E0C0A081D01020F170F0F0004130E0D1E13011A0F0E00050),
    .INIT_2F(256'hC13090C020A0C13131E140413121D101A09090114130F0406171F18130611080),
    .INIT_30(256'h20F0F13080D0907030E020E191B0C090304151604031C03101F1A061D0B130C0),
    .INIT_31(256'h40F050117090311180B18061C1D1D1F1A011D1C1B11091907031A12170108000),
    .INIT_32(256'hD1801050E101C04041B010A1805010914010D150110150E13070E02160B190A0),
    .INIT_33(256'hD180111080213011F1C0F0A090E1E0602151B1509010A1C1204160E010106001),
    .INIT_34(256'h1061501170F020C1318040400000D131A0113050F1901171E120A0410111F0C1),
    .INIT_35(256'h41E1D1E070F03011D090B08191419121202100D05170E1D1A050416030E17111),
    .INIT_36(256'h50E031D05160D161F1E07160D1917061B101B000E131A0110000103170B1A080),
    .INIT_37(256'h31B0A0B0E0D0217150C1515091A18120B12190A0D070702150F101E1D0403090),
    .INIT_38(256'h500171503171B051805060414101C1D19121518070903130D06060C14091B0D1),
    .INIT_39(256'hB0F1113091A03131407151B13161502110218110A051106051E1B070B1D17031),
    .INIT_3A(256'h60E1D16131501050F0308180A171913030C0D15130C02000B001B180319090E0),
    .INIT_3B(256'hC030D1E1A011C13110F060F090A15171E060E18080E1B0615001D110E020A121),
    .INIT_3C(256'h214111C09140E150F101A0D12181A1B1A031114121D1C0310030703181705110),
    .INIT_3D(256'h2180C000F091E07031600010E1A12011C18030C081C141A0515020B1F0305100),
    .INIT_3E(256'h514181F11031D0F0B0010180D1C0F111C1306131C09021510191E11140412161),
    .INIT_3F(256'h0010D031A0307100D0B1A05130E09130B060D130B0D0B131B170A1F111010091),
    .INIT_40(256'hF08010809041E14060A081D190F0512101608111F0601021F180D0C150A04041),
    .INIT_41(256'hF13141C051E120714081009151209110200160E0A10140C191C19190E0119190),
    .INIT_42(256'hE160C0F00090A0A1D041E1B1D1D171B00050C1D090C0700051B140D011813070),
    .INIT_43(256'hE13141F0E1E1C001B010910121002120E0D1703021015161016150D071C0D181),
    .INIT_44(256'h410160B0808030F0C10111D06101102171714180C1303171612011315170A0B1),
    .INIT_45(256'h4180F1E191D0D1C1B1C0B180C1E19110B1E140D011E0B0E1216031B061E05080),
    .INIT_46(256'h71D1F1A09120B19051714060519180000170F070D0E0615180D1C131F180F080),
    .INIT_47(256'h80E12121C0016000C020C04191D0900080E1D191308010E0D1E0D131D14040A0),
    .INIT_48(256'hD0F1B04161207150F17091A031A02080D071011160F171C0D0F0D1A010316020),
    .INIT_49(256'h60D151F111D061D1519010209060D0F001B0600090C090C1E1B0A060007070D0),
    .INIT_4A(256'h11D191C051A0A0F0A051E00071D14021F1001131C1C0D180A1E15181307181F0),
    .INIT_4B(256'hB0E19161E00170D180C0A190E1F05151B0015141E1F0A08161B0F1C1A1B1E1D0),
    .INIT_4C(256'hD11001A10160303190B101513130A1D090D1A0B1712000C190306030E0914100),
    .INIT_4D(256'h70E0C0A081D01020F170F0F0004130E0D1E13011A0F0E0005091A0A021601051),
    .INIT_4E(256'h3131E140413121D101A09090114130F0406171F181306110800141116191D1C1),
    .INIT_4F(256'h7030E020E191B0C090304151604031C03101F1A061D0B130C0C13090C020A0C1),
    .INIT_50(256'h1180B18061C1D1D1F1A011D1C1B11091907031A1217010800020F0F13080D090),
    .INIT_51(256'h4041B010A1805010914010D150110150E13070E02160B190A040F05011709031),
    .INIT_52(256'h11F1C0F0A090E1E0602151B1509010A1C1204160E010106001D1801050E101C0),
    .INIT_53(256'hC1318040400000D131A0113050F1901171E120A0410111F0C1D1801110802130),
    .INIT_54(256'h11D090B08191419121202100D05170E1D1A050416030E171111061501170F020),
    .INIT_55(256'h61F1E07160D1917061B101B000E131A0110000103170B1A08041E1D1E070F030),
    .INIT_56(256'h7150C1515091A18120B12190A0D070702150F101E1D040309050E031D05160D1),
    .INIT_57(256'h51805060414101C1D19121518070903130D06060C14091B0D131B0A0B0E0D021),
    .INIT_58(256'h31407151B13161502110218110A051106051E1B070B1D17031500171503171B0),
    .INIT_59(256'h50F0308180A171913030C0D15130C02000B001B180319090E0B0F1113091A031),
    .INIT_5A(256'h3110F060F090A15171E060E18080E1B0615001D110E020A12160E1D161315010),
    .INIT_5B(256'h50F101A0D12181A1B1A031114121D1C0310030703181705110C030D1E1A011C1),
    .INIT_5C(256'h7031600010E1A12011C18030C081C141A0515020B1F0305100214111C09140E1),
    .INIT_5D(256'hF0B0010180D1C0F111C1306131C09021510191E111404121612180C000F091E0),
    .INIT_5E(256'h00D0B1A05130E09130B060D130B0D0B131B170A1F111010091514181F11031D0),
    .INIT_5F(256'h4060A081D190F0512101608111F0601021F180D0C150A040410010D031A03071),
    .INIT_60(256'h714081009151209110200160E0A10140C191C19190E0119190F08010809041E1),
    .INIT_61(256'hA1D041E1B1D1D171B00050C1D090C0700051B140D011813070F13141C051E120),
    .INIT_62(256'h01B010910121002120E0D1703021015161016150D071C0D181E160C0F00090A0),
    .INIT_63(256'hF0C10111D06101102171714180C1303171612011315170A0B1E13141F0E1E1C0),
    .INIT_64(256'hC1B1C0B180C1E19110B1E140D011E0B0E1216031B061E05080410160B0808030),
    .INIT_65(256'h9051714060519180000170F070D0E0615180D1C131F180F0804180F1E191D0D1),
    .INIT_66(256'h00C020C04191D0900080E1D191308010E0D1E0D131D14040A071D1F1A09120B1),
    .INIT_67(256'h50F17091A031A02080D071011160F171C0D0F0D1A01031602080E12121C00160),
    .INIT_68(256'hD1519010209060D0F001B0600090C090C1E1B0A060007070D0D0F1B041612071),
    .INIT_69(256'hF0A051E00071D14021F1001131C1C0D180A1E15181307181F060D151F111D061),
    .INIT_6A(256'hD180C0A190E1F05151B0015141E1F0A08161B0F1C1A1B1E1D011D191C051A0A0),
    .INIT_6B(256'h3190B101513130A1D090D1A0B1712000C190306030E0914100B0E19161E00170),
    .INIT_6C(256'h20F170F0F0004130E0D1E13011A0F0E0005091A0A021601051D11001A1016030),
    .INIT_6D(256'hD101A09090114130F0406171F181306110800141116191D1C170E0C0A081D010),
    .INIT_6E(256'hC090304151604031C03101F1A061D0B130C0C13090C020A0C13131E140413121),
    .INIT_6F(256'hD1F1A011D1C1B11091907031A1217010800020F0F13080D0907030E020E191B0),
    .INIT_70(256'h10914010D150110150E13070E02160B190A040F050117090311180B18061C1D1),
    .INIT_71(256'hE0602151B1509010A1C1204160E010106001D1801050E101C04041B010A18050),
    .INIT_72(256'hD131A0113050F1901171E120A0410111F0C1D180111080213011F1C0F0A090E1),
    .INIT_73(256'h9121202100D05170E1D1A050416030E171111061501170F020C1318040400000),
    .INIT_74(256'h7061B101B000E131A0110000103170B1A08041E1D1E070F03011D090B0819141),
    .INIT_75(256'h8120B12190A0D070702150F101E1D040309050E031D05160D161F1E07160D191),
    .INIT_76(256'hC1D19121518070903130D06060C14091B0D131B0A0B0E0D0217150C1515091A1),
    .INIT_77(256'h502110218110A051106051E1B070B1D17031500171503171B051805060414101),
    .INIT_78(256'h913030C0D15130C02000B001B180319090E0B0F1113091A03131407151B13161),
    .INIT_79(256'h5171E060E18080E1B0615001D110E020A12160E1D16131501050F0308180A171),
    .INIT_7A(256'hA1B1A031114121D1C0310030703181705110C030D1E1A011C13110F060F090A1),
    .INIT_7B(256'h2011C18030C081C141A0515020B1F0305100214111C09140E150F101A0D12181),
    .INIT_7C(256'hF111C1306131C09021510191E111404121612180C000F091E07031600010E1A1),
    .INIT_7D(256'h9130B060D130B0D0B131B170A1F111010091514181F11031D0F0B0010180D1C0),
    .INIT_7E(256'h512101608111F0601021F180D0C150A040410010D031A0307100D0B1A05130E0),
    .INIT_7F(256'h9110200160E0A10140C191C19190E0119190F08010809041E14060A081D190F0),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(addra_12_sn_1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[12]),
        .I1(addra[13]),
        .O(addra_12_sn_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [11:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h9FD9F8578734009512DC7021282EE67252971A461548D698B6151D6CF56C2683),
    .INITP_01(256'h268395414E23415E09C2680984E5482EFFFAC5DCCC0006A5E3F162F289A007B4),
    .INITP_02(256'h07B49FD9F8578734009512DC7021282EE67252971A461548D698B6151D6CF56C),
    .INITP_03(256'hF56C268395414E23415E09C2680984E5482EFFFAC5DCCC0006A5E3F162F289A0),
    .INITP_04(256'h89A007B49FD9F8578734009512DC7021282EE67252971A461548D698B6151D6C),
    .INITP_05(256'h1D6CF56C268395414E23415E09C2680984E5482EFFFAC5DCCC0006A5E3F162F2),
    .INITP_06(256'h62F289A007B49FD9F8578734009512DC7021282EE67252971A461548D698B615),
    .INITP_07(256'hB6151D6CF56C268395414E23415E09C2680984E5482EFFFAC5DCCC0006A5E3F1),
    .INITP_08(256'hE3F162F289A007B49FD9F8578734009512DC7021282EE67252971A461548D698),
    .INITP_09(256'hD698B6151D6CF56C268395414E23415E09C2680984E5482EFFFAC5DCCC0006A5),
    .INITP_0A(256'h06A5E3F162F289A007B49FD9F8578734009512DC7021282EE67252971A461548),
    .INITP_0B(256'h1548D698B6151D6CF56C268395414E23415E09C2680984E5482EFFFAC5DCCC00),
    .INITP_0C(256'hCC0006A5E3F162F289A007B49FD9F8578734009512DC7021282EE67252971A46),
    .INITP_0D(256'h1A461548D698B6151D6CF56C268395414E23415E09C2680984E5482EFFFAC5DC),
    .INITP_0E(256'hC5DCCC0006A5E3F162F289A007B49FD9F8578734009512DC7021282EE6725297),
    .INITP_0F(256'h000002461548D698B6151D6CF56C268395414E23415E09C2680984E5482EFFFA),
    .INIT_00(256'h71B00050C1D090C0700051B140D011813070F13141C051E12071408100915120),
    .INIT_01(256'h2120E0D1703021015161016150D071C0D181E160C0F00090A0A1D041E1B1D1D1),
    .INIT_02(256'h102171714180C1303171612011315170A0B1E13141F0E1E1C001B01091012100),
    .INIT_03(256'hA08041E1D1E070F03011D090B08191419121202100D0808030F0C10111D06101),
    .INIT_04(256'h309050E031D05160D161F1E07160D1917061B101B000E131A0110000103170B1),
    .INIT_05(256'hB0D131B0A0B0E0D0217150C1515091A18120B12190A0D070702150F101E1D040),
    .INIT_06(256'h7031500171503171B051805060414101C1D19121518070903130D06060C14091),
    .INIT_07(256'h90E0B0F1113091A03131407151B13161502110218110A051106051E1B070B1D1),
    .INIT_08(256'hA12160E1D16131501050F0308180A171913030C0D15130C02000B001B1803190),
    .INIT_09(256'h5110C030D1E1A011C13110F060F090A15171E060E18080E1B0615001D110E020),
    .INIT_0A(256'h5100214111C09140E150F101A0D12181A1B1A031114121D1C031003070318170),
    .INIT_0B(256'h21612180C000F091E07031600010E1A12011C18030C081C141A0515020B1F030),
    .INIT_0C(256'h0091514181F11031D0F0B0010180D1C0F111C1306131C09021510191E1114041),
    .INIT_0D(256'h40410010D031A0307100D0B1A05130E09130B060D130B0D0B131B170A1F11101),
    .INIT_0E(256'h9190F08010809041E14060A081D190F0512101608111F0601021F180D0C150A0),
    .INIT_0F(256'h3070F13141C051E120714081009151209110200160E0A10140C191C19190E011),
    .INIT_10(256'hD181E160C0F00090A0A1D041E1B1D1D171B00050C1D090C0700051B140D01181),
    .INIT_11(256'hA0B1E13141F0E1E1C001B010910121002120E0D1703021015161016150D071C0),
    .INIT_12(256'h9121202100D0808030F0C10111D06101102171714180C1303171612011315170),
    .INIT_13(256'h7061B101B000E131A0110000103170B1A08041E1D1E070F03011D090B0819141),
    .INIT_14(256'h8120B12190A0D070702150F101E1D040309050E031D05160D161F1E07160D191),
    .INIT_15(256'hC1D19121518070903130D06060C14091B0D131B0A0B0E0D0217150C1515091A1),
    .INIT_16(256'h502110218110A051106051E1B070B1D17031500171503171B051805060414101),
    .INIT_17(256'h913030C0D15130C02000B001B180319090E0B0F1113091A03131407151B13161),
    .INIT_18(256'h5171E060E18080E1B0615001D110E020A12160E1D16131501050F0308180A171),
    .INIT_19(256'hA1B1A031114121D1C0310030703181705110C030D1E1A011C13110F060F090A1),
    .INIT_1A(256'h2011C18030C081C141A0515020B1F0305100214111C09140E150F101A0D12181),
    .INIT_1B(256'hF111C1306131C09021510191E111404121612180C000F091E07031600010E1A1),
    .INIT_1C(256'h9130B060D130B0D0B131B170A1F111010091514181F11031D0F0B0010180D1C0),
    .INIT_1D(256'h512101608111F0601021F180D0C150A040410010D031A0307100D0B1A05130E0),
    .INIT_1E(256'h9110200160E0A10140C191C19190E0119190F08010809041E14060A081D190F0),
    .INIT_1F(256'h71B00050C1D090C0700051B140D011813070F13141C051E12071408100915120),
    .INIT_20(256'h2120E0D1703021015161016150D071C0D181E160C0F00090A0A1D041E1B1D1D1),
    .INIT_21(256'h102171714180C1303171612011315170A0B1E13141F0E1E1C001B01091012100),
    .INIT_22(256'hA08041E1D1E070F03011D090B08191419121202100D0808030F0C10111D06101),
    .INIT_23(256'h309050E031D05160D161F1E07160D1917061B101B000E131A0110000103170B1),
    .INIT_24(256'hB0D131B0A0B0E0D0217150C1515091A18120B12190A0D070702150F101E1D040),
    .INIT_25(256'h7031500171503171B051805060414101C1D19121518070903130D06060C14091),
    .INIT_26(256'h90E0B0F1113091A03131407151B13161502110218110A051106051E1B070B1D1),
    .INIT_27(256'hA12160E1D16131501050F0308180A171913030C0D15130C02000B001B1803190),
    .INIT_28(256'h5110C030D1E1A011C13110F060F090A15171E060E18080E1B0615001D110E020),
    .INIT_29(256'h5100214111C09140E150F101A0D12181A1B1A031114121D1C031003070318170),
    .INIT_2A(256'h21612180C000F091E07031600010E1A12011C18030C081C141A0515020B1F030),
    .INIT_2B(256'h0091514181F11031D0F0B0010180D1C0F111C1306131C09021510191E1114041),
    .INIT_2C(256'h40410010D031A0307100D0B1A05130E09130B060D130B0D0B131B170A1F11101),
    .INIT_2D(256'h9190F08010809041E14060A081D190F0512101608111F0601021F180D0C150A0),
    .INIT_2E(256'h3070F13141C051E120714081009151209110200160E0A10140C191C19190E011),
    .INIT_2F(256'hD181E160C0F00090A0A1D041E1B1D1D171B00050C1D090C0700051B140D01181),
    .INIT_30(256'hA0B1E13141F0E1E1C001B010910121002120E0D1703021015161016150D071C0),
    .INIT_31(256'h9121202100D0808030F0C10111D06101102171714180C1303171612011315170),
    .INIT_32(256'h7061B101B000E131A0110000103170B1A08041E1D1E070F03011D090B0819141),
    .INIT_33(256'h8120B12190A0D070702150F101E1D040309050E031D05160D161F1E07160D191),
    .INIT_34(256'hC1D19121518070903130D06060C14091B0D131B0A0B0E0D0217150C1515091A1),
    .INIT_35(256'h502110218110A051106051E1B070B1D17031500171503171B051805060414101),
    .INIT_36(256'h913030C0D15130C02000B001B180319090E0B0F1113091A03131407151B13161),
    .INIT_37(256'h5171E060E18080E1B0615001D110E020A12160E1D16131501050F0308180A171),
    .INIT_38(256'hA1B1A031114121D1C0310030703181705110C030D1E1A011C13110F060F090A1),
    .INIT_39(256'h2011C18030C081C141A0515020B1F0305100214111C09140E150F101A0D12181),
    .INIT_3A(256'hF111C1306131C09021510191E111404121612180C000F091E07031600010E1A1),
    .INIT_3B(256'h9130B060D130B0D0B131B170A1F111010091514181F11031D0F0B0010180D1C0),
    .INIT_3C(256'h512101608111F0601021F180D0C150A040410010D031A0307100D0B1A05130E0),
    .INIT_3D(256'h9110200160E0A10140C191C19190E0119190F08010809041E14060A081D190F0),
    .INIT_3E(256'h71B00050C1D090C0700051B140D011813070F13141C051E12071408100915120),
    .INIT_3F(256'h2120E0D1703021015161016150D071C0D181E160C0F00090A0A1D041E1B1D1D1),
    .INIT_40(256'h102171714180C1303171612011315170A0B1E13141F0E1E1C001B01091012100),
    .INIT_41(256'hA08041E1D1E070F03011D090B08191419121202100D0808030F0C10111D06101),
    .INIT_42(256'h309050E031D05160D161F1E07160D1917061B101B000E131A0110000103170B1),
    .INIT_43(256'hB0D131B0A0B0E0D0217150C1515091A18120B12190A0D070702150F101E1D040),
    .INIT_44(256'h7031500171503171B051805060414101C1D19121518070903130D06060C14091),
    .INIT_45(256'h90E0B0F1113091A03131407151B13161502110218110A051106051E1B070B1D1),
    .INIT_46(256'hA12160E1D16131501050F0308180A171913030C0D15130C02000B001B1803190),
    .INIT_47(256'h5110C030D1E1A011C13110F060F090A15171E060E18080E1B0615001D110E020),
    .INIT_48(256'h5100214111C09140E150F101A0D12181A1B1A031114121D1C031003070318170),
    .INIT_49(256'h21612180C000F091E07031600010E1A12011C18030C081C141A0515020B1F030),
    .INIT_4A(256'h0091514181F11031D0F0B0010180D1C0F111C1306131C09021510191E1114041),
    .INIT_4B(256'h40410010D031A0307100D0B1A05130E09130B060D130B0D0B131B170A1F11101),
    .INIT_4C(256'h9190F08010809041E14060A081D190F0512101608111F0601021F180D0C150A0),
    .INIT_4D(256'h3070F13141C051E120714081009151209110200160E0A10140C191C19190E011),
    .INIT_4E(256'hD181E160C0F00090A0A1D041E1B1D1D171B00050C1D090C0700051B140D01181),
    .INIT_4F(256'hA0B1E13141F0E1E1C001B010910121002120E0D1703021015161016150D071C0),
    .INIT_50(256'h9121202100D0808030F0C10111D06101102171714180C1303171612011315170),
    .INIT_51(256'h7061B101B000E131A0110000103170B1A08041E1D1E070F03011D090B0819141),
    .INIT_52(256'h8120B12190A0D070702150F101E1D040309050E031D05160D161F1E07160D191),
    .INIT_53(256'hC1D19121518070903130D06060C14091B0D131B0A0B0E0D0217150C1515091A1),
    .INIT_54(256'h502110218110A051106051E1B070B1D17031500171503171B051805060414101),
    .INIT_55(256'h913030C0D15130C02000B001B180319090E0B0F1113091A03131407151B13161),
    .INIT_56(256'h5171E060E18080E1B0615001D110E020A12160E1D16131501050F0308180A171),
    .INIT_57(256'hA1B1A031114121D1C0310030703181705110C030D1E1A011C13110F060F090A1),
    .INIT_58(256'h2011C18030C081C141A0515020B1F0305100214111C09140E150F101A0D12181),
    .INIT_59(256'hF111C1306131C09021510191E111404121612180C000F091E07031600010E1A1),
    .INIT_5A(256'h9130B060D130B0D0B131B170A1F111010091514181F11031D0F0B0010180D1C0),
    .INIT_5B(256'h512101608111F0601021F180D0C150A040410010D031A0307100D0B1A05130E0),
    .INIT_5C(256'h9110200160E0A10140C191C19190E0119190F08010809041E14060A081D190F0),
    .INIT_5D(256'h71B00050C1D090C0700051B140D011813070F13141C051E12071408100915120),
    .INIT_5E(256'h2120E0D1703021015161016150D071C0D181E160C0F00090A0A1D041E1B1D1D1),
    .INIT_5F(256'h102171714180C1303171612011315170A0B1E13141F0E1E1C001B01091012100),
    .INIT_60(256'hA08041E1D1E070F03011D090B08191419121202100D0808030F0C10111D06101),
    .INIT_61(256'h309050E031D05160D161F1E07160D1917061B101B000E131A0110000103170B1),
    .INIT_62(256'hB0D131B0A0B0E0D0217150C1515091A18120B12190A0D070702150F101E1D040),
    .INIT_63(256'h7031500171503171B051805060414101C1D19121518070903130D06060C14091),
    .INIT_64(256'h90E0B0F1113091A03131407151B13161502110218110A051106051E1B070B1D1),
    .INIT_65(256'hA12160E1D16131501050F0308180A171913030C0D15130C02000B001B1803190),
    .INIT_66(256'h5110C030D1E1A011C13110F060F090A15171E060E18080E1B0615001D110E020),
    .INIT_67(256'h5100214111C09140E150F101A0D12181A1B1A031114121D1C031003070318170),
    .INIT_68(256'h21612180C000F091E07031600010E1A12011C18030C081C141A0515020B1F030),
    .INIT_69(256'h0091514181F11031D0F0B0010180D1C0F111C1306131C09021510191E1114041),
    .INIT_6A(256'h40410010D031A0307100D0B1A05130E09130B060D130B0D0B131B170A1F11101),
    .INIT_6B(256'h9190F08010809041E14060A081D190F0512101608111F0601021F180D0C150A0),
    .INIT_6C(256'h3070F13141C051E120714081009151209110200160E0A10140C191C19190E011),
    .INIT_6D(256'hD181E160C0F00090A0A1D041E1B1D1D171B00050C1D090C0700051B140D01181),
    .INIT_6E(256'hA0B1E13141F0E1E1C001B010910121002120E0D1703021015161016150D071C0),
    .INIT_6F(256'h9121202100D0808030F0C10111D06101102171714180C1303171612011315170),
    .INIT_70(256'h7061B101B000E131A0110000103170B1A08041E1D1E070F03011D090B0819141),
    .INIT_71(256'h8120B12190A0D070702150F101E1D040309050E031D05160D161F1E07160D191),
    .INIT_72(256'hC1D19121518070903130D06060C14091B0D131B0A0B0E0D0217150C1515091A1),
    .INIT_73(256'h502110218110A051106051E1B070B1D17031500171503171B051805060414101),
    .INIT_74(256'h913030C0D15130C02000B001B180319090E0B0F1113091A03131407151B13161),
    .INIT_75(256'h5171E060E18080E1B0615001D110E020A12160E1D16131501050F0308180A171),
    .INIT_76(256'hA1B1A031114121D1C0310030703181705110C030D1E1A011C13110F060F090A1),
    .INIT_77(256'h2011C18030C081C141A0515020B1F0305100214111C09140E150F101A0D12181),
    .INIT_78(256'hF111C1306131C09021510191E111404121612180C000F091E07031600010E1A1),
    .INIT_79(256'h9130B060D130B0D0B131B170A1F111010091514181F11031D0F0B0010180D1C0),
    .INIT_7A(256'h512101608111F0601021F180D0C150A040410010D031A0307100D0B1A05130E0),
    .INIT_7B(256'h9110200160E0A10140C191C19190E0119190F08010809041E14060A081D190F0),
    .INIT_7C(256'h71B00050C1D090C0700051B140D011813070F13141C051E12071408100915120),
    .INIT_7D(256'h2120E0D1703021015161016150D071C0D181E160C0F00090A0A1D041E1B1D1D1),
    .INIT_7E(256'h102171714180C1303171612011315170A0B1E13141F0E1E1C001B01091012100),
    .INIT_7F(256'h00000000000000000000000000000000000000000000808030F0C10111D06101),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h4CDC6772876EF4176A96C3C6FE9DF8E0F0BC20981AC03C08576C36999C0716F0),
    .INITP_01(256'h88EE830EF1BD4830830917B258E03C8E19B3FB6F3864BDCE6B24048FEAB2BD61),
    .INITP_02(256'h10D46C9F37232E4284EF776F49453E7EFDF2C674434D4917A8CE94F9BEF74FCC),
    .INITP_03(256'h8431DD0E5C1EDD6CADE5E4DF62BFA7D90863BA1CB83DBAD95BCBC9BEC57F4FB2),
    .INITP_04(256'h210C77439707B75B2B797937D8AFE9F64218EE872E0F6EB656F2F26FB15FD3EC),
    .INITP_05(256'hC8431DD0E5C1EDD6CADE5E4DF62BFA7D90863BA1CB83DBAD95BCBC9BEC57F4FB),
    .INITP_06(256'hB210C77439707B75B2B797937D8AFE9F64218EE872E0F6EB656F2F26FB15FD3E),
    .INITP_07(256'hEDD6CADE5E4CF62BFA7D90863BA1CB83DBAD83BA1CB83DBAD95BCBC9BEC57F4F),
    .INITP_08(256'hD8AFE9F64218EE872E0F6EB60EE872E0F6EB656F2F26FB15FD3EC8431DD0E5C1),
    .INITP_09(256'hDDE82ED52D863BA1CB83DBAD95BCBC9BEC57F4FA210C77439707B75B2B797937),
    .INITP_0A(256'h1DBBD05DAA5B0CB1C0791C3367F6DE70C97B9CD648091FD5657AC299B8CEE50E),
    .INITP_0B(256'h943B77A0BB54B6196380F23866CFEDBCE192F739AC90123FAACAF58533719DCA),
    .INITP_0C(256'hAFE9F64218EE872E02C701E470CD9FDB79C325EE735920247F5595EB0A66E33B),
    .INITP_0D(256'h2BFA7D90863BA1CB83DBAD95BCBC9BEC57F4FB210C77439707B75B2B797937D8),
    .INITP_0E(256'hDE70C97B9CD648091FD5657AC299B8CEE50EDDE82ED52D8658E03C8E19B3F9F6),
    .INITP_0F(256'h15FD3EC8431DD0E5C1EDD6CADE5E4DF62BFA7D90863BA1CB80B1C0791C3367F6),
    .INIT_00(256'h2E63AE8C3FC57EBFD4D85ED6617FBCC4491E97AB3015995499194694DD0000FC),
    .INIT_01(256'h4A5459BDF5CDDA5E8AA83C864BA86633C72F9EA29499C5F1518ECDCB35447611),
    .INIT_02(256'h6599AFFCEF761FC07FE0436ABDC038DD1EFC4D97E052394C56E8D6DC66845818),
    .INIT_03(256'h3536B74CA5D7BB4278A1CE0E97FF54849D64BABA0000E33446588AA620298BE3),
    .INIT_04(256'hD63FA633D81315C3007BE2D0B96325B2E78B6DF3FE9384025D6D593B1CFF1AAC),
    .INIT_05(256'h177FA41F6E315F1A672579C3EA23CF9FE3F3785EFE5495A51EB1DCBFD832B4A6),
    .INIT_06(256'h2C7B729AAA41842883DFF5B60ECC3F03A3EF295A2603BC56D8682D1BD28FF5C1),
    .INIT_07(256'hCFD04EADA83592992BB6C8DAB3E57EEECCCECE22C438A571FC00AA2AFC6EFC74),
    .INIT_08(256'h00C479F4F2495951A47176A428E06D665CB87A6026360A49155C4B92A9B21549),
    .INIT_09(256'hDA6EFEE955A82A9A98FD23CE1BE0651EB2E0A333B2CC5A04CD38F168BB09F546),
    .INIT_0A(256'hC0DFBE22E236ECD7E27367F0DEB563CC57AEEA69CADBAF886BF14EB2627713AA),
    .INIT_0B(256'h98FE77F73DE44235B492691592AB1E1DFB139ADF31E8060A69FB2CDD3FE5FE7B),
    .INIT_0C(256'h46566B5C0E8716CA1FA438EA332CB7553C2F28594F2AEDBA6E12CF817FA15D52),
    .INIT_0D(256'h5E1E2BBF1805D202C3109977E8D3A96202BC8829CC3CBA716AC8B7EA86FDE6E5),
    .INIT_0E(256'h62D15686E5E0D02C200440AF03A248AC9EC6EBCFAD197FCB5ED1367157566BA3),
    .INIT_0F(256'h7A067ACFB6E35C835454588D4F5DB403E48B4719180D06FD4CC133A85C9BA254),
    .INIT_10(256'h5C5BE83174B6A620F69BF16A32AC228C9534846064D907656A90A038A01C07FC),
    .INIT_11(256'h5F98E75BAB1BE0A6D2E2A44D049D7774BFAD75EF491F73C59C1073F21D61D7CC),
    .INIT_12(256'h769E0F58B80F90D14E60084603CC867C242DC8002F5F0430D6E39BCCA0E3F2DE),
    .INIT_13(256'h1EC42A226B73EDEBD6E6217CFB50A9F7842C7BCCD5563EB6595ABB90C3D4E720),
    .INIT_14(256'hA499156A8CDB084C7CE701428E4C7513BC32C60854C6ECD5C17B2DF03F25139B),
    .INIT_15(256'hE1F5F377D9BAD66EAC30BD869ABBD7149D3E1E67BF40D1E4A53B602E39D3147F),
    .INIT_16(256'hD7C1FF4A594DFE0935D40FABEEDAB6799C38F76F381AF03601CE25BEBC7DDD84),
    .INIT_17(256'h483E8EC2B2AA8DCD9211204AFAF5F0C990D002E4915D18DF0DFF19C00C69C337),
    .INIT_18(256'h3D19C9ED42A5D29D050B1CEC7EAA0D555A8C3EA2A37EDAF1A2B245FB93775991),
    .INIT_19(256'h5BDD18B8E67EBA398C5D0C8BA8D6B92D50359856110A75E271ED16349DA4BACB),
    .INIT_1A(256'h473AB70F890B32B09141F45054C7A940BFFE743DE3A60EC1A034E2A686005BDC),
    .INIT_1B(256'h91483E8EC2B2AA8DCD92119AA4CDFB3E164DEE73F0559A3CA6CBAC288DEE2422),
    .INIT_1C(256'hCB3D19C9ED42A5D29D050B1CEC7EAA0D555A8C3EA2A37EDAF1A2B245FB937759),
    .INIT_1D(256'hDC5BDD18B8E67EBA398C5D0C8BA8D6B92D50359856110A75E271ED16349DA4BA),
    .INIT_1E(256'h22473AB70F890B32B09141F45054C7A940BFFE743DE3A60EC1A034E2A686005B),
    .INIT_1F(256'h5991483E8EC2B2AA8DCD92119AA4CDFB3E164DEE73F0559A3CA6CBAC288DEE24),
    .INIT_20(256'hBACB3D19C9ED42A5D29D050B1CEC7EAA0D555A8C3EA2A37EDAF1A2B245FB9377),
    .INIT_21(256'h5BDC5BDD18B8E67EBA398C5D0C8BA8D6B92D50359856110A75E271ED16349DA4),
    .INIT_22(256'h2422473AB70F890B32B09141F45054C7A940BFFE743DE3A60EC1A034E2A68600),
    .INIT_23(256'h775991483E8EC2B2AA8DCD92119AA4CDFB3E164DEE73F0559A3CA6CBAC288DEE),
    .INIT_24(256'hA4BACB3D19C9ED42A5D29D050B1CEC7EAA0D555A8C3EA2A37EDAF1A2B245FB93),
    .INIT_25(256'h005BDC5BDD18B8E67EBA398C5D0C8BA8D6B92D50359856110A75E271ED16349D),
    .INIT_26(256'hEE2422473AB70F890B32B09141F45054C7A940BFFE743DE3A60EC1A034E2A686),
    .INIT_27(256'h93775991483E8EC2B2AA8DCD92119AA4CDFB3E164DEE73F0559A3CA6CBAC288D),
    .INIT_28(256'h9DA4BACB3D19C9ED42A5D29D050B1CEC7EAA0D555A8C3EA2A37EDAF1A2B245FB),
    .INIT_29(256'h86005BDC5BDD18B8E67EBA398C5D0C8BA8D6B92D50359856110A75E271ED1634),
    .INIT_2A(256'h8DEE2422473AB70F890B32B09141F45054C7A940BFFE743DE3A60EC1A034E2A6),
    .INIT_2B(256'hFB93775991483E8EC2B2AA8DCD92119AA4CDFB3E164DEE73F0559A3CA6CBAC28),
    .INIT_2C(256'h349DA4BACB3D19C9ED42A5D29D050B1CEC7EAA0D555A8C3EA2A37EDAF1A2B245),
    .INIT_2D(256'hA686005BDC5BDD18B8E67EBA398C5D0C8BA8D6B92D50359856110A75E271ED16),
    .INIT_2E(256'h288DEE2422473AB70F890B32B09141F45054C7A940BFFE743DE3A60EC1A034E2),
    .INIT_2F(256'h45FB93775991483E8EC2B2AA8DCD92119AA4CDFB3E164DEE73F0559A3CA6CBAC),
    .INIT_30(256'h16349DA4BACB3D19C9ED42A5D29D050B1CEC7EAA0D555A8C3EA2A37EDAF1A2B2),
    .INIT_31(256'hE2A686005BDC5BDD18B8E67EBA398C5D0C8BA8D6B92D50359856110A75E271ED),
    .INIT_32(256'hAC288DEE2422473AB70F890B32B09141F45054C7A940BFFE743DE3A60EC1A034),
    .INIT_33(256'hB245FB93775991483E8EC2B2AA8DCD92119AA4CDFB3E164DEE73F0559A3CA6CB),
    .INIT_34(256'hED16349DA4BACB3D19C9ED42A5D29D050B1CEC7EAA0D555A8C3EA2A37EDAF1A2),
    .INIT_35(256'h34E2A686005BDC5BDD18B8E67EBA398C5D0C8BA8D6B92D50359856110A75E271),
    .INIT_36(256'hCBAC288DEE2422473AB70F890B32B09141F45054C7A940BFFE743DE3A60EC1A0),
    .INIT_37(256'hA2B245FB93775991483E8EC2B2AA8DCD92119AA4CDFB3E164DEE73F0559A3CA6),
    .INIT_38(256'h71ED16349DA4BACB3D19C9ED42A5D29D050B1CEC7EAA0D555A8C3EA2A37EDAF1),
    .INIT_39(256'hA034E2A686005BDC5BDD18B8E67EBA398C5D0C8BA8D6B92D50359856110A75E2),
    .INIT_3A(256'hA6CBAC288DEE2422473AB70F890B32B09141F45054C7A940BFFE743DE3A60EC1),
    .INIT_3B(256'h54C7A940BFFE743DE3A60EC1A034E2A686005B9AA4CDFB3E164DEE73F0559A3C),
    .INIT_3C(256'hA4CDFB3E164DEE73F0559A3CA6CBAC288DEE2422473AB70F890B32B09141F450),
    .INIT_3D(256'hEC7EAA0D555A8C3EA2A37EDAF1A2B245FB93775991483E8EC2B2AA8DCD92119A),
    .INIT_3E(256'h8BA8D6B92D50359856110A75E271EDFC349DA4BACB3D19C9ED42A5D29D050B1C),
    .INIT_3F(256'h5054C7A940BFFE743DE3A60EC1A034E2A686005BDC5BDD18B8E67EBA398C5D0C),
    .INIT_40(256'h9AA4CDFB3E164DEE73F0559A3CA6CBAC288DEE2422473AB70F890B32B09141F4),
    .INIT_41(256'h1CEC7EAA0D555A8C3EA2A37EDAF1A2B245FB93775991483E8EC2B2AA8DCD9211),
    .INIT_42(256'h0C8BA8D6B92D50359856110A75E271ED16349DA4BACB3D19C9ED42A5D29D050B),
    .INIT_43(256'hF45054C7A940BFFE743DE3A60EC1A034E2A686005BDC5BDD18B8E67EBA398C5D),
    .INIT_44(256'h5B9AA4CDFB3E16FFEE73F0559A3CA6CBAC288DEE2422473AB70F890B32B09141),
    .INIT_45(256'h2422473AB70F890B32B09141F45054C7A940BFFE743DE3A60EC1A034E2A68600),
    .INIT_46(256'h775991483E8EC2B2AA8DCD92119AA4CDFB3E164DEE73F0559A3CA6CBAC288DEE),
    .INIT_47(256'hA4BACB3D19C9ED42A5D29D050B1CEC7EAA0D555A8C3EA2A37EDAF1A2B245FB93),
    .INIT_48(256'h005BDC5BDD18B8E67EBA398C5D0C8BA8D6B92D50359856110A75E271ED16349D),
    .INIT_49(256'hEE2422473AB70F890B32B09141F45054C7A940BFFE743DE3A60EC1A034E2A686),
    .INIT_4A(256'h93775991483E8EC2B2AA8DCD92119AA4CDFB3E164DEE73F0559A3CA6CBAC288D),
    .INIT_4B(256'h9DA4BACB3D19C9ED42A5D29D050B1CEC7EAA0D555A8C3EA2A37EDAF1A2B245FF),
    .INIT_4C(256'h86005BDC5BDD18B8E67EBA398C5D0C8BA8D6B92D50359856110A75E271ED1634),
    .INIT_4D(256'h8DEE2422473AB70F890B32B09141F45054C7A940BFFE743DE3A60EC1A034E2A6),
    .INIT_4E(256'h2579C3EA23CF9FE3F3785EFE5495A59AA4CDFB3E164DEE73F0559A3CA6CBAC28),
    .INIT_4F(256'hDFF5B60ECC3F03A3EF295A2603BC56D8682D1BD28FF5C1177FA41F6E315F1A67),
    .INIT_50(256'hB6C8DAB3E57EEECCCECE22C438A5716400AA2AFC6EFC742C7B729AAA41842883),
    .INIT_51(256'h7176A428E06D665CB87A6026360A49155C4B92A9B21549CFD04EADA83592992B),
    .INIT_52(256'hFD23CE1BE0651EB2E0A333B2CC5A04CD38F168BB09F54600C479F4F2495951A4),
    .INIT_53(256'h7367F0DEB563CC57AEEA69CADBAF886BF14EB2627713AADA6EFEE955A82A9A98),
    .INIT_54(256'h92691592AB1E1DFB139ADF31E8060A69FB2CDD3FE5FE7BC0DFBE22E236ECD7E2),
    .INIT_55(256'hA438EA332CB7553C2F28594F2AEDBA6E12CF817FA15D5298FE77F73DE44235B4),
    .INIT_56(256'hA41F6E315F1A672579C3EA23CF9FE3F3785EFE5495A5E546566B5C0E8716CA1F),
    .INIT_57(256'h729AAA41842883DFF5B60ECC3F03A3EF295A2603BC56D8682D1BD28FF5C1177F),
    .INIT_58(256'h4EADA83592992BB6C8DAB3E57EEECCCECE22C438A5716400AA2AFC6EFC742C7B),
    .INIT_59(256'h79F4F2495951A47176A428E06D665CB87A6026360A49155C4B92A9B21549CFD0),
    .INIT_5A(256'hFEE955A82A9A98FD23CE1BE0651EB2E0A333B2CC5A04CD38F168BB09F54600C4),
    .INIT_5B(256'hBE22E236ECD7E27367F0DEB563CC57AEEA69CADBAF886BF14EB2627713AADA6E),
    .INIT_5C(256'h77F73DE44235B492691592AB1E1DFB139ADF31E8060A69FB2CDD3FE5FE7BC0DF),
    .INIT_5D(256'h6B5C0E8716CA1FA438EA332CB7553C2F28594F2AEDBA6E12CF817FA15D5298FE),
    .INIT_5E(256'h1BD28FF5C1177FA41F6E315F1A672579C3EA23CF9FE3F3785EFE5495A5E54656),
    .INIT_5F(256'h2AFC6EFC742C7B729AAA41842883DFF5B60ECC3F03A3EF295A2603BC56D8682D),
    .INIT_60(256'h92A9B21549CFD04EADA83592992BB6C8DAB3E57EEECCCECE22C438A5716400AA),
    .INIT_61(256'h68BB09F54600C479F4F2495951A47176A428E06D665CB87A6026360A49155C4B),
    .INIT_62(256'hB2627713AADA6EFEE955A82A9A98FD23CE1BE0651EB2E0A333B2CC5A04CD38F1),
    .INIT_63(256'hDD3FE5FE7BC0DFBE22E236ECD7E27367F0DEB563CC57AEEA69CADBAF886BF14E),
    .INIT_64(256'h817FA15D5298FE77F73DE44235B492691592AB1E1DFB139ADF31E8060A69FB2C),
    .INIT_65(256'h32B09141E546566B5C0E8716CA1FA438EA332CB7553C2F28594F2AEDBA6E12CF),
    .INIT_66(256'hAA8DCD92119AA4CDFB3E164DEE73F0559A3CA6CBAC288DEE2422473AB70F890B),
    .INIT_67(256'hA5D29D050B1CEC7EAA0D555A8C3EA2A37EDAF1A2B245FB93775991483E8EC2B2),
    .INIT_68(256'h7EBA398C5D0C8BA8D6B92D50359856110A75E271ED16349DA4BACB3D19C9ED42),
    .INIT_69(256'h0B32B09141F45054C7A940BFFE743DE3A60EC1A034E2A686005BDC5BDD18B8E6),
    .INIT_6A(256'hB2AA8DCD92119AA4CDFB3E164DEE73F0559A3CA6CBAC288DEE2422473AB70F89),
    .INIT_6B(256'h42A5D29D050B1CEC7EAA0D555A8C3EA2A37EDAF1A2B245FB93775991483E8EC2),
    .INIT_6C(256'hE67EBA398C5D0C8BA8D6B92D50359856110A75E271ED16349DA4BACB3D19C9ED),
    .INIT_6D(256'h890B32B09141F45054C7A940BFFE743DE3A60EC1A034E2A686005BDC5BDD18B8),
    .INIT_6E(256'hC2B2AA8DCD92119AA4CDFB3E164DEE73F0559A3CA6CBAC288DEE2422473AB70F),
    .INIT_6F(256'hED42A5D29D050B1CEC7EAA0D555A8C3EA2A37EDAF1A2B245FB93775991483E8E),
    .INIT_70(256'h98FE77F73DE44235B492691592AB1E1DFB139ADF31E8ED16349DA4BACB3D19C9),
    .INIT_71(256'h46566B5C0E8716CA1FA438EA332CB7553C2F28594F2AEDBA6E12CF817FA15D52),
    .INIT_72(256'h682D1BD28FF5C1177FA41F6E315F1A672579C3EA23CF9FE3F3785EFE5495A5E5),
    .INIT_73(256'h00AA2AFC6EFC742C7B729AAA41842883DFF5B60ECC3F03A3EF295A2603BC56D8),
    .INIT_74(256'h5C4B92A9B21549CFD04EADA83592992BB6C8DAB3E57EEECCCECE22C438A57164),
    .INIT_75(256'h38F168BB09F54600C479F4F2495951A47176A428E06D665CB87A6026360A4915),
    .INIT_76(256'hF14EB2627713AADA6EFEE955A82A9A98FD23CE1BE0651EB2E0A333B2CC5A04CD),
    .INIT_77(256'hFB2CDD3FE5FE7BC0DFBE22E236ECD7E27367F0DEB563CC57AEEA69CADBAF886B),
    .INIT_78(256'h12CF817FA15D5298FE77F73DE44235B492691592AB1E1DFB139ADF31E8060A69),
    .INIT_79(256'h890B32B09141E546566B5C0E8716CA1FA438EA332CB7553C2F28594F2AEDBA6E),
    .INIT_7A(256'hC2B2AA8DCD92119AA4CDFB3E164DEE73F0559A3CA6CBAC288DEE2422473AB70F),
    .INIT_7B(256'hED42A5D29D050B1CEC7EAA0D555A8C3EA2A37EDAF1A2B245FB93775991483E8E),
    .INIT_7C(256'hB8E67EBA398C5D0C8BA8D6B92D50359856110A75E271ED16349DA4BACB3D19C9),
    .INIT_7D(256'h0F890B32B09141F45054C7A940BFFE743DE3A60EC1A034E2A686005BDC5BDD18),
    .INIT_7E(256'h8EC2B2AA8DCD92119AA4CDFB3E164DEE73F0559A3CA6CBAC288DEE2422473AB7),
    .INIT_7F(256'hC9ED42A5D29D050B1CEC7EAA0D555A8C3EA2A37EDAF1A2B245FB93775991483E),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [11:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hB943B77A0BB54B6196380F23866CFE7D8AFE9F64218EE872E0F6EB656F2F26FB),
    .INITP_01(256'h8AFE9F64218EE872E02C701E470CD9FDB79C325EE735920247F5595EB0A66E33),
    .INITP_02(256'h62BFA7D90863BA1CB83DBAD95BCBC9BEC57F4FB210C77439707B75B2B797937D),
    .INITP_03(256'h6DE70C97B9CD648091FD5657AC299B8CEE50EDDE82ED52D8658E03C8E19B3F9F),
    .INITP_04(256'h0000000000000000001EDD6CADE5E4DF62BFA7D90863BA1CB80B1C0791C3367F),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h18B8E67EBA398C5D0C8BA8D6B92D50359856110A75E271ED16349DA4BACB3D19),
    .INIT_01(256'hB70F890B32B09141F45054C7A940BFFE743DE3A60EC1A034E2A686005BDC5BDD),
    .INIT_02(256'h3E8EC2B2AA8DCD92119AA4CDFB3E164DEE73F0559A3CA6CBAC288DEE2422473A),
    .INIT_03(256'h19C9ED42A5D29D050B1CEC7EAA0D555A8C3EA2A37EDAF1A2B245FB9377599148),
    .INIT_04(256'h5D5298FE77F73DE44235B492691592AB1E1DFB139ADF31E8ED16349DA4BACB3D),
    .INIT_05(256'hA5E546566B5C0E8716CA1FA438EA332CB7553C2F28594F2AEDBA6E12CF817FA1),
    .INIT_06(256'h56D8682D1BD28FF5C1177FA41F6E315F1A672579C3EA23CF9FE3F3785EFE5495),
    .INIT_07(256'h716400AA2AFC6EFC742C7B729AAA41842883DFF5B60ECC3F03A3EF295A2603BC),
    .INIT_08(256'h49155C4B92A9B21549CFD04EADA83592992BB6C8DAB3E57EEECCCECE22C438A5),
    .INIT_09(256'h04CD38F168BB09F54600C479F4F2495951A47176A428E06D665CB87A6026360A),
    .INIT_0A(256'h886BF14EB2627713AADA6EFEE955A82A9A98FD23CE1BE0651EB2E0A333B2CC5A),
    .INIT_0B(256'h0A69FB2CDD3FE5FE7BC0DFBE22E236ECD7E27367F0DEB563CC57AEEA69CADBAF),
    .INIT_0C(256'hBA6E12CF817FA15D5298FE77F73DE44235B492691592AB1E1DFB139ADF31E806),
    .INIT_0D(256'hB70F890B32B09141E546566B5C0E8716CA1FA438EA332CB7553C2F28594F2AED),
    .INIT_0E(256'h3E8EC2B2AA8DCD92119AA4CDFB3E164DEE73F0559A3CA6CBAC288DEE2422473A),
    .INIT_0F(256'h19C9ED42A5D29D050B1CEC7EAA0D555A8C3EA2A37EDAF1A2B245FB9377599148),
    .INIT_10(256'hDD18B8E67EBA398C5D0C8BA8D6B92D50359856110A75E271ED16349DA4BACB3D),
    .INIT_11(256'h3AB70F890B32B09141F45054C7A940BFFE743DE3A60EC1A034E2A686005BDC5B),
    .INIT_12(256'h483E8EC2B2AA8DCD92119AA4CDFB3E164DEE73F0559A3CA6CBAC288DEE242247),
    .INIT_13(256'h3D19C9ED42A5D29D050B1CEC7EAA0D555A8C3EA2A37EDAF1A2B245FB93775991),
    .INIT_14(256'h5BDD18B8E67EBA398C5D0C8BA8D6B92D50359856110A75E271ED16349DA4BACB),
    .INIT_15(256'h473AB70F890B32B09141F45054C7A940BFFE743DE3A60EC1A034E2A686005BDC),
    .INIT_16(256'h91483E8EC2B2AA8DCD92119AA4CDFB3E164DEE73F0559A3CA6CBAC288DEE2422),
    .INIT_17(256'hCB3D19C9ED42A5D29D050B1CEC7EAA0D555A8C3EA2A37EDAF1A2B245FB937759),
    .INIT_18(256'h7FA15D5298FE77F73DE44235B492691592AB1E1DFB139ADF31E8ED16349DA4BA),
    .INIT_19(256'h5495A5E546566B5C0E8716CA1FA438EA332CB7553C2F28594F2AEDBA6E12CF81),
    .INIT_1A(256'h03BC56D8682D1BD28FF5C1177FA41F6E315F1A672579C3EA23CF9FE3F3785EFE),
    .INIT_1B(256'h38A5716400AA2AFC6EFC742C7B729AAA41842883DFF5B60ECC3F03A3EF295A26),
    .INIT_1C(256'h360A49155C4B92A9B21549CFD04EADA83592992BB6C8DAB3E57EEECCCECE22C4),
    .INIT_1D(256'hCC5A04CD38F168BB09F54600C479F4F2495951A47176A428E06D665CB87A6026),
    .INIT_1E(256'hDBAF886BF14EB2627713AADA6EFEE955A82A9A98FD23CE1BE0651EB2E0A333B2),
    .INIT_1F(256'hE8060A69FB2CDD3FE5FE7BC0DFBE22E236ECD7E27367F0DEB563CC57AEEA69CA),
    .INIT_20(256'h2AEDBA6E12CF817FA15D5298FE77F73DE44235B492691592AB1E1DFB139ADF31),
    .INIT_21(256'h473AB70F890B32B09141E546566B5C0E8716CA1FA438EA332CB7553C2F28594F),
    .INIT_22(256'h91483E8EC2B2AA8DCD92119AA4CDFB3E164DEE73F0559A3CA6CBAC288DEE2422),
    .INIT_23(256'hCB3D19C9ED42A5D29D050B1CEC7EAA0D555A8C3EA2A37EDAF1A2B245FB937759),
    .INIT_24(256'hDC5BDD18B8E67EBA398C5D0C8BA8D6B92D50359856110A75E271ED16349DA4BA),
    .INIT_25(256'h581808B8400858D890F878F75054C7A940BFFE743DE3A60EC1A034E2A686005B),
    .INIT_26(256'hA00810F8C0C838B8A8901808A07020A0F808D8B87838404800A898D810A81840),
    .INIT_27(256'h5830984048D010286020D848C06838A820D8D008C06850F8487880A878F870B8),
    .INIT_28(256'h38C83850B8281828C000382858C008C06810D890B8507080E8A0D0B8D06828D8),
    .INIT_29(256'hB8486808904830F81870E878881840906060B0B088D09840F038C0680018A8D0),
    .INIT_2A(256'h78D0E0903800B030B0607878F890B0A060D090F85008102070A0B000C0D8A860),
    .INIT_2B(256'h1018B08878D87808D8905040D8F890D07060803050D8C0F0788840D0A0602810),
    .INIT_2C(256'h88F028782838E0B0C0F0A0A098A8F848308050483048302040D06858402020E0),
    .INIT_2D(256'h7058B0D8B0C03078980068E89048C8A8D0A880D8389838B018A8B068F0988818),
    .INIT_2E(256'h3808E86058609098B068C050E898F0B828D8B09800A058D0808008F01060A080),
    .INIT_2F(256'h5010C0B07808E080608050E0F0106848D8F020F8A8E01010E090109868E82010),
    .INIT_30(256'h48402820083890A8488018B828905848D8887040E89898687820106828A898C0),
    .INIT_31(256'h28C86860A0A8A03850C820401020B8A0703060B880B0701858F8F02078F06050),
    .INIT_32(256'h08808070A8487868A8F83890F0B8C060C00820D05870F890C848607850708880),
    .INIT_33(256'h40D0381098D88018C828580030F890C080F8389810406810F8B040D0D0500870),
    .INIT_34(256'h0058A880F0F890A83818B058B8B840A080A018D8E060E0A0F8481098D018B020),
    .INIT_35(256'h00B8485038185048D020A8580860304888A068B0C0382028F070E8909050D0B8),
    .INIT_36(256'h30700820F818B018904078682020B828C8082088E8B0A0B84068780838B0D030),
    .INIT_37(256'h987068203088300840F038803018D808289848B8F818984820D83840B0E058D0),
    .INIT_38(256'h30606820F010A8B068D878E8B03860C098F8C8E08090B8D8380050F05030F850),
    .INIT_39(256'h30A0B0209810E0A82098D880A020D068A048680050F0F090C8684808C0B80858),
    .INIT_3A(256'h18C060F0D8E09848E08838B0C8E038C86030E03800C068000090887810C070F8),
    .INIT_3B(256'hD0A8285830F0D088F0A8688090702800C870D09020388840A84898284088B8D8),
    .INIT_3C(256'h48D88828F058008868206810C84880F0E8B88808402878A8B0484868D8101868),
    .INIT_3D(256'hE840E0A05888D0D048E0B81838B8A8E81858F808201838687890386090F01848),
    .INIT_3E(256'hF808907080F8E01888A0281830F8D8D0A828B8006070F0E8C83010A8303098B0),
    .INIT_3F(256'h90C080B81898880048F8709800803098F0502020F840E8C060A020904898F020),
    .INIT_40(256'h1010C0788898F80850C8E038001098C0908828A8C810A018A880C8F8A00830D8),
    .INIT_41(256'h8818D8F8001858A0C80828D8001880E858B01800B8C0D8E8480040E038509800),
    .INIT_42(256'h38B8783888C0081828002090D810E05858F8D07850F828B898E0F8F0A090D8C0),
    .INIT_43(256'h20802008E058C8E860A8D870A048D8F06010F04028E0C878C0E8F8F8A87838D0),
    .INIT_44(256'hD890F878889890D80070C0181820403880C078D00838786828D020E0B0A030C0),
    .INIT_45(256'hB8A8901808A07020A0F808D8B87838404800A898D810A81840581808B8400858),
    .INIT_46(256'h286020D848C06838A820D8D008C06850F8487880A878F870B8A00810F8C0C838),
    .INIT_47(256'h28C000382858C008C06810D890B8507080E8A0D0B8D06828D85830984048D010),
    .INIT_48(256'hF81870E878881840906060B0B088D09840F038C0680018A8D038C83850B82818),
    .INIT_49(256'h30B0607878F890B0A060D090F85008102070A0B000C0D8A860B8486808904830),
    .INIT_4A(256'h08D8905040D8F890D07060803050D8C0F0788840D0A060281078D0E0903800B0),
    .INIT_4B(256'hB0C0F0A0A098A8F848308050483048302040D06858402020E01018B08878D878),
    .INIT_4C(256'h78980068E89048C8A8D0A880D8389838B018A8B068F098881888F028782838E0),
    .INIT_4D(256'h98B068C050E898F0B828D8B09800A058D0808008F01060A0807058B0D8B0C030),
    .INIT_4E(256'h80608050E0F0106848D8F020F8A8E01010E090109868E820103808E860586090),
    .INIT_4F(256'hA8488018B828905848D8887040E89898687820106828A898C05010C0B07808E0),
    .INIT_50(256'h3850C820401020B8A0703060B880B0701858F8F02078F0605048402820083890),
    .INIT_51(256'h68A8F83890F0B8C060C00820D05870F890C84860785070888028C86860A0A8A0),
    .INIT_52(256'h18C828580030F890C080F8389810406810F8B040D0D050087008808070A84878),
    .INIT_53(256'hA83818B058B8B840A080A018D8E060E0A0F8481098D018B02040D0381098D880),
    .INIT_54(256'h48D020A8580860304888A068B0C0382028F070E8909050D0B80058A880F0F890),
    .INIT_55(256'h18904078682020B828C8082088E8B0A0B84068780838B0D03000B84850381850),
    .INIT_56(256'h0840F038803018D808289848B8F818984820D83840B0E058D030700820F818B0),
    .INIT_57(256'hB068D878E8B03860C098F8C8E08090B8D8380050F05030F85098706820308830),
    .INIT_58(256'hA82098D880A020D068A048680050F0F090C8684808C0B8085830606820F010A8),
    .INIT_59(256'h48E08838B0C8E038C86030E03800C068000090887810C070F830A0B0209810E0),
    .INIT_5A(256'h88F0A8688090702800C870D09020388840A84898284088B8D818C060F0D8E098),
    .INIT_5B(256'h8868206810C84880F0E8B88808402878A8B0484868D8101868D0A8285830F0D0),
    .INIT_5C(256'hD048E0B81838B8A8E81858F808201838687890386090F0184848D88828F05800),
    .INIT_5D(256'h1888A0281830F8D8D0A828B8006070F0E8C83010A8303098B0E840E0A05888D0),
    .INIT_5E(256'h0048F8709800803098F0502020F840E8C060A020904898F020F808907080F8E0),
    .INIT_5F(256'h0850C8E038001098C0908828A8C810A018A880C8F8A00830D890C080B8189888),
    .INIT_60(256'hA0C80828D8001880E858B01800B8C0D8E8480040E0385098001010C0788898F8),
    .INIT_61(256'h1828002090D810E05858F8D07850F828B898E0F8F0A090D8C08818D8F8001858),
    .INIT_62(256'hE860A8D870A048D8F06010F04028E0C878C0E8F8F8A87838D038B8783888C008),
    .INIT_63(256'hD80070C0181820403880C078D00838786828D020E0B0A030C020802008E058C8),
    .INIT_64(256'h20A0F808D8B87838404800A898D810A81840581808B8400858D890F878889890),
    .INIT_65(256'h38A820D8D008C06850F8487880A878F870B8A00810F8C0C838B8A8901808A070),
    .INIT_66(256'h08C06810D890B8507080E8A0D0B8D06828D85830984048D010286020D848C068),
    .INIT_67(256'h40906060B0B088D09840F038C0680018A8D038C83850B8281828C000382858C0),
    .INIT_68(256'hB0A060D090F85008102070A0B000C0D8A860B8486808904830F81870E8788818),
    .INIT_69(256'h90D07060803050D8C0F0788840D0A060281078D0E0903800B030B0607878F890),
    .INIT_6A(256'hF848308050483048302040D06858402020E01018B08878D87808D8905040D8F8),
    .INIT_6B(256'hC8A8D0A880D8389838B018A8B068F098881888F028782838E0B0C0F0A0A098A8),
    .INIT_6C(256'hF0B828D8B09800A058D0808008F01060A0807058B0D8B0C03078980068E89048),
    .INIT_6D(256'h6848D8F020F8A8E01010E090109868E820103808E86058609098B068C050E898),
    .INIT_6E(256'h5848D8887040E89898687820106828A898C05010C0B07808E080608050E0F010),
    .INIT_6F(256'hB8A0703060B880B0701858F8F02078F0605048402820083890A8488018B82890),
    .INIT_70(256'hC060C00820D05870F890C84860785070888028C86860A0A8A03850C820401020),
    .INIT_71(256'h90C080F8389810406810F8B040D0D050087008808070A8487868A8F83890F0B8),
    .INIT_72(256'h40A080A018D8E060E0A0F8481098D018B02040D0381098D88018C828580030F8),
    .INIT_73(256'h304888A068B0C0382028F070E8909050D0B80058A880F0F890A83818B058B8B8),
    .INIT_74(256'hB828C8082088E8B0A0B84068780838B0D03000B8485038185048D020A8580860),
    .INIT_75(256'hD808289848B8F818984820D83840B0E058D030700820F818B018904078682020),
    .INIT_76(256'h60C098F8C8E08090B8D8380050F05030F850987068203088300840F038803018),
    .INIT_77(256'hD068A048680050F0F090C8684808C0B8085830606820F010A8B068D878E8B038),
    .INIT_78(256'h38C86030E03800C068000090887810C070F830A0B0209810E0A82098D880A020),
    .INIT_79(256'h2800C870D09020388840A84898284088B8D818C060F0D8E09848E08838B0C8E0),
    .INIT_7A(256'h80F0E8B88808402878A8B0484868D8101868D0A8285830F0D088F0A868809070),
    .INIT_7B(256'hA8E81858F808201838687890386090F0184848D88828F058008868206810C848),
    .INIT_7C(256'hD8D0A828B8006070F0E8C83010A8303098B0E840E0A05888D0D048E0B81838B8),
    .INIT_7D(256'h3098F0502020F840E8C060A020904898F020F808907080F8E01888A0281830F8),
    .INIT_7E(256'h98C0908828A8C810A018A880C8F8A00830D890C080B81898880048F870980080),
    .INIT_7F(256'h80E858B01800B8C0D8E8480040E0385098001010C0788898F80850C8E0380010),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [11:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hE05858F8D07850F828B898E0F8F0A090D8C08818D8F8001858A0C80828D80018),
    .INIT_01(256'hD8F06010F04028E0C878C0E8F8F8A87838D038B8783888C0081828002090D810),
    .INIT_02(256'h403880C078D00838786828D020E0B0A030C020802008E058C8E860A8D870A048),
    .INIT_03(256'hD03000B8485038185048D020A8580860304888A068B0889890D80070C0181820),
    .INIT_04(256'h58D030700820F818B018904078682020B828C8082088E8B0A0B84068780838B0),
    .INIT_05(256'hF850987068203088300840F038803018D808289848B8F818984820D83840B0E0),
    .INIT_06(256'h085830606820F010A8B068D878E8B03860C098F8C8E08090B8D8380050F05030),
    .INIT_07(256'h70F830A0B0209810E0A82098D880A020D068A048680050F0F090C8684808C0B8),
    .INIT_08(256'hB8D818C060F0D8E09848E08838B0C8E038C86030E03800C068000090887810C0),
    .INIT_09(256'h1868D0A8285830F0D088F0A8688090702800C870D09020388840A84898284088),
    .INIT_0A(256'h184848D88828F058008868206810C84880F0E8B88808402878A8B0484868D810),
    .INIT_0B(256'h98B0E840E0A05888D0D048E0B81838B8A8E81858F808201838687890386090F0),
    .INIT_0C(256'hF020F808907080F8E01888A0281830F8D8D0A828B8006070F0E8C83010A83030),
    .INIT_0D(256'h30D890C080B81898880048F8709800803098F0502020F840E8C060A020904898),
    .INIT_0E(256'h98001010C0788898F80850C8E038001098C0908828A8C810A018A880C8F8A008),
    .INIT_0F(256'hD8C08818D8F8001858A0C80828D8001880E858B01800B8C0D8E8480040E03850),
    .INIT_10(256'h38D038B8783888C0081828002090D810E05858F8D07850F828B898E0F8F0A090),
    .INIT_11(256'h30C020802008E058C8E860A8D870A048D8F06010F04028E0C878C0E8F8F8A878),
    .INIT_12(256'h304888A068B0889890D80070C0181820403880C078D00838786828D020E0B0A0),
    .INIT_13(256'hB828C8082088E8B0A0B84068780838B0D03000B8485038185048D020A8580860),
    .INIT_14(256'hD808289848B8F818984820D83840B0E058D030700820F818B018904078682020),
    .INIT_15(256'h60C098F8C8E08090B8D8380050F05030F850987068203088300840F038803018),
    .INIT_16(256'hD068A048680050F0F090C8684808C0B8085830606820F010A8B068D878E8B038),
    .INIT_17(256'h38C86030E03800C068000090887810C070F830A0B0209810E0A82098D880A020),
    .INIT_18(256'h2800C870D09020388840A84898284088B8D818C060F0D8E09848E08838B0C8E0),
    .INIT_19(256'h80F0E8B88808402878A8B0484868D8101868D0A8285830F0D088F0A868809070),
    .INIT_1A(256'hA8E81858F808201838687890386090F0184848D88828F058008868206810C848),
    .INIT_1B(256'hD8D0A828B8006070F0E8C83010A8303098B0E840E0A05888D0D048E0B81838B8),
    .INIT_1C(256'h3098F0502020F840E8C060A020904898F020F808907080F8E01888A0281830F8),
    .INIT_1D(256'h98C0908828A8C810A018A880C8F8A00830D890C080B81898880048F870980080),
    .INIT_1E(256'h80E858B01800B8C0D8E8480040E0385098001010C0788898F80850C8E0380010),
    .INIT_1F(256'hE05858F8D07850F828B898E0F8F0A090D8C08818D8F8001858A0C80828D80018),
    .INIT_20(256'hD8F06010F04028E0C878C0E8F8F8A87838D038B8783888C0081828002090D810),
    .INIT_21(256'h403880C078D00838786828D020E0B0A030C020802008E058C8E860A8D870A048),
    .INIT_22(256'hD03000B8485038185048D020A8580860304888A068B0889890D80070C0181820),
    .INIT_23(256'h58D030700820F818B018904078682020B828C8082088E8B0A0B84068780838B0),
    .INIT_24(256'hF850987068203088300840F038803018D808289848B8F818984820D83840B0E0),
    .INIT_25(256'h085830606820F010A8B068D878E8B03860C098F8C8E08090B8D8380050F05030),
    .INIT_26(256'h70F830A0B0209810E0A82098D880A020D068A048680050F0F090C8684808C0B8),
    .INIT_27(256'hB8D818C060F0D8E09848E08838B0C8E038C86030E03800C068000090887810C0),
    .INIT_28(256'h1868D0A8285830F0D088F0A8688090702800C870D09020388840A84898284088),
    .INIT_29(256'h184848D88828F058008868206810C84880F0E8B88808402878A8B0484868D810),
    .INIT_2A(256'h98B0E840E0A05888D0D048E0B81838B8A8E81858F808201838687890386090F0),
    .INIT_2B(256'hF020F808907080F8E01888A0281830F8D8D0A828B8006070F0E8C83010A83030),
    .INIT_2C(256'h30D890C080B81898880048F8709800803098F0502020F840E8C060A020904898),
    .INIT_2D(256'h98001010C0788898F80850C8E038001098C0908828A8C810A018A880C8F8A008),
    .INIT_2E(256'hD8C08818D8F8001858A0C80828D8001880E858B01800B8C0D8E8480040E03850),
    .INIT_2F(256'h38D038B8783888C0081828002090D810E05858F8D07850F828B898E0F8F0A090),
    .INIT_30(256'h30C020802008E058C8E860A8D870A048D8F06010F04028E0C878C0E8F8F8A878),
    .INIT_31(256'h304888A068B0889890D80070C0181820403880C078D00838786828D020E0B0A0),
    .INIT_32(256'hB828C8082088E8B0A0B84068780838B0D03000B8485038185048D020A8580860),
    .INIT_33(256'hD808289848B8F818984820D83840B0E058D030700820F818B018904078682020),
    .INIT_34(256'h60C098F8C8E08090B8D8380050F05030F850987068203088300840F038803018),
    .INIT_35(256'hD068A048680050F0F090C8684808C0B8085830606820F010A8B068D878E8B038),
    .INIT_36(256'h38C86030E03800C068000090887810C070F830A0B0209810E0A82098D880A020),
    .INIT_37(256'h2800C870D09020388840A84898284088B8D818C060F0D8E09848E08838B0C8E0),
    .INIT_38(256'h80F0E8B88808402878A8B0484868D8101868D0A8285830F0D088F0A868809070),
    .INIT_39(256'hA8E81858F808201838687890386090F0184848D88828F058008868206810C848),
    .INIT_3A(256'hD8D0A828B8006070F0E8C83010A8303098B0E840E0A05888D0D048E0B81838B8),
    .INIT_3B(256'h3098F0502020F840E8C060A020904898F020F808907080F8E01888A0281830F8),
    .INIT_3C(256'h98C0908828A8C810A018A880C8F8A00830D890C080B81898880048F870980080),
    .INIT_3D(256'h80E858B01800B8C0D8E8480040E0385098001010C0788898F80850C8E0380010),
    .INIT_3E(256'hE05858F8D07850F828B898E0F8F0A090D8C08818D8F8001858A0C80828D80018),
    .INIT_3F(256'hD8F06010F04028E0C878C0E8F8F8A87838D038B8783888C0081828002090D810),
    .INIT_40(256'h403880C078D00838786828D020E0B0A030C020802008E058C8E860A8D870A048),
    .INIT_41(256'hD03000B8485038185048D020A8580860304888A068B0889890D80070C0181820),
    .INIT_42(256'h58D030700820F818B018904078682020B828C8082088E8B0A0B84068780838B0),
    .INIT_43(256'hF850987068203088300840F038803018D808289848B8F818984820D83840B0E0),
    .INIT_44(256'h085830606820F010A8B068D878E8B03860C098F8C8E08090B8D8380050F05030),
    .INIT_45(256'h70F830A0B0209810E0A82098D880A020D068A048680050F0F090C8684808C0B8),
    .INIT_46(256'hB8D818C060F0D8E09848E08838B0C8E038C86030E03800C068000090887810C0),
    .INIT_47(256'h1868D0A8285830F0D088F0A8688090702800C870D09020388840A84898284088),
    .INIT_48(256'h184848D88828F058008868206810C84880F0E8B88808402878A8B0484868D810),
    .INIT_49(256'h98B0E840E0A05888D0D048E0B81838B8A8E81858F808201838687890386090F0),
    .INIT_4A(256'hF020F808907080F8E01888A0281830F8D8D0A828B8006070F0E8C83010A83030),
    .INIT_4B(256'h30D890C080B81898880048F8709800803098F0502020F840E8C060A020904898),
    .INIT_4C(256'h98001010C0788898F80850C8E038001098C0908828A8C810A018A880C8F8A008),
    .INIT_4D(256'hD8C08818D8F8001858A0C80828D8001880E858B01800B8C0D8E8480040E03850),
    .INIT_4E(256'h38D038B8783888C0081828002090D810E05858F8D07850F828B898E0F8F0A090),
    .INIT_4F(256'h30C020802008E058C8E860A8D870A048D8F06010F04028E0C878C0E8F8F8A878),
    .INIT_50(256'h304888A068B0889890D80070C0181820403880C078D00838786828D020E0B0A0),
    .INIT_51(256'hB828C8082088E8B0A0B84068780838B0D03000B8485038185048D020A8580860),
    .INIT_52(256'hD808289848B8F818984820D83840B0E058D030700820F818B018904078682020),
    .INIT_53(256'h60C098F8C8E08090B8D8380050F05030F850987068203088300840F038803018),
    .INIT_54(256'hD068A048680050F0F090C8684808C0B8085830606820F010A8B068D878E8B038),
    .INIT_55(256'h38C86030E03800C068000090887810C070F830A0B0209810E0A82098D880A020),
    .INIT_56(256'h2800C870D09020388840A84898284088B8D818C060F0D8E09848E08838B0C8E0),
    .INIT_57(256'h80F0E8B88808402878A8B0484868D8101868D0A8285830F0D088F0A868809070),
    .INIT_58(256'hA8E81858F808201838687890386090F0184848D88828F058008868206810C848),
    .INIT_59(256'hD8D0A828B8006070F0E8C83010A8303098B0E840E0A05888D0D048E0B81838B8),
    .INIT_5A(256'h3098F0502020F840E8C060A020904898F020F808907080F8E01888A0281830F8),
    .INIT_5B(256'h98C0908828A8C810A018A880C8F8A00830D890C080B81898880048F870980080),
    .INIT_5C(256'h80E858B01800B8C0D8E8480040E0385098001010C0788898F80850C8E0380010),
    .INIT_5D(256'hE05858F8D07850F828B898E0F8F0A090D8C08818D8F8001858A0C80828D80018),
    .INIT_5E(256'hD8F06010F04028E0C878C0E8F8F8A87838D038B8783888C0081828002090D810),
    .INIT_5F(256'h403880C078D00838786828D020E0B0A030C020802008E058C8E860A8D870A048),
    .INIT_60(256'hD03000B8485038185048D020A8580860304888A068B0889890D80070C0181820),
    .INIT_61(256'h58D030700820F818B018904078682020B828C8082088E8B0A0B84068780838B0),
    .INIT_62(256'hF850987068203088300840F038803018D808289848B8F818984820D83840B0E0),
    .INIT_63(256'h085830606820F010A8B068D878E8B03860C098F8C8E08090B8D8380050F05030),
    .INIT_64(256'h70F830A0B0209810E0A82098D880A020D068A048680050F0F090C8684808C0B8),
    .INIT_65(256'hB8D818C060F0D8E09848E08838B0C8E038C86030E03800C068000090887810C0),
    .INIT_66(256'h1868D0A8285830F0D088F0A8688090702800C870D09020388840A84898284088),
    .INIT_67(256'h184848D88828F058008868206810C84880F0E8B88808402878A8B0484868D810),
    .INIT_68(256'h98B0E840E0A05888D0D048E0B81838B8A8E81858F808201838687890386090F0),
    .INIT_69(256'hF020F808907080F8E01888A0281830F8D8D0A828B8006070F0E8C83010A83030),
    .INIT_6A(256'h30D890C080B81898880048F8709800803098F0502020F840E8C060A020904898),
    .INIT_6B(256'h98001010C0788898F80850C8E038001098C0908828A8C810A018A880C8F8A008),
    .INIT_6C(256'hD8C08818D8F8001858A0C80828D8001880E858B01800B8C0D8E8480040E03850),
    .INIT_6D(256'h38D038B8783888C0081828002090D810E05858F8D07850F828B898E0F8F0A090),
    .INIT_6E(256'h30C020802008E058C8E860A8D870A048D8F06010F04028E0C878C0E8F8F8A878),
    .INIT_6F(256'h304888A068B0889890D80070C0181820403880C078D00838786828D020E0B0A0),
    .INIT_70(256'hB828C8082088E8B0A0B84068780838B0D03000B8485038185048D020A8580860),
    .INIT_71(256'hD808289848B8F818984820D83840B0E058D030700820F818B018904078682020),
    .INIT_72(256'h60C098F8C8E08090B8D8380050F05030F850987068203088300840F038803018),
    .INIT_73(256'hD068A048680050F0F090C8684808C0B8085830606820F010A8B068D878E8B038),
    .INIT_74(256'h38C86030E03800C068000090887810C070F830A0B0209810E0A82098D880A020),
    .INIT_75(256'h2800C870D09020388840A84898284088B8D818C060F0D8E09848E08838B0C8E0),
    .INIT_76(256'h80F0E8B88808402878A8B0484868D8101868D0A8285830F0D088F0A868809070),
    .INIT_77(256'hA8E81858F808201838687890386090F0184848D88828F058008868206810C848),
    .INIT_78(256'hD8D0A828B8006070F0E8C83010A8303098B0E840E0A05888D0D048E0B81838B8),
    .INIT_79(256'h3098F0502020F840E8C060A020904898F020F808907080F8E01888A0281830F8),
    .INIT_7A(256'h98C0908828A8C810A018A880C8F8A00830D890C080B81898880048F870980080),
    .INIT_7B(256'h80E858B01800B8C0D8E8480040E0385098001010C0788898F80850C8E0380010),
    .INIT_7C(256'hE05858F8D07850F828B898E0F8F0A090D8C08818D8F8001858A0C80828D80018),
    .INIT_7D(256'hD8F06010F04028E0C878C0E8F8F8A87838D038B8783888C0081828002090D810),
    .INIT_7E(256'h403880C078D00838786828D020E0B0A030C020802008E058C8E860A8D870A048),
    .INIT_7F(256'h00000000000000000000000000000000000000000000889890D80070C0181820),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module DATA_SRAM_blk_mem_gen_prim_wrapper_init__parameterized9
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h866F120493329ED2539AAA514E282B07025CF0D21E33732036C6D98CB4432880),
    .INITP_01(256'hD70BE4F7024CCBABD4498E8DBD611B31700A74730765FF7B7705B87EBAEDA3B5),
    .INITP_02(256'h8FA50537E3F4EFC8BC9361CF040CF5601967F2B6B7C90558E65B4333F47761A1),
    .INITP_03(256'h23E95ADC3376306E0978ED80DEA34B8C47D2B5B866EC60DC12F1DB01BD469718),
    .INITP_04(256'h88FA56B70CDD8C1B825E3B6037A8D2E311F4AD6E19BB183704BC76C06F51A5C6),
    .INITP_05(256'h623E95ADC3376306E0978ED80DEA34B8C47D2B5B866EC60DC12F1DB01BD46971),
    .INITP_06(256'h188FA56B70CDD8C1B825E3B6037A8D2E311F4AD6E19BB183704BC76C06F51A5C),
    .INITP_07(256'h6306E0978ED80DEA34B8C47D2B5B866EC60DD2B5B866EC60DC12F1DB01BD4697),
    .INITP_08(256'h37A8D2E311F4AD6E19BB18374AD6E19BB183704BC76C06F51A5C623E95ADC337),
    .INITP_09(256'h653DA4A735552B5B866EC60DC12F1DB01BD4697088FA56B70CDD8C1B825E3B60),
    .INITP_0A(256'h4CCA7B494E6AAB7AC23662E014E8E60ECBFEF6EE0B70FD75DB476B0CDE250926),
    .INITP_0B(256'h249994F6929CD556F5846CC5C029D1CC1D97FDEDDC16E1FAEBB68ED619BC4A12),
    .INITP_0C(256'hA8D2E311F4AD6E19BDEB08D98B8053A3983B2FFBDBB82DC3F5D76D1DAC337894),
    .INITP_0D(256'hEA34B8C47D2B5B866EC60DC12F1DB01BD4697188FA56B70CDD8C1B825E3B6037),
    .INITP_0E(256'hE60ECBFEF6EE0B70FD75DB476B0CDE250926653DA4A73555BD611B31700A740D),
    .INITP_0F(256'hF51A5C623E95ADC3376306E0978ED80DEA34B8C47D2B5B866F7AC23662E014E8),
    .INIT_00(256'h91050A766269821E3C510D83E0C1813E23F48A4293F12C9CB49096F802000000),
    .INIT_01(256'h826592922549652D6682D1C58E1DB4548073E88097C992D915B4D4E5830266C9),
    .INIT_02(256'hED23963E312596865F69F65F3687032ADB1877AF199F82989D0DA408C4F83306),
    .INIT_03(256'hF3251E7CD0621318CBF1651D2F877A913479B5A3000005612135DCA5016CF84F),
    .INIT_04(256'hD439A9601E72264896DD054CE3DA851957585CC8227B882411D9980B3E324497),
    .INIT_05(256'h3EF6AE01B1724888D1046C39AFFBBB4059886D5A0F5A9007F55F33CBEBA539C9),
    .INIT_06(256'hD74106AE85081DF06A1CE79EAC7CDDCCCD371D2F542E33CE3C763468330CB377),
    .INIT_07(256'h30B05E5661099AE282C6ECAF09EB00A56E884B9A8C2D4816001DBF90F64A5F86),
    .INIT_08(256'hB73C8BD1A6F2957A4F56CB40ABB67F8FBE26B0DD936F0786AA59907D947EB3B8),
    .INIT_09(256'hFE6D862A6AB9901A4F6C2B5689ACD37B1E7BB3DC42F7D8EBE3B404F51FEEA5BF),
    .INIT_0A(256'h7691415D72CB23319526F99189D720AE0020B849C53D202D0FAFAABA129598E8),
    .INIT_0B(256'hC90DAB633687801FB1E7A65107C13D248598F524E35C4215A30F4AB1BD1E9A87),
    .INIT_0C(256'hAA38A55D49558C2898CCE8A3E63E6F5A50EA2B5A59AFE1A2712DED0E2358DF0E),
    .INIT_0D(256'h3E56E33D79E8CFA123DE7DA106C4E054AFF69E41E21163286380721CF5015BE2),
    .INIT_0E(256'hC81B3F20B9245D3ADC8DFD6D1DB7C7D5CCD8A22D5E3A9156D7CC6F68CED73826),
    .INIT_0F(256'hBB9408759797140272F7B63A805428F13F1721B3041B80FD31837D768B5D2394),
    .INIT_10(256'hC41B7352B1407C405478BFDC9EB1F90406D63587C22152FD7471AEA7AEC286C9),
    .INIT_11(256'hA1E64AE3347E3D7CC451456F63C8A3AAF38EEC644989BEC311818B5FC6B4CA8D),
    .INIT_12(256'hC4B804E655C27AB87428ED8BD3039FEF31582A9729FA9AF43D0FF7A54B64A1D0),
    .INIT_13(256'h4934467C45C002462DBC44909BD73E93D6AA06BEB39B64ACFCA92F59E237A6EF),
    .INIT_14(256'hC8804EE092720F79B8418366AA00279C7AB22546FB6AEE4E387A6F8C9B5EAEB8),
    .INIT_15(256'h292281C5E9936E11A98F37AA6E9413B69DF2DEE2644008B3FBF3AAA50FBCED23),
    .INIT_16(256'hD4CCD243473EB394A42AB20D306A2127AEAE3FBC215036021C05315C319D40DC),
    .INIT_17(256'h926F58E0D31BC36E42B221595D452C2A5FDF2DA316D15342BA70B5B5FDF628AF),
    .INIT_18(256'hF212069B83630BA37A252D2808700CA339E1E87CB6432C1B1D2B7B6041A91A74),
    .INIT_19(256'h5B693E90EA06A49390B74164E32AE72E1B2E88FBC130BB5AB31391A34FCFB222),
    .INIT_1A(256'hAA425D5A076EA88E739B115E57FDBF80DBCB13B409DD098D410EE094A9E1C7F5),
    .INIT_1B(256'h74926F58E0D31BC36E42B26559EC1D7B29AB59224F2111C1CAD0F17C53C7459B),
    .INIT_1C(256'h22F212069B83630BA37A252D2808700CA339E1E87CB6432C1B1D2B7B6041A91A),
    .INIT_1D(256'hF55B693E90EA06A49390B74164E32AE72E1B2E88FBC130BB5AB31391A34FCFB2),
    .INIT_1E(256'h9BAA425D5A076EA88E739B115E57FDBF80DBCB13B409DD098D410EE094A9E1C7),
    .INIT_1F(256'h1A74926F58E0D31BC36E42B26559EC1D7B29AB59224F2111C1CAD0F17C53C745),
    .INIT_20(256'hB222F212069B83630BA37A252D2808700CA339E1E87CB6432C1B1D2B7B6041A9),
    .INIT_21(256'hC7F55B693E90EA06A49390B74164E32AE72E1B2E88FBC130BB5AB31391A34FCF),
    .INIT_22(256'h459BAA425D5A076EA88E739B115E57FDBF80DBCB13B409DD098D410EE094A9E1),
    .INIT_23(256'hA91A74926F58E0D31BC36E42B26559EC1D7B29AB59224F2111C1CAD0F17C53C7),
    .INIT_24(256'hCFB222F212069B83630BA37A252D2808700CA339E1E87CB6432C1B1D2B7B6041),
    .INIT_25(256'hE1C7F55B693E90EA06A49390B74164E32AE72E1B2E88FBC130BB5AB31391A34F),
    .INIT_26(256'hC7459BAA425D5A076EA88E739B115E57FDBF80DBCB13B409DD098D410EE094A9),
    .INIT_27(256'h41A91A74926F58E0D31BC36E42B26559EC1D7B29AB59224F2111C1CAD0F17C53),
    .INIT_28(256'h4FCFB222F212069B83630BA37A252D2808700CA339E1E87CB6432C1B1D2B7B60),
    .INIT_29(256'hA9E1C7F55B693E90EA06A49390B74164E32AE72E1B2E88FBC130BB5AB31391A3),
    .INIT_2A(256'h53C7459BAA425D5A076EA88E739B115E57FDBF80DBCB13B409DD098D410EE094),
    .INIT_2B(256'h6041A91A74926F58E0D31BC36E42B26559EC1D7B29AB59224F2111C1CAD0F17C),
    .INIT_2C(256'hA34FCFB222F212069B83630BA37A252D2808700CA339E1E87CB6432C1B1D2B7B),
    .INIT_2D(256'h94A9E1C7F55B693E90EA06A49390B74164E32AE72E1B2E88FBC130BB5AB31391),
    .INIT_2E(256'h7C53C7459BAA425D5A076EA88E739B115E57FDBF80DBCB13B409DD098D410EE0),
    .INIT_2F(256'h7B6041A91A74926F58E0D31BC36E42B26559EC1D7B29AB59224F2111C1CAD0F1),
    .INIT_30(256'h91A34FCFB222F212069B83630BA37A252D2808700CA339E1E87CB6432C1B1D2B),
    .INIT_31(256'hE094A9E1C7F55B693E90EA06A49390B74164E32AE72E1B2E88FBC130BB5AB313),
    .INIT_32(256'hF17C53C7459BAA425D5A076EA88E739B115E57FDBF80DBCB13B409DD098D410E),
    .INIT_33(256'h2B7B6041A91A74926F58E0D31BC36E42B26559EC1D7B29AB59224F2111C1CAD0),
    .INIT_34(256'h1391A34FCFB222F212069B83630BA37A252D2808700CA339E1E87CB6432C1B1D),
    .INIT_35(256'h0EE094A9E1C7F55B693E90EA06A49390B74164E32AE72E1B2E88FBC130BB5AB3),
    .INIT_36(256'hD0F17C53C7459BAA425D5A076EA88E739B115E57FDBF80DBCB13B409DD098D41),
    .INIT_37(256'h1D2B7B6041A91A74926F58E0D31BC36E42B26559EC1D7B29AB59224F2111C1CA),
    .INIT_38(256'hB31391A34FCFB222F212069B83630BA37A252D2808700CA339E1E87CB6432C1B),
    .INIT_39(256'h410EE094A9E1C7F55B693E90EA06A49390B74164E32AE72E1B2E88FBC130BB5A),
    .INIT_3A(256'hCAD0F17C53C7459BAA425D5A076EA88E739B115E57FDBF80DBCB13B409DD098D),
    .INIT_3B(256'h57FDBF80DBCB13B409DD098D410EE094A9E1C76559EC1D7B29AB59224F2111C1),
    .INIT_3C(256'h59EC1D7B29AB59224F2111C1CAD0F17C53C7459BAA425D5A076EA88E739B115E),
    .INIT_3D(256'h2808700CA339E1E87CB6432C1B1D2B7B6041A91A74926F58E0D31BC36E42B265),
    .INIT_3E(256'h64E32AE72E1B2E88FBC130BB5AB31300A34FCFB222F212069B83630BA37A252D),
    .INIT_3F(256'h5E57FDBF80DBCB13B409DD098D410EE094A9E1C7F55B693E90EA06A49390B741),
    .INIT_40(256'h6559EC1D7B29AB59224F2111C1CAD0F17C53C7459BAA425D5A076EA88E739B11),
    .INIT_41(256'h2D2808700CA339E1E87CB6432C1B1D2B7B6041A91A74926F58E0D31BC36E42B2),
    .INIT_42(256'h4164E32AE72E1B2E88FBC130BB5AB31391A34FCFB222F212069B83630BA37A25),
    .INIT_43(256'h115E57FDBF80DBCB13B409DD098D410EE094A9E1C7F55B693E90EA06A49390B7),
    .INIT_44(256'hC76559EC1D7B290059224F2111C1CAD0F17C53C7459BAA425D5A076EA88E739B),
    .INIT_45(256'h459BAA425D5A076EA88E739B115E57FDBF80DBCB13B409DD098D410EE094A9E1),
    .INIT_46(256'hA91A74926F58E0D31BC36E42B26559EC1D7B29AB59224F2111C1CAD0F17C53C7),
    .INIT_47(256'hCFB222F212069B83630BA37A252D2808700CA339E1E87CB6432C1B1D2B7B6041),
    .INIT_48(256'hE1C7F55B693E90EA06A49390B74164E32AE72E1B2E88FBC130BB5AB31391A34F),
    .INIT_49(256'hC7459BAA425D5A076EA88E739B115E57FDBF80DBCB13B409DD098D410EE094A9),
    .INIT_4A(256'h41A91A74926F58E0D31BC36E42B26559EC1D7B29AB59224F2111C1CAD0F17C53),
    .INIT_4B(256'h4FCFB222F212069B83630BA37A252D2808700CA339E1E87CB6432C1B1D2B7B00),
    .INIT_4C(256'hA9E1C7F55B693E90EA06A49390B74164E32AE72E1B2E88FBC130BB5AB31391A3),
    .INIT_4D(256'h53C7459BAA425D5A076EA88E739B115E57FDBF80DBCB13B409DD098D410EE094),
    .INIT_4E(256'h046C39AFFBBB4059886D5A0F5A90076559EC1D7B29AB59224F2111C1CAD0F17C),
    .INIT_4F(256'h1CE79EAC7CDDCCCD371D2F542E33CE3C763468330CB3773EF6AE01B1724888D1),
    .INIT_50(256'hC6ECAF09EB00A56E884B9A8C2D4816E91DBF90F64A5F86D74106AE85081DF06A),
    .INIT_51(256'h56CB40ABB67F8FBE26B0DD936F0786AA59907D947EB3B830B05E5661099AE282),
    .INIT_52(256'h6C2B5689ACD37B1E7BB3DC42F7D8EBE3B404F51FEEA5BFB73C8BD1A6F2957A4F),
    .INIT_53(256'h26F99189D720AE0020B849C53D202D0FAFAABA129598E8FE6D862A6AB9901A4F),
    .INIT_54(256'hE7A65107C13D248598F524E35C4215A30F4AB1BD1E9A877691415D72CB233195),
    .INIT_55(256'hCCE8A3E63E6F5A50EA2B5A59AFE1A2712DED0E2358DF0EC90DAB633687801FB1),
    .INIT_56(256'hAE01B1724888D1046C39AFFBBB4059886D5A0F5A9007E2AA38A55D49558C2898),
    .INIT_57(256'h06AE85081DF06A1CE79EAC7CDDCCCD371D2F542E33CE3C763468330CB3773EF6),
    .INIT_58(256'h5E5661099AE282C6ECAF09EB00A56E884B9A8C2D4816E91DBF90F64A5F86D741),
    .INIT_59(256'h8BD1A6F2957A4F56CB40ABB67F8FBE26B0DD936F0786AA59907D947EB3B830B0),
    .INIT_5A(256'h862A6AB9901A4F6C2B5689ACD37B1E7BB3DC42F7D8EBE3B404F51FEEA5BFB73C),
    .INIT_5B(256'h415D72CB23319526F99189D720AE0020B849C53D202D0FAFAABA129598E8FE6D),
    .INIT_5C(256'hAB633687801FB1E7A65107C13D248598F524E35C4215A30F4AB1BD1E9A877691),
    .INIT_5D(256'hA55D49558C2898CCE8A3E63E6F5A50EA2B5A59AFE1A2712DED0E2358DF0EC90D),
    .INIT_5E(256'h68330CB3773EF6AE01B1724888D1046C39AFFBBB4059886D5A0F5A9007E2AA38),
    .INIT_5F(256'h90F64A5F86D74106AE85081DF06A1CE79EAC7CDDCCCD371D2F542E33CE3C7634),
    .INIT_60(256'h7D947EB3B830B05E5661099AE282C6ECAF09EB00A56E884B9A8C2D4816E91DBF),
    .INIT_61(256'hF51FEEA5BFB73C8BD1A6F2957A4F56CB40ABB67F8FBE26B0DD936F0786AA5990),
    .INIT_62(256'hBA129598E8FE6D862A6AB9901A4F6C2B5689ACD37B1E7BB3DC42F7D8EBE3B404),
    .INIT_63(256'hB1BD1E9A877691415D72CB23319526F99189D720AE0020B849C53D202D0FAFAA),
    .INIT_64(256'h0E2358DF0EC90DAB633687801FB1E7A65107C13D248598F524E35C4215A30F4A),
    .INIT_65(256'hA88E739BE2AA38A55D49558C2898CCE8A3E63E6F5A50EA2B5A59AFE1A2712DED),
    .INIT_66(256'h1BC36E42B26559EC1D7B29AB59224F2111C1CAD0F17C53C7459BAA425D5A076E),
    .INIT_67(256'h630BA37A252D2808700CA339E1E87CB6432C1B1D2B7B6041A91A74926F58E0D3),
    .INIT_68(256'h06A49390B74164E32AE72E1B2E88FBC130BB5AB31391A34FCFB222F212069B83),
    .INIT_69(256'h6EA88E739B115E57FDBF80DBCB13B409DD098D410EE094A9E1C7F55B693E90EA),
    .INIT_6A(256'hD31BC36E42B26559EC1D7B29AB59224F2111C1CAD0F17C53C7459BAA425D5A07),
    .INIT_6B(256'h83630BA37A252D2808700CA339E1E87CB6432C1B1D2B7B6041A91A74926F58E0),
    .INIT_6C(256'hEA06A49390B74164E32AE72E1B2E88FBC130BB5AB31391A34FCFB222F212069B),
    .INIT_6D(256'h076EA88E739B115E57FDBF80DBCB13B409DD098D410EE094A9E1C7F55B693E90),
    .INIT_6E(256'hE0D31BC36E42B26559EC1D7B29AB59224F2111C1CAD0F17C53C7459BAA425D5A),
    .INIT_6F(256'h9B83630BA37A252D2808700CA339E1E87CB6432C1B1D2B7B6041A91A74926F58),
    .INIT_70(256'hC90DAB633687801FB1E7A65107C13D248598F524E35C1391A34FCFB222F21206),
    .INIT_71(256'hAA38A55D49558C2898CCE8A3E63E6F5A50EA2B5A59AFE1A2712DED0E2358DF0E),
    .INIT_72(256'h763468330CB3773EF6AE01B1724888D1046C39AFFBBB4059886D5A0F5A9007E2),
    .INIT_73(256'h1DBF90F64A5F86D74106AE85081DF06A1CE79EAC7CDDCCCD371D2F542E33CE3C),
    .INIT_74(256'h59907D947EB3B830B05E5661099AE282C6ECAF09EB00A56E884B9A8C2D4816E9),
    .INIT_75(256'hB404F51FEEA5BFB73C8BD1A6F2957A4F56CB40ABB67F8FBE26B0DD936F0786AA),
    .INIT_76(256'hAFAABA129598E8FE6D862A6AB9901A4F6C2B5689ACD37B1E7BB3DC42F7D8EBE3),
    .INIT_77(256'h0F4AB1BD1E9A877691415D72CB23319526F99189D720AE0020B849C53D202D0F),
    .INIT_78(256'h2DED0E2358DF0EC90DAB633687801FB1E7A65107C13D248598F524E35C4215A3),
    .INIT_79(256'h076EA88E739BE2AA38A55D49558C2898CCE8A3E63E6F5A50EA2B5A59AFE1A271),
    .INIT_7A(256'hE0D31BC36E42B26559EC1D7B29AB59224F2111C1CAD0F17C53C7459BAA425D5A),
    .INIT_7B(256'h9B83630BA37A252D2808700CA339E1E87CB6432C1B1D2B7B6041A91A74926F58),
    .INIT_7C(256'h90EA06A49390B74164E32AE72E1B2E88FBC130BB5AB31391A34FCFB222F21206),
    .INIT_7D(256'h5A076EA88E739B115E57FDBF80DBCB13B409DD098D410EE094A9E1C7F55B693E),
    .INIT_7E(256'h58E0D31BC36E42B26559EC1D7B29AB59224F2111C1CAD0F17C53C7459BAA425D),
    .INIT_7F(256'h069B83630BA37A252D2808700CA339E1E87CB6432C1B1D2B7B6041A91A74926F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module DATA_SRAM_blk_mem_gen_top
   (douta,
    addra,
    clka);
  output [31:0]douta;
  input [13:0]addra;
  input clka;

  wire [13:0]addra;
  wire clka;
  wire [31:0]douta;

  DATA_SRAM_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "14" *) (* C_ADDRB_WIDTH = "14" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "4" *) 
(* C_COUNT_36K_BRAM = "9" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.181603 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "DATA_SRAM.mem" *) 
(* C_INIT_FILE_NAME = "DATA_SRAM.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "12268" *) (* C_READ_DEPTH_B = "12268" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "32" *) (* C_READ_WIDTH_B = "32" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "12268" *) 
(* C_WRITE_DEPTH_B = "12268" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "32" *) (* C_WRITE_WIDTH_B = "32" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module DATA_SRAM_blk_mem_gen_v8_4_4
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [13:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [13:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [13:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [13:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [13:0]addra;
  wire clka;
  wire [31:0]douta;

  assign dbiterr = \<const0> ;
  assign doutb[31] = \<const0> ;
  assign doutb[30] = \<const0> ;
  assign doutb[29] = \<const0> ;
  assign doutb[28] = \<const0> ;
  assign doutb[27] = \<const0> ;
  assign doutb[26] = \<const0> ;
  assign doutb[25] = \<const0> ;
  assign doutb[24] = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  DATA_SRAM_blk_mem_gen_v8_4_4_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

module DATA_SRAM_blk_mem_gen_v8_4_4_synth
   (douta,
    addra,
    clka);
  output [31:0]douta;
  input [13:0]addra;
  input clka;

  wire [13:0]addra;
  wire clka;
  wire [31:0]douta;

  DATA_SRAM_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
