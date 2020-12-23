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
    input [7:0]data_in,// input data, both image and weight
    input [9:0] instruction_in,//instructions bus
    input sel,// 
    output wire signed[7:0][6:0] bpu_out//calculation of BPU
    );
    
    wire[4:0] instruction;//calculation instruction to BPU
    assign instruction =instruction_in[4:0];
    wire data_sel;//image data selector
    assign data_sel = instruction_in[5];// =0, [6:0]of image data; =1, [7:1] of image data
    //data_sel at the same time controls the address of pooling
    wire[1:0]en;//img and wgt shift register's enable signal, the 0nd bit for wgt, 1st bit for img
    assign en = instruction_in[7:6];
    wire img_reg_up;//let the img reg shift upwards 1bit
    assign img_reg_up = instruction_in[8];
    wire img_reg_sel;//to select [7:0][7:0] of img for calculation
    assign  img_reg_sel = instruction_in[9];
    ////////////////////////////////////////////////////////////
    
    wire [7:0]img_in;//image data in
    assign img_in = data_in;
    wire [6:0]wgt_in;//weight data in
    assign wgt_in = data_in[6:0];
    
    wire img_en;//enable the image shift register
    assign img_en = en[1];
    wire wgt_en;//enable the weight shift register
    assign wgt_en = en[0];
    
    reg [55:0][7:0]wgt;// wgt[56] is this layer's bias, the rest is
    always@(posedge clk)begin
        if(rst)begin
            wgt <= 0;
        end
        else if(wgt_en&sel) begin
            wgt <= {wgt[54:0],wgt_in};//shift register
        end
    end
    
    reg [7:0][15:0]img_reg;//register to store image data
    always@(posedge clk)begin
        if(rst) begin
            img_reg<=0;
        end
        else if(img_en&sel&(!img_reg_up))begin
            if (!img_reg_sel) begin
                img_reg[0] <= {img_reg[0][14:0],img_in[0]};//another shift register
                img_reg[1] <= {img_reg[1][14:0],img_in[1]};
                img_reg[2] <= {img_reg[2][14:0],img_in[2]};
                img_reg[3] <= {img_reg[3][14:0],img_in[3]};
                img_reg[4] <= {img_reg[4][14:0],img_in[4]};
                img_reg[5] <= {img_reg[5][14:0],img_in[5]};
                img_reg[6] <= {img_reg[6][14:0],img_in[6]};
                img_reg[7] <= {img_reg[7][14:0],img_in[7]};
            end
            else if(img_reg_sel) begin
                img_reg[8] <= {img_reg[8][14:0],img_in[0]};//another shift register
                img_reg[9] <= {img_reg[9][14:0],img_in[1]};
                img_reg[10] <= {img_reg[10][14:0],img_in[2]};
                img_reg[11] <= {img_reg[11][14:0],img_in[3]};
                img_reg[12] <= {img_reg[12][14:0],img_in[4]};
                img_reg[13] <= {img_reg[13][14:0],img_in[5]};
                img_reg[14] <= {img_reg[14][14:0],img_in[6]};
                img_reg[15] <= {img_reg[15][14:0],img_in[7]};
            end
        end
        else if (img_reg_up) begin
            img_reg[14:0] <= img_reg[15:1];
        end
    end
    
    wire [6:0][6:0]img;
    assign img = data_sel? img_reg[6:0][6:0]:img_reg[6:0][7:1];
    
    //instance
    BPU bpu0(.clk(clk),
    .rst(rst),
    .instruction(instruction),
    .img(img),
    .wgt(wgt[6:0]),
    .popcnt_add(bpu_out[0]));
    BPU bpu1(.clk(clk),
    .rst(rst),
    .instruction(instruction),
    .img(img),
    .wgt(wgt[13:7]),
    .popcnt_add(bpu_out[1]));
    BPU bpu2(.clk(clk),
    .rst(rst),
    .instruction(instruction),
    .img(img),
    .wgt(wgt[20:14]),
    .popcnt_add(bpu_out[2]));
    BPU bpu3(.clk(clk),
    .rst(rst),
    .instruction(instruction),
    .img(img),
    .wgt(wgt[27:21]),
    .popcnt_add(bpu_out[3]));
    BPU bpu4(.clk(clk),
    .rst(rst),
    .instruction(instruction),
    .img(img),
    .wgt(wgt[34:28]),
    .popcnt_add(bpu_out[4]));
    BPU bpu5(.clk(clk),
    .rst(rst),
    .instruction(instruction),
    .img(img),
    .wgt(wgt[41:35]),
    .popcnt_add(bpu_out[5]));
    BPU bpu6(.clk(clk),
    .rst(rst),
    .instruction(instruction),
    .img(img),
    .wgt(wgt[48:42]),
    .popcnt_add(bpu_out[6]));
    BPU bpu7(.clk(clk),
    .rst(rst),
    .instruction(instruction),
    .img(img),
    .wgt(wgt[55:49]),
    .popcnt_add(bpu_out[7]));
    
endmodule
