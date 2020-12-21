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
module BNN_Core(
    input clk,
    input rst,
    input [3:0][7:0]data_in,//input data, image toghether with weight
    input [13:0] instruction,//instruction bus
    output reg[7:0]reg_bins//stores the output of this layer
    );
    
    reg[2:0][7:0]pooling_reg;//stores pooling data, controlled by pooling_en
    
    wire [7:0] instruction_bpug;//instructions for bpugs
    assign instruction_bpug[3:0] = instruction[3:0];
    assign instruction_bpug[7:4] = instruction[8:5];
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
    
    wire[7:0] cal_bin;//binary calculation result
    wire[2:0] pooling_cnt;
    assign pooling_cnt ={pooling_sel,instruction[6]};
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
                        reg_bins <= pooling_reg[0]|pooling_reg[1]|pooling_reg[2]|cal_bin;
                    end
                end
                else begin
                    reg_bins <= cal_bin;
                end
            end
            else reg_bins<=8'bzzzzzzzz;
        end
    end
    
    wire [15:0][7:0][6:0] bpu_out;//connect to BPUGs
    
    wire[7:0][6:0] bpu_out_add;
    assign bpu_out_add = bpug_sel[3]?(bpug_sel[2]?(bpug_sel[1]?(bpug_sel[0]?bpu_out[15]:bpu_out[14]):(bpug_sel[0]?bpu_out[13]:bpu_out[12])):(bpug_sel[1]?(bpug_sel[0]?bpu_out[11]:bpu_out[10]):(bpug_sel[0]?bpu_out[9]:bpu_out[8]))):(bpug_sel[2]?(bpug_sel[1]?(bpug_sel[0]?bpu_out[7]:bpu_out[6]):(bpug_sel[0]?bpu_out[5]:bpu_out[4])):(bpug_sel[1]?(bpug_sel[0]?bpu_out[3]:bpu_out[2]):(bpug_sel[0]?bpu_out[1]:bpu_out[0])));
    
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
    .instruction_in((bpug_sel==0)?instruction_bpug:{2'b00,instruction_bpug[5:0]}),
    .data_in(data_in[0]),
    .bpu_out(bpu_out[0]));
    BPUG bpug1(.clk(clk),
    .rst(rst),
    .instruction_in((bpug_sel==0)?instruction_bpug:{2'b00,instruction_bpug[5:0]}),
    .data_in(data_in[1]),
    .bpu_out(bpu_out[1]));
    BPUG bpug2(.clk(clk),
    .rst(rst),
    .instruction_in((bpug_sel==0)?instruction_bpug:{2'b00,instruction_bpug[5:0]}),
    .data_in(data_in[2]),
    .bpu_out(bpu_out[2]));
    BPUG bpug3(.clk(clk),
    .rst(rst),
    .instruction_in((bpug_sel==0)?instruction_bpug:{2'b00,instruction_bpug[5:0]}),
    .data_in(data_in[3]),
    .bpu_out(bpu_out[3]));
    BPUG bpug4(.clk(clk),
    .rst(rst),
    .instruction_in((bpug_sel==1)?instruction_bpug:{2'b00,instruction_bpug[5:0]}),
    .data_in(data_in[0]),
    .bpu_out(bpu_out[4]));
    BPUG bpug5(.clk(clk),
    .rst(rst),
    .instruction_in((bpug_sel==1)?instruction_bpug:{2'b00,instruction_bpug[5:0]}),
    .data_in(data_in[1]),
    .bpu_out(bpu_out[5]));
    BPUG bpug6(.clk(clk),
    .rst(rst),
    .instruction_in((bpug_sel==1)?instruction_bpug:{2'b00,instruction_bpug[5:0]}),
    .data_in(data_in[2]),
    .bpu_out(bpu_out[6]));
    BPUG bpug7(.clk(clk),
    .rst(rst),
    .instruction_in((bpug_sel==1)?instruction_bpug:{2'b00,instruction_bpug[5:0]}),
    .data_in(data_in[3]),
    .bpu_out(bpu_out[7]));
    BPUG bpug8(.clk(clk),
    .rst(rst),
    .instruction_in((bpug_sel==2)?instruction_bpug:{2'b00,instruction_bpug[5:0]}),
    .data_in(data_in[0]),
    .bpu_out(bpu_out[8]));
    BPUG bpug9(.clk(clk),
    .rst(rst),
    .instruction_in((bpug_sel==2)?instruction_bpug:{2'b00,instruction_bpug[5:0]}),
    .data_in(data_in[1]),
    .bpu_out(bpu_out[9]));
    BPUG bpug10(.clk(clk),
    .rst(rst),
    .instruction_in((bpug_sel==2)?instruction_bpug:{2'b00,instruction_bpug[5:0]}),
    .data_in(data_in[2]),
    .bpu_out(bpu_out[10]));
    BPUG bpug11(.clk(clk),
    .rst(rst),
    .instruction_in((bpug_sel==2)?instruction_bpug:{2'b00,instruction_bpug[5:0]}),
    .data_in(data_in[3]),
    .bpu_out(bpu_out[11]));
    BPUG bpug12(.clk(clk),
    .rst(rst),
    .instruction_in((bpug_sel==3)?instruction_bpug:{2'b00,instruction_bpug[5:0]}),
    .data_in(data_in[0]),
    .bpu_out(bpu_out[12]));
    BPUG bpug13(.clk(clk),
    .rst(rst),
    .instruction_in((bpug_sel==3)?instruction_bpug:{2'b00,instruction_bpug[5:0]}),
    .data_in(data_in[1]),
    .bpu_out(bpu_out[13]));
    BPUG bpug14(.clk(clk),
    .rst(rst),
    .instruction_in((bpug_sel==3)?instruction_bpug:{2'b00,instruction_bpug[5:0]}),
    .data_in(data_in[2]),
    .bpu_out(bpu_out[14]));
    BPUG bpug15(.clk(clk),
    .rst(rst),
    .instruction_in((bpug_sel==3)?instruction_bpug:{2'b00,instruction_bpug[5:0]}),
    .data_in(data_in[3]),
    .bpu_out(bpu_out[15]));
    
    reg signed[7:0][8:0]cal_intern;//to store accumulation interns for future binarization
    
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
    
    assign cal_bin[0] = ~cal_intern[0][8];
    assign cal_bin[1] = ~cal_intern[1][8];
    assign cal_bin[2] = ~cal_intern[2][8];
    assign cal_bin[3] = ~cal_intern[3][8];
    assign cal_bin[4] = ~cal_intern[4][8];
    assign cal_bin[5] = ~cal_intern[5][8];
    assign cal_bin[6] = ~cal_intern[6][8];
    assign cal_bin[7] = ~cal_intern[7][8];
    
endmodule
