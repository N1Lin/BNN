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
    input pause,
    input [15:0]inst,//input instructios
    output reg[19:0]bnncore_ctrl,//instruction to bnn_core
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
    reg [15:0]r5;
    reg [15:0]r6;
    reg [15:0]r7;
    reg [15:0]r8;
    reg [15:0]r9;
    reg [15:0]r10;
    reg [15:0]r11;
    reg [15:0]r12;

    assign instsram_ctrl[10:0] = pc1[10:0];
    assign instsram_ctrl[11] = 1'b0;
    assign instsram_ctrl[12] = 1'b1;

    always @(posedge clk) begin
        if (rst) begin
            datasram_ctrl[14] <= 1;
            datasram_ctrl[13] <= 1;
            datasram_ctrl[12:0] <= 0;
            bnncore_ctrl <= 0;
            pc1 <= 0;
            pc2 <= 0;
            pc3 <= 0;
            pc4 <= 0;
            r1 <= 0;
            r2 <= 0;
            r3 <= 0;
            r4 <= 0;
            r5 <= 0;
            r6 <= 0;
            r7 <= 0;
            r8 <= 0;
            r9 <= 0;
            r10 <= 0;
            r11 <= 0;
            r12 <= 0;
        end
        else if (pause) begin
            bnncore_ctrl <= 0;
            datasram_ctrl[13] <= 1;
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
                    3'b011: pc4<={inst[7:0],pc4[7:0]};
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
                    bnncore_ctrl[2:1] <= inst[8:7];//select a colomn of bpug
                    bnncore_ctrl[19:17] <= inst[6:4];//select a block of weight register

                    bnncore_ctrl[0] <= 0;
                    bnncore_ctrl[6:3] <= 0;
                    bnncore_ctrl[16:8] <= 0;

                    datasram_ctrl[12:0] <= pc2[12:0];//data address
                    datasram_ctrl[13] <=0;
                    datasram_ctrl[14] <=1;
                end
                //load bias
                2'b01:begin
                    bnncore_ctrl[11] <= 1;//bias enable

                    bnncore_ctrl[10:0] <= 0;
                    bnncore_ctrl[19:12] <= 0;

                    datasram_ctrl[12:0] <= pc2[12:0];
                    datasram_ctrl[13] <=0;
                    datasram_ctrl[14] <=1;
                end
                //load image
                2'b10:begin
                    bnncore_ctrl[8] <= 1;//image enable
                    bnncore_ctrl[2:1] <=inst[8:7];//select one col of bpugs
                    bnncore_ctrl[16] <= inst[6];//select to write in wchich part of IMG_REG, 1=[15:8], 0=[7:0]

                    bnncore_ctrl[0] <= 0;
                    bnncore_ctrl[7:3] <= 0;
                    bnncore_ctrl[15:9] <= 0;

                    datasram_ctrl[12:0] <= pc2[12:0];//data's address
                    datasram_ctrl[13] <=0;
                    datasram_ctrl[14] <=1;
                end
                //load kernel size& BPUG enables& BPU enables
                2'b11:begin
                    bnncore_ctrl[8] <= 1;//image enable
                    bnncore_ctrl[15] <= 1;//image-up enable
                    //when both 8& 15 are 1, write in kernel size and those enable signals

                    bnncore_ctrl[7:0] <= 0;
                    bnncore_ctrl[14:9] <= 0;

                    datasram_ctrl[12:0] <= pc2[12:0];//data's address
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
        end
        //ADD1 a register add an immediate number
        5'b00100:begin
            case(inst[10:7])
                4'b0000:;
                4'b0001:begin
                    pc2 <= pc2 + $signed({{9{inst[6]}},inst[6:0]});
                end
                4'b0010:begin
                    pc3 <= pc3 + $signed({{9{inst[6]}},inst[6:0]});
                end
                4'b0011:begin
                    pc4 <= pc4 + $signed({{9{inst[6]}},inst[6:0]});
                end
                4'b0100:begin
                    r1 <= r1 + $signed({{9{inst[6]}},inst[6:0]});
                end
                4'b0101:begin
                    r2 <= r2 + $signed({{9{inst[6]}},inst[6:0]});
                end
                4'b0110:begin
                    r3 <= r3 + $signed({{9{inst[6]}},inst[6:0]});
                end
                4'b0111:begin
                    r4 <= r4 + $signed({{9{inst[6]}},inst[6:0]});
                end
                4'b1000:begin
                    r5 <= r5 + $signed({{9{inst[6]}},inst[6:0]});
                end
                4'b1001:begin
                    r6 <= r6 + $signed({{9{inst[6]}},inst[6:0]});
                end
                4'b1010:begin
                    r7 <= r7 + $signed({{9{inst[6]}},inst[6:0]});
                end
                4'b1011:begin
                    r8 <= r8 + $signed({{9{inst[6]}},inst[6:0]});
                end
                4'b1100:begin
                    r9 <= r9 + $signed({{9{inst[6]}},inst[6:0]});
                end
                4'b1101:begin
                    r10 <= r10 + $signed({{9{inst[6]}},inst[6:0]});
                end
                4'b1110:begin
                    r11 <= r11 + $signed({{9{inst[6]}},inst[6:0]});
                end
                4'b1111:begin
                    r12 <= r12 + $signed({{9{inst[6]}},inst[6:0]});
                end
            endcase
            pc1<=pc1+1;
            datasram_ctrl[13] <= 1;
            bnncore_ctrl <= 0;
        end
        //CMP
        5'b00101:begin
            case(inst[10:7])
                4'b0000:begin
                    r1<= r1>=inst[6:0]?0:1;
                end
                4'b0001:begin
                    r1<= r2>=inst[6:0]?0:1;
                end
                4'b0010:begin
                    r1<= r3>=inst[6:0]?0:1;
                end
                4'b0011:begin
                    r1<= r4>=inst[6:0]?0:1;
                end
                4'b0100:begin
                    r1<= r5>=inst[6:0]?0:1;
                end
                4'b0101:begin
                    r1<= r6>=inst[6:0]?0:1;
                end
                4'b0110:begin
                    r1<= r7>=inst[6:0]?0:1;
                end
                4'b0111:begin
                    r1<= r8>=inst[6:0]?0:1;
                end
                4'b1000:begin
                    r1<= r9>=inst[6:0]?0:1;
                end
                4'b1001:begin
                    r1<= r10>=inst[6:0]?0:1;
                end
                4'b1010:begin
                    r1<= r11>=inst[6:0]?0:1;
                end
                4'b1011:begin
                    r1<= r12>=inst[6:0]?0:1;
                end
                4'b1100:begin
                    r1<= pc1>=inst[6:0]?0:1;
                end
                4'b1101:begin
                    r1<= pc2>=inst[6:0]?0:1;
                end
                4'b1110:begin
                    r1<= pc3>=inst[6:0]?0:1;
                end
                4'b1111:begin
                    r1<= pc4>=inst[6:0]?0:1;
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
            bnncore_ctrl[3:1] <= inst[10:8];
            bnncore_ctrl[6] <= inst[7];

            bnncore_ctrl[0] <= 0;
            bnncore_ctrl[4] <= 0;
            bnncore_ctrl[16:7] <= 0;

            datasram_ctrl[13] <= 1;
            pc1 <= pc1 + 1;
        end
        //BPUC ADD
        5'b01001:begin
            bnncore_ctrl[9] <= 1;
            bnncore_ctrl[4:1] <= inst[10:7];//select one bpug

            bnncore_ctrl[0] <= 0;
            bnncore_ctrl[8:5] <= 0 ;
            bnncore_ctrl[16:10] <= 0;
            datasram_ctrl[13] <= 1;
            pc1 <= pc1 + 1;
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
            if (inst[9]) begin
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
        //Register MOV 
        5'b01101:begin
            pc1<=pc1+1;
            datasram_ctrl[13] <= 1;
            bnncore_ctrl <= 0;
            case (inst[10:8]) //inst[10:8]:destination register   inst[7:5] source register
                3'b000: pc1<=inst[7]?(inst[6]?(inst[5]?r4:r3):(inst[5]?r2:r1)):(inst[6]?(inst[5]?pc4:pc3):(inst[5]?pc2:pc1));
                3'b001: pc2<=inst[7]?(inst[6]?(inst[5]?r4:r3):(inst[5]?r2:r1)):(inst[6]?(inst[5]?pc4:pc3):(inst[5]?pc2:pc1));
                3'b010: pc3<=inst[7]?(inst[6]?(inst[5]?r4:r3):(inst[5]?r2:r1)):(inst[6]?(inst[5]?pc4:pc3):(inst[5]?pc2:pc1));
                3'b011: pc4<=inst[7]?(inst[6]?(inst[5]?r4:r3):(inst[5]?r2:r1)):(inst[6]?(inst[5]?pc4:pc3):(inst[5]?pc2:pc1));
                3'b100: r1<=inst[7]?(inst[6]?(inst[5]?r4:r3):(inst[5]?r2:r1)):(inst[6]?(inst[5]?pc4:pc3):(inst[5]?pc2:pc1));
                3'b101: r2<=inst[7]?(inst[6]?(inst[5]?r4:r3):(inst[5]?r2:r1)):(inst[6]?(inst[5]?pc4:pc3):(inst[5]?pc2:pc1));
                3'b110: r3<=inst[7]?(inst[6]?(inst[5]?r4:r3):(inst[5]?r2:r1)):(inst[6]?(inst[5]?pc4:pc3):(inst[5]?pc2:pc1));
                3'b111: r4<=inst[7]?(inst[6]?(inst[5]?r4:r3):(inst[5]?r2:r1)):(inst[6]?(inst[5]?pc4:pc3):(inst[5]?pc2:pc1));
            endcase
        end
        //LOAD3L
        5'b01110: begin
                case(inst[10:8])
                    3'b000: r5<={r5[15:8],inst[7:0]};
                    3'b001: r6<={r6[15:8],inst[7:0]};
                    3'b010: r7<={r7[15:8],inst[7:0]};
                    3'b011: r8<={r8[15:8],inst[7:0]};
                    3'b100: r9<={r9[15:8],inst[7:0]};
                    3'b101: r10<={r10[15:8],inst[7:0]};
                    3'b110: r11<={r11[15:8],inst[7:0]};
                    3'b111: r12<={r12[15:8],inst[7:0]};
                    default:;
                endcase
            pc1<=pc1+1;
            datasram_ctrl[13] <= 1;
            bnncore_ctrl <= 0;
        end
        //LOAD3H
        5'b01111: begin
                case(inst[10:8])
                    3'b000: r5<={inst[7:0],r5[7:0]};
                    3'b001: r6<={inst[7:0],r6[7:0]};
                    3'b010: r7<={inst[7:0],r7[7:0]};
                    3'b011: r8<={inst[7:0],r8[7:0]};
                    3'b100: r9<={inst[7:0],r9[7:0]};
                    3'b101: r10<={inst[7:0],r10[7:0]};
                    3'b110: r11<={inst[7:0],r11[7:0]};
                    3'b111: r12<={inst[7:0],r12[7:0]};
                    default:;
                endcase
            pc1<=pc1+1;
            datasram_ctrl[13] <= 1;
            bnncore_ctrl <= 0;
        end
        default:;
        endcase
    end

endmodule
