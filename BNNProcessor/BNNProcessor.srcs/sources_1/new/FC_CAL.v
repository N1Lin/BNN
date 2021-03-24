`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/22 16:50:52
// Design Name: 
// Module Name: FC_CAL
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


module FC_CAL(
    input clk,
    input rst,
    input en, //enable to write in data
    input din,
    input[2:0] row, //count the number of data
    output a
    );
    
    reg [7:0][31:0] input_featmap;
    always@(posedge clk)begin
        if(rst)begin
            input_featmap <= 0;
        end
        else if(en) begin
            input_featmap[row] <= {din,input_featmap[row][31:1]};
        end
    end
    
    wire [7:0][19:0] IMG;
    assign IMG[0]={input_featmap[0][28:24],input_featmap[0][20:16],input_featmap[0][12:8],input_featmap[0][4:0]};
    assign IMG[1]={input_featmap[1][28:24],input_featmap[1][20:16],input_featmap[1][12:8],input_featmap[1][4:0]};
    assign IMG[2]={input_featmap[2][28:24],input_featmap[2][20:16],input_featmap[2][12:8],input_featmap[2][4:0]};
    assign IMG[3]={input_featmap[3][28:24],input_featmap[3][20:16],input_featmap[3][12:8],input_featmap[3][4:0]};
    assign IMG[4]={input_featmap[4][28:24],input_featmap[4][20:16],input_featmap[4][12:8],input_featmap[4][4:0]};
    assign IMG[5]={input_featmap[5][28:24],input_featmap[5][20:16],input_featmap[5][12:8],input_featmap[5][4:0]};
    assign IMG[6]={input_featmap[6][28:24],input_featmap[6][20:16],input_featmap[6][12:8],input_featmap[6][4:0]};
    assign IMG[7]={input_featmap[7][28:24],input_featmap[7][20:16],input_featmap[7][12:8],input_featmap[7][4:0]};
    
    wire [7:0][19:0] WGT;
    assign WGT = 1'b1;
    
    wire [7:0][19:0] XNOR_RESULT;
    assign XNOR_RESULT = IMG~^WGT;
    
    reg [9:0][9:0] result;
    wire [7:0][5:0] popcnt_result;
    
    TEST_lut lut0(.addr(XNOR_RESULT[0]),
    .result(popcnt_result[0]));
    TEST_lut lut1(.addr(XNOR_RESULT[1]),
    .result(popcnt_result[1]));
    TEST_lut lut2(.addr(XNOR_RESULT[2]),
    .result(popcnt_result[2]));
    TEST_lut lut3(.addr(XNOR_RESULT[3]),
    .result(popcnt_result[3]));
    TEST_lut lut4(.addr(XNOR_RESULT[4]),
    .result(popcnt_result[4]));
    TEST_lut lut5(.addr(XNOR_RESULT[5]),
    .result(popcnt_result[5]));
    TEST_lut lut6(.addr(XNOR_RESULT[6]),
    .result(popcnt_result[6]));
    TEST_lut lut7(.addr(XNOR_RESULT[7]),
    .result(popcnt_result[7]));
    
    
    
endmodule
