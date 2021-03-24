`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/01/08 10:00:44
// Design Name: 
// Module Name: TOP_TEST
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


module TOP_TEST(

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
    initial
    begin
        CLK=0;
        RST=1;
        PAUSE=0;
        SRAMSEL=1;
        SRAMA=13'b0000000000000;
        SRAMMUX=0;
        SRAMCEN=1;
        SRAMWEN=1;
        SRAMDIN=0;
        #100 RST=0;
        SRAMA=13'b1111111100000; //ADDR=8160
        SRAMSEL=1;
        SRAMCEN=0;
        SRAMMUX=1;
        #10 SRAMWEN=0;
        SRAMDIN=1;
        #40 SRAMDIN=0;
        #40 SRAMDIN=1;
        #40 SRAMDIN=0;
        #40 SRAMDIN=1;
        #40 SRAMDIN=0;
        #40 SRAMDIN=1;
        #40 SRAMDIN=0;
        #40 SRAMDIN=1;
        #40 SRAMDIN=0;
        #40 SRAMDIN=1;
        #50 SRAMCEN=1;
        SRAMWEN=1;
        #50 SRAMA=13'b0000000011111; //ADDR=31
        SRAMSEL=1;
        SRAMCEN=0;
        SRAMMUX=1;
        #20 SRAMWEN=0;
        SRAMDIN=1;
        #20 SRAMDIN=0;
        #20 SRAMDIN=1;
        #20 SRAMDIN=0;
        #20 SRAMDIN=1;
        #20 SRAMDIN=0;// DATA=32'h33333333
        #20 SRAMDIN=1;
        #20 SRAMDIN=0;
        #20 SRAMDIN=1;
        #20 SRAMDIN=0;
        #20 SRAMDIN=1;
        #20 SRAMDIN=0;
        #20 SRAMDIN=1;
        #20 SRAMDIN=0;
        #20 SRAMDIN=1;
        #20 SRAMDIN=0;
        #20 SRAMDIN=1;
        #20 SRAMDIN=0;
        #20 SRAMDIN=1;
        #20 SRAMDIN=0;
        #20 SRAMDIN=1;
        #50 SRAMCEN=1;
        SRAMWEN=1;
        #50 SRAMA=13'b0000000011111;// ADDR=31
        SRAMSEL=1;
        SRAMCEN=0;
        SRAMMUX=0;
        #20 SRAMWEN=0;
        SRAMDIN=1;
        #20 SRAMDIN=0;
        #40 SRAMDIN=1;
        #40 SRAMDIN=0;
        #20 SRAMDIN=1;
        #20 SRAMDIN=0;//DATA=16'b0011001111000011=16'h33c3
        #20 SRAMDIN=1;
        #20 SRAMDIN=0;
        #20 SRAMDIN=1;
        #20 SRAMDIN=0;
        #20 SRAMDIN=1;
        #20 SRAMDIN=0;
        #20 SRAMDIN=1;
        #20 SRAMDIN=0;
        #20 SRAMDIN=1;
        #20 SRAMDIN=0;
        #20 SRAMDIN=1;
        #20 SRAMDIN=0;
        #20 SRAMDIN=1;
        #50 SRAMCEN=1;
        SRAMWEN=1;
        #50 SRAMA=13'b1111111100000;// ADDR=2016
        SRAMSEL=1;
        SRAMCEN=0;
        SRAMMUX=0;
        #20 SRAMWEN=0;
        SRAMDIN=1;
        #40 SRAMDIN=0;
        #40 SRAMDIN=1;
        #40 SRAMDIN=0;
        #40 SRAMDIN=1;//DATA=16'h0f0f
        #40 SRAMDIN=0;
        #40 SRAMDIN=1;
        #40 SRAMDIN=0;
        #40 SRAMDIN=1;
        #40 SRAMDIN=0;
        #40 SRAMDIN=1;
        #50 SRAMCEN=1;
        #50 SRAMA=13'b000000011111;
        SRAMSEL=1;
        SRAMCEN=0;
        SRAMMUX=0;
        SRAMWEN=1;
        SRAMDIN=0;
        #380 SRAMCEN=1;
        SRAMA=13'b000000011111;
        #20 SRAMSEL=1;
        SRAMCEN=0;
        SRAMMUX=1;
        SRAMWEN=1;
        SRAMDIN=0;
        #380 SRAMCEN=1;
        SRAMA=13'b1111111100000;
        #20 SRAMSEL=1;
        SRAMCEN=0;
        SRAMMUX=1;
        SRAMWEN=1;
        SRAMDIN=0;
        #380 SRAMCEN=1;
        SRAMA=13'b1111111100000;
        #20 SRAMSEL=1;
        SRAMCEN=0;
        SRAMMUX=0;
        SRAMWEN=1;
        SRAMDIN=0;
    end
    
    TOP #(.DATASRAM_ADDRWIDTH(13),.DATASRAM_DATAWIDTH(32),.INSTSRAM_ADDRWIDTH(11),.INSTSRAM_DATAWIDTH(16))
    TOP (CLK, RST, PAUSE, SRAMSEL, SRAMA, SRAMMUX, SRAMCEN, SRAMWEN, SRAMDIN, SRAMDOUT);
   
endmodule