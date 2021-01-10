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


module BNNCtrl(
    input clk,
    input rst,
    input [15:0]inst,//input instructios
    output reg[16:0]bnncore_ctrl,//instruction to bnn_core
    output reg[14:0]datasram_ctrl,//12~0:address bits, 13: CEN, 14: WEN
    output wire[12:0]instsram_ctrl//10~0:address bits, 11: CEN, 12: WEN
    );
    
    reg [15:0]pc1;
    reg [15:0]pc2;
    reg [15:0]pc3;
    reg [15:0]pc4;

    reg [15:0]r1;
    reg [15:0]r2;
    reg [15:0]r3;
    reg [15:0]r4;

    assign instsram_ctrl[10:0] = pc1[10:0];
    assign instsram_ctrl[11] = 1'b0;
    assign instsram_ctrl[12] = 1'b1;

    always @(clk) begin
        if (rst) begin
            datasram_ctrl <= 0;
            bnncore_ctrl <= 0;
            pc1 <= 0;
            pc2 <= 0;
            pc3 <= 0;
            pc4 <= 0;
            r1 <= 0;
            r2 <= 0;
            r3 <= 0;
            r4 <= 0;
        end
        else case(inst[15:11])
        //NULL
        5'b00000: begin
            //Enable signals of BNN Core, DataSRAM are all invalid;
            datasram_ctrl[13] <= 1;
            pc1<=pc1+1;
        end
        //LOAD1L
        5'b00001: begin
                case(inst[10:8])
                    3'b000: ;
                    3'b001: pc2<={pc2[15:8],inst[7:0]};
                    3'b010: pc3<={pc3[15:8],inst[7:0]};
                    3'b011: pc4<={pc4[15:8],inst[7:0]};
                    3'b100: r1<={r1[15:8],inst[7:0]};
                    3'b101: r2<={r2[15:8],inst[7:0]};
                    3'b110: r3<={r3[15:8],inst[7:0]};
                    3'b111: r4<={r4[15:8],inst[7:0]};
                    default:;
                endcase
            pc1<=pc1+1;
            datasram_ctrl[13] <= 1;
            bnncore_ctrl <= 0;
        end
        //LOAD1H
        5'b00010: begin
                case(inst[10:8])
                    3'b000: ;
                    3'b001: pc2<={inst[7:0],pc2[7:0]};
                    3'b010: pc3<={inst[7:0],pc3[7:0]};
                    3'b011: pc4<={pc4[15:8],pc4[7:0]};
                    3'b100: r1<={inst[7:0],r1[7:0]};
                    3'b101: r2<={inst[7:0],r2[7:0]};
                    3'b110: r3<={inst[7:0],r3[7:0]};
                    3'b111: r4<={inst[7:0],r4[7:0]};
                    default:;
                endcase
            pc1<=pc1+1;
            datasram_ctrl[13] <= 1;
            bnncore_ctrl <= 0;
        end
        //LOAD2
        5'b00011: begin
            case(inst[10:9])
                //load weight WGT
                2'b00:begin
                    bnncore_ctrl[7] <= 1;//weight enable
                    bnncore_ctrl[2:1] <= pc3[1:0];//select a colomn of bpug

                    bnncore_ctrl[0] <= 0;
                    bnncore_ctrl[6:3] <= 0;
                    bnncore_ctrl[16:8] <= 0;

                    datasram_ctrl[12:0] <= pc2[12:0];
                    datasram_ctrl[13] <=0;
                    datasram_ctrl[14] <=1;
                end
                //load bias
                2'b01:begin
                    bnncore_ctrl[11] <= 1;//bias enable

                    bnncore_ctrl[10:0] <= 0;
                    bnncore_ctrl[16:12] <= 0;

                    datasram_ctrl[12:0] <= pc2[12:0];
                    datasram_ctrl[13] <=0;
                    datasram_ctrl[14] <=1;
                end
                //load image
                2'b10:begin
                    bnncore_ctrl[8] <= 1;//image enable
                    bnncore_ctrl[2:1] <=pc3[1:0];//select one col of bpugs
                    bnncore_ctrl[16] <= inst[8];//select to write in wchich part of IMG_REG, 1=[15:8], 0=[7:0]

                    bnncore_ctrl[0] <= 0;
                    bnncore_ctrl[7:3] <= 0;
                    bnncore_ctrl[15:9] <= 0;

                    datasram_ctrl[12:0] <= pc2[12:0];
                    datasram_ctrl[13] <=0;
                    datasram_ctrl[14] <=1;
                end
            endcase
            pc1 <= pc1 + 1;
            if(inst[0])begin
                pc2 <= pc2 + 1;
            end
            else begin
                pc2 <= pc2 - 1;
            end
            pc3 <= pc3 + 1;
        end
        //ADD1 a register add an immediate number
        5'b00100:begin
            case(inst[10:8])
                3'b000:;
                3'b001:begin
                    pc2 <= pc2 + $signed(inst[7:0]);
                end
                3'b010:begin
                    pc3 <= pc3 + $signed(inst[7:0]);
                end
                3'b011:begin
                    pc4 <= pc4 + $signed(inst[7:0]);
                end
                3'b100:begin
                    r1 <= r1 + $signed(inst[7:0]);
                end
                3'b101:begin
                    r2 <= r2 + $signed(inst[7:0]);
                end
                3'b110:begin
                    r3 <= r3 + $signed(inst[7:0]);
                end
                3'b111:begin
                    r4 <= r4 + $signed(inst[7:0]);
                end
            endcase
            pc1<=pc1+1;
            datasram_ctrl[13] <= 1;
            bnncore_ctrl <= 0;
        end
        //CMP
        5'b00101:begin
            case(inst[10:9])
                2'b00:begin
                    r1<= pc1>=inst[8:0]?0:1;
                end
                2'b01:begin
                    r1<= pc2>=inst[8:0]?0:1;
                end
                2'b10:begin
                    r1<= pc3>=inst[8:0]?0:1;
                end
                2'b11:begin
                    r1<= pc4>=inst[8:0]?0:1;
                end
            endcase
            pc1<=pc1+1;
            datasram_ctrl[13] <= 1;
            bnncore_ctrl <= 0;
        end
        //JUMP generally jump to a ceratin line
        5'b00110:begin
            if (r1) begin
                pc1 <= pc1 - inst[10:0];
            end

            else pc1<=pc1+1;
            bnncore_ctrl <= 0;
            datasram_ctrl[13] <= 1;
        end
        //EMPT
        5'b00111:begin
            bnncore_ctrl[0] <= 1;
            bnncore_ctrl[16:1] <=0;

            datasram_ctrl[13] <= 1;
            pc1<=pc1+1;
        end
        //BPUE ADD
        5'b01000:begin
            bnncore_ctrl[5] <= 1;
            bnncore_ctrl[3:1] <= pc3[2:0];
            bnncore_ctrl[6] <= inst[10];

            bnncore_ctrl[0] <= 0;
            bnncore_ctrl[4] <= 0;
            bnncore_ctrl[16:7] <= 0;

            datasram_ctrl[13] <= 1;
            pc1 <= pc1 + 1;
            pc3 <= pc3 + 1;
        end
        //BPUC ADD
        5'b01001:begin
            bnncore_ctrl[9] <= 1;
            bnncore_ctrl[4:1] <= pc3[3:0];//select one bpug

            bnncore_ctrl[0] <= 0;
            bnncore_ctrl[8:5] <= 0 ;
            bnncore_ctrl[16:10] <= 0;
            datasram_ctrl[13] <= 1;
            pc1 <= pc1 + 1;
            pc3 <= pc3 + 1;
        end
        //bnn_out, decides if pooling
        5'b01010:begin
            bnncore_ctrl[10] <= 1;//instruction to write a binary result into the register
            bnncore_ctrl[12] <= inst[10];//decides if write to pooling register
            bnncore_ctrl[6] <= inst[9];//if write in pooling register, decides writes in which rigster
            bnncore_ctrl[13] <= inst[8];//decides register together with ctrl[6]

            bnncore_ctrl[5:0] <= 0;
            bnncore_ctrl[9:7] <= 0;
            bnncore_ctrl[16:14] <= 0;
            datasram_ctrl[13] <= 1;
            pc1 <= pc1 + 1;
        end
        //store
        5'b01011:begin
            bnncore_ctrl[14] <= 1;
            bnncore_ctrl[6] <= inst[10];
            
            bnncore_ctrl[5:0] <= 0;
            bnncore_ctrl[13:7] <= 0;
            bnncore_ctrl[16:15] <= 0;

            datasram_ctrl[12:0] <= pc4[12:0];
            datasram_ctrl[13] <= 0;
            datasram_ctrl[14] <= 0;
            if (instsram_ctrl[9]) begin
                pc4 <= pc4 + 1;
            end
            else begin
                pc4 <= pc4 - 1;
            end
            pc1 <= pc1 + 1;
        end
        //img_reg shift up
        5'b01100:begin
            bnncore_ctrl[15] <= 1;

            bnncore_ctrl[14:0] <=0;
            bnncore_ctrl[16] <= 0;

            datasram_ctrl[13] <= 1;
            pc1 <= pc1 + 1;
        end
        default:;
        endcase
    end

endmodule
