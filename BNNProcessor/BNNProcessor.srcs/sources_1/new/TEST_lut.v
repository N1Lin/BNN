`timescale 1ns / 1ps

module TEST_lut(
    input [3:0][4:0]addr,
    output  wire signed[5:0] result
    );
    
    wire [31:0][2:0]lut;
    assign lut = '{'{3'b101},'{3'b100},'{3'b100},'{3'b11},'{3'b100},'{3'b11},'{3'b11},'{3'b10},'{3'b100},'{3'b11},'{3'b11},'{3'b10},'{3'b11},'{3'b10},'{3'b10},'{3'b1},'{3'b100},'{3'b11},'{3'b11},'{3'b10},'{3'b11},'{3'b10},'{3'b10},'{3'b1},'{3'b11},'{3'b10},'{3'b10},'{3'b1},'{3'b10},'{3'b1},'{3'b1},'{3'b0}};
    wire [2:0] result1;
    assign result1 = lut[addr[0]];
    
    wire [2:0] result2;
    assign result2 = lut[addr[1]];
    
    wire [2:0] result3;
    assign result3 = lut[addr[2]];
    
    wire [2:0] result4;
    assign result4 = lut[addr[3]];
    
    wire[4:0] result5;
    assign result5 = result1 + result2 + result3 + result4;
    wire[5:0] result6;
    assign result6[5:1] = result5;
    assign result6[0] = 1'b0;
    
    assign result = result6-20;
endmodule
