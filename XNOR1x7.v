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
    output wire[6:0] xnor_out
    );
    assign xnor_out = img~^wgt;
endmodule
