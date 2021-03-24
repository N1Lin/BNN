`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/01/05 11:03:27
// Design Name: 
// Module Name: SRAM_TEST
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


module SRAM_TEST(

    );
    reg CLK;
    reg [10:0] ADDR;
    reg [15:0] D;
    wire [15:0] Q;
    reg CEN;
    reg WEN;
    reg [2:0] EMA;
    reg [1:0] EMAW;
    reg EMAS;
    reg RET1N;
    
    always #5 CLK=~CLK;
    
    initial
    begin
        CLK=0;
        CEN=1;
        WEN=0;
        EMA=3'b010;
        EMAW=2'b00;
        EMAS=0;
        RET1N=1;
        #100 ADDR=11'b01110111110;
        D=16'b0101010101010101;
        CEN=0;
        WEN=0;
        #100 ADDR=11'b11110111110;
        D=16'b1100111100010011;
        CEN=0;
        WEN=0;
        #100 ADDR=11'b00111111110;
        D=16'b0000000000000000;
        CEN=0;
        WEN=0;
        #100 ADDR=11'b00111111110;
        D=16'b0000000000000000;
        CEN=0;
        WEN=1;
        #100 ADDR=11'b11110111110;
        D=16'b1100111100010011;
        CEN=0;
        WEN=1;
        #100 ADDR=11'b01110111110;
        D=16'b0101010101010101;
        CEN=0;
        WEN=1;
    end
    TOP #(.INSTSRAM_ADDRWIDTH(11), .INSTSRAM_DATAWIDTH(16)) SRAM(ADDR, D, Q, CEN, WEN, CLK, EMA, EMAW, EMAS, RET1N);
endmodule
