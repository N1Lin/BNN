`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/01/12 18:01:12
// Design Name: 
// Module Name: TEST_BPU
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


module TEST_BPU(

    );
    
    reg CLK; //10M
    reg RST;
    reg [2:0]right_shift;
    reg [4:0] INST;
    wire [6:0][6:0] img;
    assign img ='{7'b1010110,7'b1010110,7'b1010110,7'b1010000,7'b1011110,7'b1010100,7'b0010110};
    
    reg wgt_en;
    reg[9:0]cnt;
    wire [6:0]wgt;
    assign wgt = 7'b0001100;
    
    wire [2:0][2:0]teest;
    assign teest = '{3'b111,3'b110,3'b100};
    
    wire [2:0][2:0]teeest;
    assign teeest = teest<<1;
    
    always@(posedge CLK)begin
        if(RST)begin
            cnt = 0;
        end
        else begin
            if(cnt <= 100)begin
                 cnt = cnt +1;
            end
            else cnt = 0;
        end
    end
    
    always #5 CLK=~CLK;
    initial begin
        CLK = 0;
        RST = 1;
        wgt_en = 0;
        right_shift = 0;
        #20 RST = 0;
    end
    
    always@(posedge CLK)begin
        if(RST)begin
            INST = 0;
        end
        else case(cnt)
        0:begin
            wgt_en = 1;
            INST[0] = 1;
        end
        7:begin
            wgt_en = 0;
            INST[0] = 0;
            INST[3:1] = 0;
        end
        8:begin
            INST[4] = 1;
        end
        9:begin
            INST[3:1] = 1;
        end
        10:begin
            INST[3:1] = 2;
        end
        11:begin
            INST[4] = 0;
        end
        endcase
    end
    
    BPU bpu0(
    .clk(CLK),
    .rst(RST),
    .height(3'b101),
    .instruction(INST),
    .img(img),
    .wgt_input(wgt),
    .wgt_en(wgt_en)
    );
    
endmodule
