`timescale 1ns / 1ns

module INPUTDATA(
    input sysclk,
    input RST,
    output wire SRAMDOUT,
    output wire TRIGGER
    );
    wire WEN;
    reg SRAMMUX;
    wire SRAMD;
    wire CLK;
    clk_10m clkk(.clk_in1(sysclk),
    .clk_out1(CLK));
    reg trigger;
    reg SRAMCEN;
    
    wire EN;
    assign EN = SRAMCEN;
    reg SRAMSEL;
    (*DONT_TOUCH="yes"*)reg PAUSE=1;
    reg [16:0] SRAMA=0;
    reg write_in_finish;
    reg SRAMWEN;
    assign WEN = SRAMWEN;
    wire [31:0] INST_DATA;
    assign INST_DATA[31:16]=16'b0;
    wire [31:0] DATA_DATA;
    INST_SRAM INSTSRAM(.clka(CLK),
                       .addra(SRAMA),
                       .douta(INST_DATA[15:0]));
    DATA_SRAM DATASRAM(.clka(CLK),
                       .addra(SRAMA),
                       .douta(DATA_DATA));
    
    reg CEN;//ENABLE FOR WRITING IN DATA
    reg [8:0] cnt;
    reg [16:0] ramcnt;
    wire [31:0]RAM_IN;
    assign RAM_IN = SRAMMUX? DATA_DATA:INST_DATA;
    
    P_TO_S #(.WIDTH(32)) general
    (.CLK(CLK),
    .RST(RST),
    .EN(CEN),
    .P_TO_S_IN(RAM_IN),
    .P_TO_S_OUT(SRAMD));
    
    always@(posedge CLK)begin
        if(RST|!(SRAMSEL))begin
            cnt <= 0;        
        end
        else if(cnt<40) begin
            cnt <= cnt+1;
        end
        else if (cnt==40) begin
            cnt <= 0;
        end
    end

    reg [8:0] readcnt;
    always@(posedge CLK)begin
        if(RST|!(SRAMSEL))begin
            readcnt <= 0;        
        end
        else if(readcnt<280) begin
            readcnt <= readcnt+1;
        end
        else if (readcnt==280) begin
            readcnt <= 0;
        end
    end
    
    reg[10:0] runtime;
    reg[10:0] runtimecnt;
    always@(posedge CLK)begin
        if(RST)begin
            runtime <= 0;
            runtimecnt <= 0;
        end
        else if(runtime<2000) begin
            runtime <= runtime+1;
        end
        else if (runtime==2000) begin
            runtime <= 0;
            if(runtimecnt<324) runtimecnt <= runtimecnt +1 ;
            else runtimecnt <= runtimecnt;
        end
    end
    
    always@(posedge CLK)begin
        if(RST)begin
            PAUSE <= 1;
            SRAMSEL <= 1;
            SRAMA <= 0;
            SRAMCEN <= 1;
            SRAMWEN <= 0;
            SRAMMUX <= 0;
            ramcnt <= 0;
            CEN<=1;
            trigger <=0;
            write_in_finish<=0;
        end
        else if(SRAMMUX & (!write_in_finish))begin
            case(cnt)
                0:begin
                    SRAMA<=ramcnt;
                end
                3:begin
                    CEN<=0;
                end
                5:begin
                    SRAMCEN<=0;
                end
                38:begin
                    SRAMCEN<=1;
                end
                40:begin
                    SRAMCEN<=1; 
                    SRAMWEN<=0;
                    CEN <= 1;
                    if(ramcnt <12265) begin //load data
                        ramcnt <= ramcnt + 1'b1;
                    end
                    else if(ramcnt==12265)begin
                            PAUSE <=0;
                            SRAMSEL <= 0;
                            SRAMA <=5000; //
                            write_in_finish<=1;
                    end
                end
            endcase
        end
        else if ((!SRAMMUX) & (!write_in_finish))begin
            case(cnt)
            0:begin
                SRAMA<=ramcnt;
            end
            3:begin
                CEN<=0;
            end
            5:begin
                SRAMCEN<=0;
            end   
            22:begin
                SRAMCEN<=1;
            end
            40:begin
                SRAMCEN<=1; 
                SRAMWEN<=0;
                CEN <= 1;
                if(ramcnt <520) ramcnt <= ramcnt + 1'b1;
                else if(ramcnt==520)begin
                    ramcnt <= 0;
                    SRAMMUX <=1;
                end
            end
            endcase
        end
        
        else if(runtimecnt==324)begin
            case(readcnt)
                0:begin
                    PAUSE<=1;
                    SRAMSEL=1;
                    SRAMWEN=1;
                    SRAMA <= 5000;
                end
                1:begin
                    trigger<=1;
                    SRAMCEN <= 0;
                end
                34:begin
                    SRAMCEN<=1;
                    trigger<=0;
                    SRAMA <= 5001;
                end
                35:begin
                    trigger<=1;
                    SRAMCEN <= 0;
                end
                68:begin
                    SRAMA <= 5002;
                    SRAMCEN<=1;
                    trigger<=0;
                end
                69:begin
                    SRAMCEN<=0;
                    trigger<=1;
                end
                102:begin
                    SRAMA <= 5003;
                    SRAMCEN <= 1;
                    trigger<=0;
                end
                103:begin
                    SRAMCEN <= 0;
                    trigger<=1;
                end
                136:begin
                    SRAMA <= 5004;
                    SRAMCEN <= 1;
                    trigger<=0;
                end
                137:begin
                    SRAMCEN <= 0;
                    trigger<=1;
                end
                170:begin
                    SRAMA <= 5005;
                    SRAMCEN <= 1;
                    trigger<=0;
                end
                171:begin
                    SRAMCEN <= 0;
                    trigger<=1;
                end
                204:begin
                    SRAMA <= 5006;
                    SRAMCEN <= 1;
                    trigger<=0;
                end
                205:begin
                    SRAMCEN <= 0;
                    trigger<=1;
                end
                207:begin
                    SRAMA <= 5007;
                    SRAMCEN <= 1;
                    trigger<=0;
                end
                240:begin
                    trigger<=0;
                    SRAMCEN<=1;
                end
            endcase
        end
    end
    assign TRIGGER = trigger;
    
    TOP top1(.CLK(CLK),
    .RST(RST),
    .PAUSE(PAUSE),
    .SRAMSEL(SRAMSEL),
    .SRAMA(SRAMA),
    .SRAMMUX(SRAMMUX),
    .SRAMCEN(SRAMCEN),
    .SRAMWEN(SRAMWEN),
    .SRAMDIN(SRAMD),
    .SRAMDOUT(SRAMDOUT));
    
endmodule
