`timescale 1ns / 1ns

module INPUT_TEST(

    );
    reg CLK;
    always #5 CLK = ~CLK;
    
    wire SRAMDOUT;
    wire WEN;
    reg RST;
    initial begin
        CLK=0;
        RST = 1;
        #100 RST =0;
    end
    wire trigger;
    
    TO10 data1(.sysclk(CLK),
    .RST(RST),
    .SRAMDOUT(SRAMDOUT),
    .TRIGGER(trigger));
endmodule
