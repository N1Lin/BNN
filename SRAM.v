`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/01/05 10:39:09
// Design Name: 
// Module Name: SRAM
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


module SRAM
#(parameter ADDRWIDTH = 8, DATAWIDTH=16, FILE_NAME = "DATA_SRAM")
(ADDR, D, Q, CEN, WEN, CLK, EMA, EMAW, EMAS, RET1N );
    input [(ADDRWIDTH-1):0] ADDR;
    input [(DATAWIDTH-1):0] D;
    output reg [(DATAWIDTH-1):0] Q;
    input CEN; //CEN=0, Enabled
    input WEN;
    input CLK;
    input [2:0] EMA;
    input [1:0] EMAW;
    input EMAS;
    input RET1N;
    
    
    
    (* dont_touch = "true" *)reg [(DATAWIDTH-1):0] memory[0:(2**ADDRWIDTH-1)];
    
    initial
    begin
		(*ram_style="block"*) $readmemb(FILE_NAME, memory);
    end
    
    always @ (posedge CLK) begin
        if ((CEN==0)&(WEN==0)) memory[ADDR]<=D;
        else if((CEN==0)&(WEN==1)) Q<=memory[ADDR];
    end
    
endmodule