`timescale 1ns / 1ps

module TOP_Origin
#(parameter  DATASRAM_ADDRWIDTH=14,
    DATASRAM_DATAWIDTH=32,
    INSTSRAM_ADDRWIDTH=11,
    INSTSRAM_DATAWIDTH=16)
    (input CLK,
    input RST, 
    input PAUSE, 
    input SRAMSEL, 
    input [12:0]SRAMA, 
    input SRAMMUX, 
    input SRAMCEN, 
    input SRAMWEN, 
    input SRAMDIN,
    input [1:0]SRAMSE,
    input [1:0]SRAMDFT,
    output SRAMDOUT);

    // Port of P_TO_S_16
    wire P_TO_S_16_CLK;
    wire P_TO_S_16_RST;
    wire P_TO_S_16_EN;
    wire [15:0]P_TO_S_16_IN; //Parallel to Serial 16bit input
    wire P_TO_S_16_OUT; //Parallel to Serial 16bit output
     P_TO_S #(.WIDTH(INSTSRAM_DATAWIDTH)) P_TO_S_16(P_TO_S_16_CLK, P_TO_S_16_RST, P_TO_S_16_EN, P_TO_S_16_IN,P_TO_S_16_OUT);

    // Port of P_TO_S_32
    wire P_TO_S_32_CLK;
    wire P_TO_S_32_RST;
    wire P_TO_S_32_EN;
    wire [31:0]P_TO_S_32_IN; //Parallel to Serial 32bit input
    wire P_TO_S_32_OUT; //Parallel to Serial 32bit output
     P_TO_S #(.WIDTH(DATASRAM_DATAWIDTH)) P_TO_S_32(P_TO_S_32_CLK, P_TO_S_32_RST, P_TO_S_32_EN, P_TO_S_32_IN,P_TO_S_32_OUT);
    
    // Port of S_TO_P_16
    wire S_TO_P_16_CLK;
    wire S_TO_P_16_RST;
    wire S_TO_P_16_EN;
    wire S_TO_P_16_IN; //Serial to Parallel 16bit input
    wire [15:0]S_TO_P_16_OUT; //Serial to Parallel 16bit output
     S_TO_P #(.WIDTH(INSTSRAM_DATAWIDTH)) S_TO_P_16(S_TO_P_16_CLK, S_TO_P_16_RST, S_TO_P_16_EN, S_TO_P_16_IN,S_TO_P_16_OUT);

    // Port of S_TO_P_32
    wire S_TO_P_32_CLK;
    wire S_TO_P_32_RST;
    wire S_TO_P_32_EN;
    wire S_TO_P_32_IN; //Serial to Parallel 32bit input
    wire [31:0]S_TO_P_32_OUT; //Serial to Parallel 32bit input
     S_TO_P #(.WIDTH(DATASRAM_DATAWIDTH)) S_TO_P_32(S_TO_P_32_CLK, S_TO_P_32_RST, S_TO_P_32_EN, S_TO_P_32_IN,S_TO_P_32_OUT);
    
    // Port of BNNCTRL
    wire BNNCTRL_CLK; //CLK of BNNCTRL
    wire BNNCTRL_RST; //RST of BNNCTRL
    wire [(DATASRAM_ADDRWIDTH-1):0]BNNCTRL_DATAADDR;//
    wire BNNCTRL_DATACEN;
    wire BNNCTRL_DATAWEN;
    wire [(INSTSRAM_ADDRWIDTH-1):0]BNNCTRL_INSTADDR;
    wire [(INSTSRAM_DATAWIDTH-1):0]BNNCTRL_INSTQ;
    wire BNNCTRL_INSTCEN;
    wire BNNCTRL_INSTWEN;
    wire [19:0]BNNCTRL_CTRL;
     BNNCtrl BNNCtrl(BNNCTRL_CLK, BNNCTRL_RST,PAUSE,BNNCTRL_INSTQ, BNNCTRL_CTRL,{BNNCTRL_DATAWEN, BNNCTRL_DATACEN, BNNCTRL_DATAADDR},{BNNCTRL_INSTWEN, BNNCTRL_INSTCEN, BNNCTRL_INSTADDR});
    
    //Port of BNNCORE
    wire BNNCORE_CLK; //CLK of BNNCORE
    wire BNNCORE_RST; //RST of BNNCORE
    wire [31:0]BNNCORE_INPUTQ; //REG INPUT of BNNCORE
    wire [31:0]BNNCORE_OUTPUTQ; //REG OUTPUT of BNNCORE
    wire [19:0]BNNCORE_CTRL; //CTRL of BNNCORE
    assign BNNCORE_CTRL = BNNCTRL_CTRL;
    BNNCore BNNCore(.clk(BNNCORE_CLK),
     .rst(BNNCORE_RST), 
     .data_in(BNNCORE_INPUTQ),
     .instruction(BNNCORE_CTRL),
     .result_bins(BNNCORE_OUTPUTQ));
    
    // Port of INST_SRAM
    wire [(INSTSRAM_ADDRWIDTH-1):0]INSTADDR; //ADDR of INST_SRAM
    wire [(INSTSRAM_DATAWIDTH-1):0]INSTD; //D of INST_SRAM
    wire [(INSTSRAM_DATAWIDTH-1):0]INSTQ; //Q of INST_SRAM
    wire INSTCEN; //CEN of INST_SRAM
    wire INSTWEN; //WEN of INST_SRAM
    wire INSTCLK; //CLK of INST_SRAM
    (* dont_touch = "true" *) SRAM #(.ADDRWIDTH(INSTSRAM_ADDRWIDTH), .DATAWIDTH(INSTSRAM_DATAWIDTH), .FILE_NAME("INST_SRAM")) INSTSRAM(INSTADDR, INSTD, INSTQ, INSTCEN, INSTWEN, INSTCLK, 3'b010, 2'b00, 1'b0, 1'b1);

    //Port of DATA_SRAM
    wire [(DATASRAM_ADDRWIDTH-1):0]DATAADDR; //ADDR of DATA_SRAM
    wire [(DATASRAM_DATAWIDTH-1):0]DATAD; //D of DATA_SRAM
    wire [(DATASRAM_DATAWIDTH-1):0]DATAQ; //Q of DATA_SRAM
    wire DATACEN; //CEN of DATA_SRAM
    wire DATAWEN; //WEN of DATA_SRAM
    wire DATACLK; //CLK of DATA_SRAM
    (* dont_touch = "true" *) SRAM #(.ADDRWIDTH(DATASRAM_ADDRWIDTH), .DATAWIDTH(DATASRAM_DATAWIDTH), .FILE_NAME("DATA_SRAM")) DATASRAM(DATAADDR, DATAD, DATAQ, DATACEN, DATAWEN, DATACLK, 3'b010, 2'b00, 1'b0, 1'b1);

    //Connection of INST_SRAM
    assign INSTCEN = (!SRAMSEL)? BNNCTRL_INSTCEN:( SRAMMUX ? 1'b1 : SRAMCEN);
    assign INSTWEN = (!SRAMSEL)? BNNCTRL_INSTWEN:( SRAMMUX ? 1'b1 : SRAMWEN);
    assign INSTADDR = SRAMSEL ? SRAMA[10:0] : BNNCTRL_INSTADDR;
    assign INSTD = S_TO_P_16_OUT;
    assign INSTCLK = ~CLK;
    
    //Connection of DATA_SRAM
    assign DATACEN = (!SRAMSEL)? BNNCTRL_DATACEN:( SRAMMUX ? SRAMCEN : 1'b1);
    assign DATAWEN = (!SRAMSEL)? BNNCTRL_DATAWEN:( SRAMMUX ? SRAMWEN : 1'b1);
    assign DATAADDR = SRAMSEL ? SRAMA : BNNCTRL_DATAADDR;
    //assign DATAQ = SRAMSEL ? (SRAMWEN?P_TO_S_32_IN:S_TO_P_32_OUT) : BNNCORE_INPUTQ;
    assign DATAD = SRAMSEL ? S_TO_P_32_OUT : BNNCORE_OUTPUTQ;
    assign DATACLK = ~CLK;

    //Connection of BNNCORE
    assign BNNCORE_INPUTQ = DATAQ;
    assign BNNCORE_CLK = CLK;
    assign BNNCORE_RST = RST;
    
    //Connection of BNNCTRL
    assign BNNCTRL_INSTQ = INSTQ;
    assign BNNCTRL_CLK = CLK;
    assign BNNCTRL_RST = RST;

    //Coonection of S_TO_P_16
    assign S_TO_P_16_IN = SRAMMUX?1'b0:SRAMDIN;
    assign S_TO_P_16_CLK = CLK;
    assign S_TO_P_16_RST = RST;
    assign S_TO_P_16_EN = SRAMCEN|SRAMWEN;
    
    //Connection of S_TO_P_32
    assign S_TO_P_32_IN = SRAMMUX?SRAMDIN:1'b0;
    assign S_TO_P_32_CLK = CLK;
    assign S_TO_P_32_RST = RST;
    assign S_TO_P_32_EN = SRAMCEN|SRAMWEN;
    
    //Connection of P_TO_S_16
    assign P_TO_S_16_IN = INSTQ;
    assign P_TO_S_16_CLK = CLK;
    assign P_TO_S_16_RST = RST;
    assign P_TO_S_16_EN = SRAMCEN;
    
    //Connection of P_TO_S_32
    assign P_TO_S_32_IN = DATAQ;
    assign P_TO_S_32_CLK = CLK;
    assign P_TO_S_32_RST = RST;
    assign P_TO_S_32_EN = SRAMCEN;
    
    assign SRAMDOUT = SRAMMUX ? P_TO_S_32_OUT : P_TO_S_16_OUT;

endmodule
