`timescale 1ns / 1ns

module WandR_inner(
    input sysclk,
    input RST,
    input SRAMAsel,
    input SRAMsel,
    input CLKsel,
    output wire CLK,
    input BNNCLK,
    output wire OUT_RST,
    input BNNRST,
    output wire PAUSE,
    input BNNPAUSE,
    output wire SRAMSEL,
    input BNNSRAMSEL,
    output wire SRAMMUX,
    input BNNSRAMMUX,
    output wire SRAMWEN,
    input BNNSRAMWEN,
    output wire SRAMD,
    input BNNSRAMD,
    output wire SRAMCEN,
    input BNNSRAMCEN,
    output wire TRIGGER,
    output wire BNNSRAMDOUT,
    output wire DDOUT
    );
    
    wire [12:0]SRAMA;
    wire [1:0]SRAMSE;
    wire [1:0]BNNSRAMSE;
    assign BNNSRAMSE = SRAMSE;
//    wire SRAMCEN;
//    wire BNNSRAMCEN;
//    assign BNNSRAMCEN = SRAMCEN;
    wire[1:0] SRAMDFT;
    wire[1:0] BNNSRAMDFT;
    assign BNNSRAMDFT = SRAMDFT;
    
    wire SRAMDOUT;
    assign DDOUT = BNNSRAMDOUT;
    
    INPUTDATA inputdata(.sysclk(sysclk),
    .RST(RST),
    .CLKsel(CLKsel),
    .SRAMAsel(SRAMAsel),
    .SRAMsel(SRAMsel),
    .CLK(CLK),
    .TRIGGER(TRIGGER),
    .OUT_RST(OUT_RST),
    .PAUSE(PAUSE),
    .SRAMSEL(SRAMSEL),
    .SRAMA(SRAMA),
    .SRAMMUX(SRAMMUX),
    .SRAMCEN(SRAMCEN),
    .SRAMWEN(SRAMWEN),
    .SRAMD(SRAMD),
    .SRAMDOUT(SRAMDOUT));
    
    TOP top1(.CLK(BNNCLK),
    .RST(BNNRST),
    .PAUSE(BNNPAUSE),
    .SRAMSEL(BNNSRAMSEL),
    .SRAMA(SRAMA),
    .SRAMMUX(BNNSRAMMUX),
    .SRAMCEN(BNNSRAMCEN),
    .SRAMWEN(BNNSRAMWEN),
    .SRAMDIN(BNNSRAMD),
    .SRAMDOUT(BNNSRAMDOUT));
    
endmodule
