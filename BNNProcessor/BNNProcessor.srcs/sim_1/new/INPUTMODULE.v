`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/02 19:13:12
// Design Name: 
// Module Name: INPUTMODULE
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


module INPUTMODULE(
    
    );
    reg clk;
    always #5 clk=~clk;
    
    reg SRAMD;
    reg SRAMSEL;
    reg PAUSE;
    reg [14:0] SRAMA;
    reg SRAMMUX;
    reg SRAMCEN;
    reg SRAMWEN;
    
    reg INST_SRAM[0:2**8];
    reg [32:0]DATA_SRAM[0:2**8];
    
    reg [8:0] cnt;
    reg rst;
    initial
    begin
		(*ram_style="block"*) $readmemb("TRIAL_SRAM", INST_SRAM);
		(*ram_style="block"*) $readmemb("TRIAL_SRAM", DATA_SRAM);
		SRAMD=0;
		clk = 0;
		SRAMSEL=1;
		PAUSE=1;
		SRAMA=0;
		SRAMMUX=1;
		SRAMCEN=1;
		SRAMWEN=0;
		cnt = 0;
		rst = 1;
		#100 rst = 0;
    end
    
    always@(posedge clk)begin
        if(cnt<=200) begin
            cnt <= cnt+1;
        end
        else if (cnt>200) begin
            cnt <= 0;
        end
    end
    
    always@(posedge clk)begin
        SRAMD = INST_SRAM[cnt];
    end
    
    always@(posedge clk)begin
        case(cnt)
            0:begin
                SRAMWEN=0;
                SRAMCEN=0;
                SRAMA=0;
            end            
            32:begin
                SRAMCEN=1;
                SRAMA=2;
            end
            
            33:begin
                SRAMCEN=0;
            end
            64:begin
                SRAMCEN=1;
                SRAMA=0;
                SRAMWEN=1;
            end
            65:begin
                SRAMCEN=0;
            end
        endcase
    end
    
    TOP top1(.CLK(clk),
    .RST(rst),
    .PAUSE(PAUSE),
    .SRAMSEL(SRAMSEL),
    .SRAMA(SRAMA),
    .SRAMMUX(SRAMMUX),
    .SRAMCEN(SRAMCEN),
    .SRAMWEN(SRAMWEN),
    .SRAMDIN(SRAMD));
endmodule
