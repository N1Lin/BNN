`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2020/11/08 22:02:34
// Design Name: BNN Processor
// Module Name: BPUG
// Project Name: BNN Processor
// Target Devices: Zed Board
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module BPUG(
    input clk,
    input rst,
    input [2:0]height,
    input sel,//
    input enable,
    input [12:0] instruction_in,//instructions bus
    input [7:0]data_in,// input data, both image and weight
    output wire signed[7:0][6:0] bpu_out//calculation of BPU
    );
    
    wire clk_bpug;
    assign clk_bpug = clk & enable;
    
    wire[4:0] instruction;//calculation instruction to BPU
    assign instruction[4:0] =instruction_in[4:0];
    wire data_sel;//image data selector
    assign data_sel = instruction_in[5];// =0, [6:0]of image data; =1, [7:1] of image data
    //data_sel at the same time controls the address of pooling
    wire[1:0]en;//img and wgt shift register's enable signal, the 0nd bit for wgt, 1st bit for img
    assign en = instruction_in[7:6];
    wire img_reg_up;//let the img reg shift upwards 1bit
    assign img_reg_up = instruction_in[8];
    wire img_reg_sel;//to select [7:0][7:0] of img for calculation
    assign  img_reg_sel = instruction_in[9];
    wire [2:0] wgt_sel;
    assign wgt_wel = instruction_in[12:10];
    
    ////////////////////////////////////////////////////////////
    
    wire [7:0]img_in;//image data in
    assign img_in = data_in;
    wire [6:0]wgt_in;//weight data in
    assign wgt_in = data_in[6:0];
    
    wire img_en;//enable the image shift register
    assign img_en = en[1];
    wire wgt_en;//enable the weight shift register
    assign wgt_en = en[0];
    
    reg [15:0][7:0]img_reg;//register to store image data
    always@(posedge clk_bpug)begin
        if(rst) begin
            img_reg<=0;
        end
        else if(img_en & sel & (!img_reg_up))begin
            if (!img_reg_sel) begin
                img_reg[0] <= {img_reg[0][6:0],img_in[0]};//another shift register
                img_reg[1] <= {img_reg[1][6:0],img_in[1]};
                img_reg[2] <= {img_reg[2][6:0],img_in[2]};
                img_reg[3] <= {img_reg[3][6:0],img_in[3]};
                img_reg[4] <= {img_reg[4][6:0],img_in[4]};
                img_reg[5] <= {img_reg[5][6:0],img_in[5]};
                img_reg[6] <= {img_reg[6][6:0],img_in[6]};
                img_reg[7] <= {img_reg[7][6:0],img_in[7]};
            end
            else if(img_reg_sel) begin
                img_reg[8] <= {img_reg[8][6:0],img_in[0]};//another shift register
                img_reg[9] <= {img_reg[9][6:0],img_in[1]};
                img_reg[10] <= {img_reg[10][6:0],img_in[2]};
                img_reg[11] <= {img_reg[11][6:0],img_in[3]};
                img_reg[12] <= {img_reg[12][6:0],img_in[4]};
                img_reg[13] <= {img_reg[13][6:0],img_in[5]};
                img_reg[14] <= {img_reg[14][6:0],img_in[6]};
                img_reg[15] <= {img_reg[15][6:0],img_in[7]};
            end
        end
        else if (img_reg_up & (!img_en)) begin
            img_reg[14:0] <= img_reg[15:1];
        end
    end
    
    wire [6:0][6:0]img;
    assign img[6] = data_sel? img_reg[6][7:1]:img_reg[6][6:0];
    assign img[5] = data_sel? img_reg[5][7:1]:img_reg[5][6:0];
    
    assign img[0] = data_sel? img_reg[0][7:1]:img_reg[0][6:0];
    assign img[1] = data_sel? img_reg[1][7:1]:img_reg[1][6:0];
    assign img[2] = data_sel? img_reg[2][7:1]:img_reg[2][6:0];
    assign img[3] = data_sel? img_reg[3][7:1]:img_reg[3][6:0];
    assign img[4] = data_sel? img_reg[4][7:1]:img_reg[4][6:0];
    
    
    
    wire[7:0] wgt_en_bpu;
    assign wgt_en_bpu[0] = wgt_sel==0? wgt_en:0;
    assign wgt_en_bpu[1] = wgt_sel==1? wgt_en:0;
    assign wgt_en_bpu[2] = wgt_sel==2? wgt_en:0;
    assign wgt_en_bpu[3] = wgt_sel==3? wgt_en:0;
    assign wgt_en_bpu[4] = wgt_sel==4? wgt_en:0;
    assign wgt_en_bpu[5] = wgt_sel==5? wgt_en:0;
    assign wgt_en_bpu[6] = wgt_sel==6? wgt_en:0;
    assign wgt_en_bpu[7] = wgt_sel==7? wgt_en:0;
    
    //instance
    BPU bpu0(.clk(clk_bpug),
    .rst(rst),
    .height(height),
    .wgt_en(wgt_en_bpu[0]),
    .instruction(instruction),
    .img(img),
    .wgt_input(wgt_in),
    .popcnt_add(bpu_out[0]));
    BPU bpu1(.clk(clk_bpug),
    .rst(rst),
    .height(height),
    .wgt_en(wgt_en_bpu[1]),
    .instruction(instruction),
    .img(img),
    .wgt_input(wgt_in),
    .popcnt_add(bpu_out[1]));
    BPU bpu2(.clk(clk_bpug),
    .rst(rst),
    .height(height),
    .wgt_en(wgt_en_bpu[2]),
    .instruction(instruction),
    .img(img),
    .wgt_input(wgt_in),
    .popcnt_add(bpu_out[2]));
    BPU bpu3(.clk(clk_bpug),
    .rst(rst),
    .height(height),
    .wgt_en(wgt_en_bpu[3]),
    .instruction(instruction),
    .img(img),
    .wgt_input(wgt_in),
    .popcnt_add(bpu_out[3]));
    BPU bpu4(.clk(clk_bpug),
    .rst(rst),
    .height(height),
    .wgt_en(wgt_en_bpu[4]),
    .instruction(instruction),
    .img(img),
    .wgt_input(wgt_in),
    .popcnt_add(bpu_out[4]));
    BPU bpu5(.clk(clk_bpug),
    .rst(rst),
    .height(height),
    .wgt_en(wgt_en_bpu[5]),
    .instruction(instruction),
    .img(img),
    .wgt_input(wgt_in),
    .popcnt_add(bpu_out[5]));
    BPU bpu6(.clk(clk_bpug),
    .rst(rst),
    .height(height),
    .wgt_en(wgt_en_bpu[6]),
    .instruction(instruction),
    .img(img),
    .wgt_input(wgt_in),
    .popcnt_add(bpu_out[6]));
    BPU bpu7(.clk(clk_bpug),
    .rst(rst),
    .height(height),
    .wgt_en(wgt_en_bpu[7]),
    .instruction(instruction),
    .img(img),
    .wgt_input(wgt_in),
    .popcnt_add(bpu_out[7]));
    
endmodule