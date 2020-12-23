`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/06 17:53:44
// Design Name: 
// Module Name: BPU
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


module BPUCtrl(
    input clk, 
    input rst,
    input [15:0]inst,//instructios
    output wire[12:0]bnncore_ctrl,
    output reg[]datasram_ctrl,
    output reg[]instsram_ctrl,
    );
    
    reg [15:0]pc1;
    reg [15:0]pc2;
    reg [15:0]pc3;
    reg [15:0]pc4;

    reg [15:0]r1;
    reg [15:0]r2;
    reg [15:0]r3;
    reg [15:0]r4;

    always @(inst or posedge rst) begin
        if (rst) begin
            // reset
            
        end
        else if () begin
            
        end
    end

    reg[10:0] cnt;

    always @(clk) begin
        if (rst) begin
            cnt <= 0;
        end
        case(inst[15:11])
        5'b00000: begin//NULL
            //  Enable signals of BNN Core, DataSRAM are all invalid;
            instsram_ctrl<=0;
            pc1<=pc1+1;
        end
        5'b00001: begin//LOAD1
            case(inst[10:8])
                3'b000: ;
                3'b001: pc2<={pc2[15:8],inst[7:0]};
                3'b010: pc3<={pc3[15:8],inst[7:0]};
                3'b011: pc4<={pc4[15:8],inst[7:0]};
                3'b100: r1<={r1[15:8],inst[7:0]};
                3'b101: r2<={r2[15:8],inst[7:0]};
                3'b110: r3<={r3[15:8],inst[7:0]};
                3'b111: r4<={r4[15:8],inst[7:0]};
            endcase
            pc1<=pc1+1;
            //instsram_ctrl<=
        end
        5'b00010: begin//LOAD2
            case(inst[10:9])
                2'b00:begin//load weight
                    
                end
                2'b01:begin//load bias
                    
                end
                2'b10:begin//load image
                    
                end
            endcase
            pc1<=pc1+1;
        end
        5'b00011:begin//a register add an immediate number
            case(inst[10:9])
                2'b00:begin
                    r1<=r1+inst[8:0];
                end
                2'b01:begin
                    r2<=r2+inst[8:0];
                end
                2'b10:begin
                    r3<=r3+inst[8:0];
                end
                2'b11:begin
                    r4<=r4+inst[8:0];
                end
            endcase
            pc1<=pc1+1;
        end
        5'b00100:begin//CMP
            case([inst[10:9]])
                2'b00:begin
                    r1<= r1>inst[8:0]?1:0;
                end
                2'b01:begin
                    r1<= r2>inst[8:0]?1:0;
                end
                2'b10:begin
                    r1<= r3>inst[8:0]?1:0;
                end
                2'b11:begin
                    r1<= r4>inst[8:0]?1:0;
                end
            endcase
            pc1<=pc1+1;
        end
        5'b00101:begin//JUMP
            if (r1) begin
                pc1 <= pc1 - inst[10:0];
            end
            else pc1<=pc1+1;
        end
        5'b00110:begin//EMPT
            bnncore_ctrl[0] <= 1;
            pc1<=pc1+1;
        end
        5'b00111:begin//BPPUE ADD
            bnncore_ctrl <= ;
        end
        5'b01000:begin//BPUC ADD
            
        end
        5'b01001:begin//pooling
            
        end
        5'b01010:begin//bnn out
            
        end
        5'b01011:begin//store
            
        end
        default:
        endcase
    end

endmodule
