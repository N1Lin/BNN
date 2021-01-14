`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/11 17:00:53
// Design Name: 
// Module Name: BNN_Core
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module BNNCore(
    input clk,
    input rst,
    input [3:0][7:0]data_in,//input data, image toghether with weight
    input [19:0] instruction,//instruction bus
    output wire[3:0][7:0]result_bins//stores the output of this layer
    );
    
    reg[2:0][7:0]pooling_reg;//stores pooling data, controlled by pooling_en
    reg[15:0] enable;
    reg[2:0] height;
    always@(posedge clk) begin
        if (rst)begin
            enable <= 0;
            height <= 0;
        end
        else if(instruction[15]&instruction[8])begin
            enable <= {data_in[1],data_in[0]};
            height <= data_in[2][2:0];
        end
    end
    
    wire [9:0] instruction_bpug;//instructions for bpugs
    assign instruction_bpug[3:0] = instruction[3:0];
    assign instruction_bpug[7:4] = instruction[8:5];
    assign instruction_bpug[9:8] = instruction[16:15];

    wire [3:0] bpug_sel;//to pick one bpug
    assign bpug_sel = instruction[4:1];
    wire psum_add;
    assign psum_add = instruction[9];
    wire cal_bin_wr;//to store the current binary value
    assign cal_bin_wr = instruction[10];
    wire bias_wr;//to load data into bias register
    assign bias_wr = instruction[11];
    wire pooling_en;//pooling enable signal
    assign pooling_en = instruction[12];
    wire pooling_sel;
    assign pooling_sel = instruction[13];
    wire store;//1: enable the result_bins; 0: set result_bins to high resistance
    assign store = instruction[14];
    wire img_reg_up;//instruct the img_reg to shit upwards
    assign img_reg_up = instruction[15];
    wire img_reg_sel;//instruct to write in which part of img reg
    assign img_reg_sel = instruction[16];
    wire [2:0]wgt_sel;
    assign wgt_sel = instruction[19:17];
    
    wire[3:0] chip_sel;
    assign chip_sel[0] = bpug_sel==0? 1:0;
    assign chip_sel[1] = bpug_sel==1? 1:0;
    assign chip_sel[2] = bpug_sel==2? 1:0;
    assign chip_sel[3] = bpug_sel==3? 1:0;
    
    wire[7:0] cal_bin;//binary calculation result
    wire[1:0] pooling_cnt;
    assign pooling_cnt ={instruction[6],pooling_sel};
    
    reg[7:0][7:0]reg_bins;
    always@(posedge clk)begin
        if(rst)begin
            reg_bins <= 0;
            pooling_reg <= 0;
        end
        else begin
            if(cal_bin_wr)begin
                if(pooling_en)begin
                    if(pooling_cnt<2'b11) begin
                        pooling_reg[pooling_cnt]<=cal_bin;
                    end
                    else if(pooling_cnt==2'b11)begin
                        reg_bins <= {reg_bins[6:0],pooling_reg[0]|pooling_reg[1]|pooling_reg[2]|cal_bin};
                    end
                end
                else begin
                    reg_bins <= {reg_bins[6:0],cal_bin};
                end
            end
        end
    end
    
    assign result_bins = store? (instruction[6]?{reg_bins[7][7],reg_bins[6][7],reg_bins[5][7],reg_bins[4][7],reg_bins[3][7],reg_bins[2][7],reg_bins[1][7],reg_bins[0][7],reg_bins[7][6],reg_bins[6][6],reg_bins[5][6],reg_bins[4][6],reg_bins[3][6],reg_bins[2][6],reg_bins[1][6],reg_bins[0][6],reg_bins[7][5],reg_bins[6][5],reg_bins[5][5],reg_bins[4][5],reg_bins[3][5],reg_bins[2][5],reg_bins[1][5],reg_bins[0][5],reg_bins[7][4],reg_bins[6][4],reg_bins[5][4],reg_bins[4][4],reg_bins[3][4],reg_bins[2][4],reg_bins[1][4],reg_bins[0][4]}:
    {reg_bins[7][3],reg_bins[6][3],reg_bins[5][3],reg_bins[4][3],reg_bins[3][3],reg_bins[2][3],reg_bins[1][3],reg_bins[0][3],reg_bins[7][2],reg_bins[6][2],reg_bins[5][2],reg_bins[4][2],reg_bins[3][2],reg_bins[2][2],reg_bins[1][2],reg_bins[0][2],reg_bins[7][1],reg_bins[6][1],reg_bins[5][1],reg_bins[4][1],reg_bins[3][1],reg_bins[2][1],reg_bins[1][1],reg_bins[0][1],reg_bins[7][0],reg_bins[6][0],reg_bins[5][0],reg_bins[4][0],reg_bins[3][0],reg_bins[2][0],reg_bins[1][0],reg_bins[0][0]}) : {64{1'bz}};
    
    wire [15:0][7:0][6:0] bpu_out;//connect to BPUGs
    
    wire[7:0][6:0] bpu_out_add;
    assign bpu_out_add = bpu_out[bpug_sel];
    
    reg[7:0][7:0] bias;
    always@(posedge clk)begin
        if(rst) bias <=0;
        else begin
            if(bias_wr)begin
                bias<={bias[3:0],data_in};
            end
        end
    end
    BPUG bpug0(.clk(clk),
    .rst(rst),
    .instruction_in(instruction_bpug),
    .data_in(data_in[0]),
    .height(height),
    .wgt_sel(wgt_sel),
    .enable(enable[0]),
    .sel(chip_sel[0]),
    .bpu_out(bpu_out[0]));
    
    BPUG bpug1(.clk(clk),
    .rst(rst),
    .instruction_in(instruction_bpug),
    .data_in(data_in[1]),
    .height(height),
    .wgt_sel(wgt_sel),
    .enable(enable[1]),
    .sel(chip_sel[0]),
    .bpu_out(bpu_out[1]));
    
    BPUG bpug2(.clk(clk),
    .rst(rst),
    .instruction_in(instruction_bpug),
    .data_in(data_in[2]),
    .height(height),
    .wgt_sel(wgt_sel),
    .enable(enable[2]),
    .sel(chip_sel[0]),
    .bpu_out(bpu_out[2]));
    
    BPUG bpug3(.clk(clk),
    .rst(rst),
    .instruction_in(instruction_bpug),
    .data_in(data_in[3]),
    .height(height),
    .wgt_sel(wgt_sel),
    .enable(enable[3]),
    .sel(chip_sel[0]),
    .bpu_out(bpu_out[3]));
    
    BPUG bpug4(.clk(clk),
    .rst(rst),
    .instruction_in(instruction_bpug),
    .data_in(data_in[0]),
    .height(height),
    .wgt_sel(wgt_sel),
    .enable(enable[4]),
    .sel(chip_sel[1]),
    .bpu_out(bpu_out[4]));
    
    BPUG bpug5(.clk(clk),
    .rst(rst),
    .instruction_in(instruction_bpug),
    .data_in(data_in[1]),
    .height(height),
    .wgt_sel(wgt_sel),
    .enable(enable[5]),
    .sel(chip_sel[1]),
    .bpu_out(bpu_out[5]));
    
    BPUG bpug6(.clk(clk),
    .rst(rst),
    .instruction_in(instruction_bpug),
    .data_in(data_in[2]),
    .height(height),
    .wgt_sel(wgt_sel),
    .enable(enable[6]),
    .sel(chip_sel[1]),
    .bpu_out(bpu_out[6]));
    
    BPUG bpug7(.clk(clk),
    .rst(rst),
    .instruction_in(instruction_bpug),
    .data_in(data_in[3]),
    .height(height),
    .wgt_sel(wgt_sel),
    .enable(enable[7]),
    .sel(chip_sel[1]),
    .bpu_out(bpu_out[7]));
    
    BPUG bpug8(.clk(clk),
    .rst(rst),
    .instruction_in(instruction_bpug),
    .data_in(data_in[0]),
    .height(height),
    .wgt_sel(wgt_sel),
    .enable(enable[8]),
    .sel(chip_sel[2]),
    .bpu_out(bpu_out[8]));
    
    BPUG bpug9(.clk(clk),
    .rst(rst),
    .instruction_in(instruction_bpug),
    .data_in(data_in[1]),
    .height(height),
    .wgt_sel(wgt_sel),
    .enable(enable[9]),
    .sel(chip_sel[2]),
    .bpu_out(bpu_out[9]));
    
    BPUG bpug10(.clk(clk),
    .rst(rst),
    .instruction_in(instruction_bpug),
    .data_in(data_in[2]),
    .height(height),
    .wgt_sel(wgt_sel),
    .enable(enable[10]),
    .sel(chip_sel[2]),
    .bpu_out(bpu_out[10]));
    
    BPUG bpug11(.clk(clk),
    .rst(rst),
    .instruction_in(instruction_bpug),
    .data_in(data_in[3]),
    .height(height),
    .wgt_sel(wgt_sel),
    .enable(enable[11]),
    .sel(chip_sel[2]),
    .bpu_out(bpu_out[11]));
    
    BPUG bpug12(.clk(clk),
    .rst(rst),
    .instruction_in(instruction_bpug),
    .data_in(data_in[0]),
    .height(height),
    .wgt_sel(wgt_sel),
    .enable(enable[12]),
    .sel(chip_sel[3]),
    .bpu_out(bpu_out[12]));
    
    BPUG bpug13(.clk(clk),
    .rst(rst),
    .instruction_in(instruction_bpug),
    .data_in(data_in[1]),
    .height(height),
    .wgt_sel(wgt_sel),
    .enable(enable[13]),
    .sel(chip_sel[3]),
    .bpu_out(bpu_out[13]));
    
    BPUG bpug14(.clk(clk),
    .rst(rst),
    .instruction_in(instruction_bpug),
    .data_in(data_in[2]),
    .height(height),
    .wgt_sel(wgt_sel),
    .enable(enable[14]),
    .sel(chip_sel[3]),
    .bpu_out(bpu_out[14]));
    
    BPUG bpug15(.clk(clk),
    .rst(rst),
    .instruction_in(instruction_bpug),
    .data_in(data_in[3]),
    .height(height),
    .wgt_sel(wgt_sel),
    .enable(enable[15]),
    .sel(chip_sel[3]),
    .bpu_out(bpu_out[15]));
    
    reg signed[7:0][10:0]cal_intern;//to store accumulation interns for future binarization
    
    //to extend the sign bit. This is beyond Verilog's ability
    always @(posedge clk) begin
        if(rst||instruction[0]) begin
            cal_intern[0] <= $signed({{1{bias[0][7]}},bias[0]});
            cal_intern[1] <= $signed({{1{bias[1][7]}},bias[1]});
            cal_intern[2] <= $signed({{1{bias[2][7]}},bias[2]});
            cal_intern[3] <= $signed({{1{bias[3][7]}},bias[3]});
            cal_intern[4] <= $signed({{1{bias[4][7]}},bias[4]});
            cal_intern[5] <= $signed({{1{bias[5][7]}},bias[5]});
            cal_intern[6] <= $signed({{1{bias[6][7]}},bias[6]});
            cal_intern[7] <= $signed({{1{bias[7][7]}},bias[7]});
        end
        else if(psum_add)begin
            cal_intern[0] <= cal_intern[0]+$signed({{2{bpu_out_add[0][6]}},bpu_out_add[0]});
            cal_intern[1] <= cal_intern[1]+$signed({{2{bpu_out_add[1][6]}},bpu_out_add[1]});
            cal_intern[2] <= cal_intern[2]+$signed({{2{bpu_out_add[2][6]}},bpu_out_add[2]});
            cal_intern[3] <= cal_intern[3]+$signed({{2{bpu_out_add[3][6]}},bpu_out_add[3]});
            cal_intern[4] <= cal_intern[4]+$signed({{2{bpu_out_add[4][6]}},bpu_out_add[4]});
            cal_intern[5] <= cal_intern[5]+$signed({{2{bpu_out_add[5][6]}},bpu_out_add[5]});
            cal_intern[6] <= cal_intern[6]+$signed({{2{bpu_out_add[6][6]}},bpu_out_add[6]});
            cal_intern[7] <= cal_intern[7]+$signed({{2{bpu_out_add[7][6]}},bpu_out_add[7]});
        end
    end
    
    assign cal_bin[0] = ~cal_intern[0][10];
    assign cal_bin[1] = ~cal_intern[1][10];
    assign cal_bin[2] = ~cal_intern[2][10];
    assign cal_bin[3] = ~cal_intern[3][10];
    assign cal_bin[4] = ~cal_intern[4][10];
    assign cal_bin[5] = ~cal_intern[5][10];
    assign cal_bin[6] = ~cal_intern[6][10];
    assign cal_bin[7] = ~cal_intern[7][10];
    
endmodule
