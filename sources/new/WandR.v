`timescale 1ns / 1ns

module WandR(
    input sysclk,
    input RST,
    input SRAMAsel,
    input CLKsel,
    output wire TRIGGER,
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
    output wire SRAMCEN,
    input BNNSRAMCEN,
    output wire SRAMWEN,
    input BNNSRAMWEN,
    output wire SRAMD,
    input BNNSRAMD,
    input SRAMDOUT,
    output wire BNNSRAMDOUT,
    output wire DDOUT
    );
    
    wire [13:0]SRAMA;
    INPUTDATA whole1(.sysclk(sysclk),
    .RST(RST),
    .CLKsel(CLKsel),
    .SRAMAsel(SRAMAsel),
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
    
    TOP_Origin top1(.CLK(BNNCLK),
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
