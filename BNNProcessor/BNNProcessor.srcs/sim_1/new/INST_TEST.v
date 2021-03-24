`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/01/12 11:16:55
// Design Name: 
// Module Name: INST_TEST
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


module INST_TEST(
    );
    
    reg CLK; //10M
    reg RST;
    reg PAUSE;
    reg SRAMSEL;
    reg [12:0]SRAMA;
    reg SRAMMUX;
    reg SRAMCEN;
    reg SRAMWEN;
    reg SRAMDIN;
    wire SRAMDOUT;
    
    always #5 CLK=~CLK;
    initial begin
        CLK = 0;
        RST = 1;
        PAUSE = 0;
        SRAMSEL = 0;
        SRAMA = 0;
        SRAMMUX = 1;
        SRAMCEN = 1;
        SRAMWEN = 0;
        SRAMDIN = 1;
        #200 RST = 0;
    end
    TOP #(.DATASRAM_ADDRWIDTH(13),.DATASRAM_DATAWIDTH(32),.INSTSRAM_ADDRWIDTH(11),.INSTSRAM_DATAWIDTH(16))
    TOP (CLK, RST, PAUSE, SRAMSEL, SRAMA, SRAMMUX, SRAMCEN, SRAMWEN, SRAMDIN, SRAMDOUT);
    
endmodule
