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
    assign img_cal[6] = height == 7? img[6] : 1'b1;
    assign img_cal[5] = height >= 5? img[5] : 1'b1;
    assign img_cal[4:2] = img[4:2];
    assign img_cal[1] = height >= 5? img[1] : 1'b1;
    assign img_cal[0] = height == 7? img[0] : 1'b1;
    assign xnor_out = img_cal~^wgt;
endmodule
