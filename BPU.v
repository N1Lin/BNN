`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/06 17:53:44
// Design Name: 
// Module Name: BPU
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

module BPU(
    input clk,
    input rst,
    input sel,
    input [2:0]height,//height of calculation
    input [4:0]instruction, //instruction signal
    input wgt_en,
    input [6:0][6:0] img,//input image
    input [6:0]wgt_input,//input weight
    output reg signed[6:0] popcnt_add//popcount result of a 7x7 unit
    );
    
    wire psum_rst;//reset psum to 0, should be changed to BIAS later
    assign psum_rst = instruction[0];
    wire [2:0]lut_sel;// select the lut input
    assign lut_sel = instruction[3:1];
    wire psum_add;//insturct the psum to add lut's input
    assign psum_add = instruction[4];
    
    reg [6:0][6:0]wgt;
    always@(posedge clk)begin
        if(rst)begin
            wgt <= 0;
        end
        else if(wgt_en & sel)begin
            wgt <= {wgt[5:0],wgt_input};
        end
    end
    
    wire [6:0][6:0] xnor_out;
    XNOR1x7 xnor0(
    .img(img[0]),
    .wgt(wgt[0]),
    .height(height),
    .xnor_out(xnor_out[0]));
    XNOR1x7 xnor1(
    .img(img[1]),
    .wgt(wgt[1]),
    .height(height),
    .xnor_out(xnor_out[1]));
    XNOR1x7 xnor2(
    .img(img[2]),
    .wgt(wgt[2]),
    .height(height),
    .xnor_out(xnor_out[2]));
    XNOR1x7 xnor3(
    .img(img[3]),
    .wgt(wgt[3]),
    .height(height),
    .xnor_out(xnor_out[3]));
    XNOR1x7 xnor4(
    .img(img[4]),
    .wgt(wgt[4]),
    .height(height),
    .xnor_out(xnor_out[4]));
    XNOR1x7 xnor5(
    .img(img[5]),
    .wgt(wgt[5]),
    .height(height),
    .xnor_out(xnor_out[5]));
    XNOR1x7 xnor6(
    .img(img[6]),
    .wgt(wgt[6]),
    .height(height),
    .xnor_out(xnor_out[6]));
    
    // lut_sel decides which output of XNOR1x7 to connect with input of LUT
    wire [6:0] lut_in_origin;
    assign lut_in_origin = xnor_out[lut_sel];
    wire [5:0] lut_in;
    //the operation of shift-binary algorithm
    assign lut_in = lut_in_origin[5:0];
    
    wire[63:0][2:0]reg_popcnt;
    assign reg_popcnt='{'{3'b110},'{3'b101},'{3'b101},'{3'b100},'{3'b101},'{3'b100},'{3'b100},'{3'b11},'{3'b101},'{3'b100},'{3'b100},'{3'b11},'{3'b100},'{3'b11},'{3'b11},'{3'b10},'{3'b101},'{3'b100},'{3'b100},'{3'b11},'{3'b100},'{3'b11},'{3'b11},'{3'b10},'{3'b100},'{3'b11},'{3'b11},'{3'b10},'{3'b11},'{3'b10},'{3'b10},'{3'b1},'{3'b101},'{3'b100},'{3'b100},'{3'b11},'{3'b100},'{3'b11},'{3'b11},'{3'b10},'{3'b100},'{3'b11},'{3'b11},'{3'b10},'{3'b11},'{3'b10},'{3'b10},'{3'b1},'{3'b100},'{3'b11},'{3'b11},'{3'b10},'{3'b11},'{3'b10},'{3'b10},'{3'b1},'{3'b11},'{3'b10},'{3'b10},'{3'b1},'{3'b10},'{3'b1},'{3'b1},'{3'b0}};

    reg signed[4:0] popcnt;
    //assign popcnt = (reg_popcnt[lut_in]+lut_in_origin[6])>>1-3'b111;
    wire[3:0] intern;
    assign intern=(reg_popcnt[lut_in]+lut_in_origin[6])<<1;
    //a mux that chooses 1 output from 8 input
    
    always @(intern) begin
        popcnt = intern-height;
    end

    always @(posedge clk) begin
        if(rst|psum_rst) begin
            popcnt_add <= 0;
        end
        else begin
            if(psum_add) begin
                popcnt_add <= popcnt_add + $signed({{2{popcnt[4]}},popcnt});
            end
        end
    end
endmodule
