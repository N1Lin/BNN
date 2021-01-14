`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/01/07 15:36:11
// Design Name: 
// Module Name: P_TO_S
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


module P_TO_S
#(parameter WIDTH=16)
(CLK, RST, EN, P_TO_S_IN, P_TO_S_OUT

    );
    input CLK;
    input RST;
    input EN; //EN=0, Enabled
    input [(WIDTH-1):0]P_TO_S_IN;
    output reg P_TO_S_OUT;
    
    reg [6:0]CNT;
    
    always @ (posedge RST or posedge CLK) begin
        if(RST|EN) begin
            CNT<=0;
            P_TO_S_OUT<=0;
        end
        else begin
            if (CNT==0) P_TO_S_OUT<=0;
            else P_TO_S_OUT<=P_TO_S_IN[CNT-1];
            if (CNT==(WIDTH)) CNT<=(WIDTH);
            else CNT<=CNT+1;
        end
    end
endmodule
