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


///////////////////////////////////////////////////////////////////
//The lut algorithm need to be changed, if we want a configurable kernel size
/////////////////////////////////////////////////////////
module BPU(
    input clk,
    input rst,
    input [4:0]instruction, //instruction signal
    input [6:0][6:0] img,//input image
    input [6:0][6:0] wgt,//input weight
    output reg signed[6:0] popcnt_add//popcount result of a 7x7 unit
    );
    
    wire psum_rst;//reset psum to 0, should be changed to BIAS later
    assign psum_rst = instruction[0];
    wire [2:0]lut_sel;// select the lut input
    assign lut_sel = instruction[3:1];
    wire psum_add;//insturct the psum to add lut's input
    assign psum_add = instruction[4];
    
    wire [6:0][6:0] xnor_out;
    XNOR1x7 xnor0(
    .img(img[0]),
    .wgt(wgt[0]),
    .xnor_out(xnor_out[0]));
    XNOR1x7 xnor1(
    .img(img[1]),
    .wgt(wgt[1]),
    .xnor_out(xnor_out[1]));
    XNOR1x7 xnor2(
    .img(img[2]),
    .wgt(wgt[2]),
    .xnor_out(xnor_out[2]));
    XNOR1x7 xnor3(
    .img(img[3]),
    .wgt(wgt[3]),
    .xnor_out(xnor_out[3]));
    XNOR1x7 xnor4(
    .img(img[4]),
    .wgt(wgt[4]),
    .xnor_out(xnor_out[4]));
    XNOR1x7 xnor5(
    .img(img[5]),
    .wgt(wgt[5]),
    .xnor_out(xnor_out[5]));
    XNOR1x7 xnor6(
    .img(img[6]),
    .wgt(wgt[6]),
    .xnor_out(xnor_out[6]));
    
    // lut_sel decides which output of XNOR1x7 to connect with input of LUT
    wire [6:0] lut_in_origin;
    assign lut_in_origin = lut_sel[2]?(lut_sel[1]?(lut_sel[0]? 7'b0:xnor_out[6]):(lut_sel[0]?xnor_out[5]:xnor_out[4])):(lut_sel[1]?(lut_sel[0]? xnor_out[3]:xnor_out[2]):(lut_sel[0]? xnor_out[1]:xnor_out[0]));
    wire [5:0] lut_in;
    //the operation of shift-binary algorithm
    assign lut_in = lut_in_origin[5:0];
    
//    wire signed[3:0] popcnt;
//    shift_lut lut1(
//    .addra(lut_in),
//    .clka(clk),
//    .douta(popcnt)
//    );
    wire[63:0][2:0]reg_popcnt;
    assign reg_popcnt='{'{3'b110},'{3'b101},'{3'b101},'{3'b100},'{3'b101},'{3'b100},'{3'b100},'{3'b11},'{3'b101},'{3'b100},'{3'b100},'{3'b11},'{3'b100},'{3'b11},'{3'b11},'{3'b10},'{3'b101},'{3'b100},'{3'b100},'{3'b11},'{3'b100},'{3'b11},'{3'b11},'{3'b10},'{3'b100},'{3'b11},'{3'b11},'{3'b10},'{3'b11},'{3'b10},'{3'b10},'{3'b1},'{3'b101},'{3'b100},'{3'b100},'{3'b11},'{3'b100},'{3'b11},'{3'b11},'{3'b10},'{3'b100},'{3'b11},'{3'b11},'{3'b10},'{3'b11},'{3'b10},'{3'b10},'{3'b1},'{3'b100},'{3'b11},'{3'b11},'{3'b10},'{3'b11},'{3'b10},'{3'b10},'{3'b1},'{3'b11},'{3'b10},'{3'b10},'{3'b1},'{3'b10},'{3'b1},'{3'b1},'{3'b0}};

    reg signed[4:0] popcnt;
    //assign popcnt = (reg_popcnt[lut_in]+lut_in_origin[6])>>1-3'b111;
    wire[3:0] intern;
    assign intern=(reg_popcnt[lut_in]+lut_in_origin[6])<<1;
    //a mux that chooses 1 output from 8 input
    
    always @(posedge clk) begin
        if(rst|psum_rst) begin
            popcnt_add <= 0;
            popcnt<=0;
        end
        else begin
            popcnt <= intern-3'b111;
            if(psum_add) begin
                popcnt_add <= popcnt_add + $signed({{2{popcnt[4]}},popcnt});
            end
        end
    end
endmodule
