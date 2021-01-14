`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/06 17:38:23
// Design Name: 
// Module Name: XNOR1x7
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
//Function: to execute 1¡Á7 XNOR operation
module XNOR1x7(
    input[6:0] img,
    input[6:0] wgt,
    input[2:0] height,
    output wire[6:0] xnor_out
    );
    
    wire [6:0] img_cal;
    assign img_cal[6:5] = height == 7? img[6:5] : 2'b11;
    assign img_cal[4:3] = height == 5? img[4:3] : 2'b11;
    assign img_cal[2:1] = height == 3? img[2:1] : 2'b11;
    assign img_cal[0] = img[0];
    assign xnor_out = img_cal~^wgt;
endmodule
