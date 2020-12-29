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
    output reg[16:0]bnncore_ctrl,
    output reg[1:0]datasram_ctrl,
    output reg[1:0]instsram_ctrl
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
        else begin
            
        end
    end

    reg[10:0] cnt;

    always @(clk) begin
        if (rst) begin
            cnt <= 0;
        end
        case(inst[15:11])//
        5'b00000: begin//NULL
            //  Enable signals of BNN Core, DataSRAM are all invalid;
            instsram_ctrl<=0;
            pc1<=pc1+1;
        end
        5'b00001: begin//LOAD1L
                case(inst[10:8])
                    3'b000: ;
                    3'b001: pc2<={pc2[15:8],inst[7:0]};
                    3'b010: pc3<={pc3[15:8],inst[7:0]};
                    3'b011: pc4<={pc4[15:8],inst[7:0]};
                    3'b100: r1<={r1[15:8],inst[7:0]};
                    3'b101: r2<={r2[15:8],inst[7:0]};
                    3'b110: r3<={r3[15:8],inst[7:0]};
                    3'b111: r4<={r4[15:8],inst[7:0]};
                    default: begin
                        
                    end
                endcase
            pc1<=pc1+1;
        end
        5'b00010: begin//LOAD1H
                case(inst[10:8])
                    3'b000: ;
                    3'b001: pc2<={inst[7:0],pc2[7:0]};
                    3'b010: pc3<={inst[7:0],pc3[7:0]};
                    3'b011: pc4<={pc4[15:8],pc4[7:0]};
                    3'b100: r1<={inst[7:0],r1[7:0]};
                    3'b101: r2<={inst[7:0],r2[7:0]};
                    3'b110: r3<={inst[7:0],r3[7:0]};
                    3'b111: r4<={inst[7:0],r4[7:0]};
                    default:begin
                        
                    end
                endcase
            pc1<=pc1+1;
        end
        5'b00011: begin//LOAD2
            case(inst[10:9])
                2'b00:begin//load weight
                    bnncore_ctrl[7] <= 1;//weight enable
                    bnncore_ctrl[2:1] <= inst[8:7];//select a colomn of bpug

                    bnncore_ctrl[0] <= 0;
                    bnncore_ctrl[6:3] <= 0;
                    bnncore_ctrl[16:8] <= 0;
                end
                2'b01:begin//load bias
                    bnncore_ctrl[11] <= 1;//bias enable

                    bnncore_ctrl[10:0] <= 0;
                    bnncore_ctrl[16:12] <= 0;
                end
                2'b10:begin//load image
                    bnncore_ctrl[8] <= 1;//image enable
                    bnncore_ctrl[2:1] <= inst[8:7];//select one col of bpugs
                    bnncore_ctrl[16] <= inst[6];//select to write in wchich part of IMG_REG, 1=[15:8], 0=[7:0]

                    bnncore_ctrl[0] <= 0;
                    bnncore_ctrl[7:3] <= 0;
                    bnncore_ctrl[15:9] <= 0;
                end
            endcase
            pc1<=pc1+1;
        end
        5'b00100:begin//ADD1 a register add an immediate number
            case(inst[10:9])
                2'b00:begin
                    r1<=r1+$signed(inst[8:0]);
                end
                2'b01:begin
                    r2<=r2+$signed(inst[8:0]);
                end
                2'b10:begin
                    r3<=r3+$signed(inst[8:0]);
                end
                2'b11:begin
                    r4<=r4+$signed(inst[8:0]);
                end
            endcase
            pc1<=pc1+1;
        end
        5'b00101:begin//CMP
            case(inst[10:9])
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
        5'b00110:begin//JUMP generally jump to a ceratin line
            if (r1) begin
                pc1 <= pc1 - inst[10:0];
            end
            else pc1<=pc1+1;
        end
        5'b00111:begin//EMPT
            bnncore_ctrl[0] <= 1;
            bnncore_ctrl[16:1] <=0;
            pc1<=pc1+1;
        end
        5'b01000:begin//BPPUE ADD
            bnncore_ctrl[5] <= 1;
            bnncore_ctrl[3:1] <= inst[10:8];//select one bpue  should replace inst[10:8] with pc3[2:0]

            bnncore_ctrl[0] <= 0;
            bnncore_ctrl[4] <= 0;
            bnncore_ctrl[16:6] <= 0;
        end
        5'b01001:begin//BPUC ADD
            bnncore_ctrl[9] <= 1;
            bnncore_ctrl[4:1] <= inst[10:7];//select one bpug

            bnncore_ctrl[0] <= 0;
            bnncore_ctrl[8:5] <= 0 ;
            bnncore_ctrl[16:10] <= 0;
        end
        5'b01010:begin//bnn out, this decides if pooling
            bnncore_ctrl[10] <= 1;//instruction to write a binary result into the register
            bnncore_ctrl[12] <= inst[10];//decides if write to pooling register
            bnncore_ctrl[6] <= inst[9];//if write in pooling register, decides writes in which rigster
            bnncore_ctrl[13] <= inst[8];//

            bnncore_ctrl[5:0] <= 0;
            bnncore_ctrl[9:7] <= 0;
            bnncore_ctrl[16:14] <= 0;
        end
        5'b01011:begin//store
            bnncore_ctrl[14] <= 1;
            bnncore_ctrl[6] <= inst[10];
            
            bnncore_ctrl[5:0] <= 0;
            bnncore_ctrl[13:7] <= 0;
            bnncore_ctrl[16:15] <= 0;
        end
        5'b01100:begin//img_reg shift up
            bnncore_ctrl[15] <= 1;

            bnncore_ctrl[14:0] <=0;
            bnncore_ctrl[16] <= 0;
        end
        5'b01101:begin//decide load data in which part of img_reg
            bnncore_ctrl[16] <= inst[10];
        end
        default:begin
            
        end
        endcase
    end

endmodule
