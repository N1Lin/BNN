module S_TO_P
#(parameter WIDTH=16)
(CLK, RST, EN, S_TO_P_IN, S_TO_P_OUT);
    input CLK;
    input RST;
    input EN; // EN=0, Enabled
    input S_TO_P_IN;
    output [(WIDTH-1):0]S_TO_P_OUT;
    
    reg [6:0]CNT;
    reg [WIDTH:0]S_TO_P_REG;
    
    //assign S_TO_P_OUT=(RST|EN) ? 64'bZ : S_TO_P_REG[(WIDTH-1):0];
    assign S_TO_P_OUT= S_TO_P_REG[(WIDTH-1):0];
    
    always @ (posedge RST or posedge CLK) begin
        if(RST|EN) begin
            CNT<=0;
            S_TO_P_REG<=64'b0;
        end
        else begin
            S_TO_P_REG[CNT]<=S_TO_P_IN;
            if (CNT==WIDTH) CNT<=WIDTH;
            else CNT<=CNT+1;
        end
    end
endmodule