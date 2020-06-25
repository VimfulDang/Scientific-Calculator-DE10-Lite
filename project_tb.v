//`timescale 1ns / 1ps
`include "project_top.v"
module project_tb();
    reg [9:0] SW;
    reg [1:0] KEY;
    reg clk;
    wire [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
    wire [9:0] LEDR;
    wire [3:0] addOut;
    wire [3:0] csOut;
    wire [7:0] multOut;
    wire [5:0] divOut;
    project_top U1 ( .SW(SW), 
                    .KEY(KEY), 
                    .MAX10_CLK1_50(clk),
                    .HEX0(HEX0),
                    .HEX1(HEX1),
                    .HEX2(HEX2),
                    .HEX3(HEX3),
                    .HEX4(HEX4),
                    .HEX5(HEX5),
                    .LEDR(LEDR),
                    .addSum(addOut),
                    .cs(csOut),
                    .multOut(multOut),
                    .diviOut(divOut)
                    );
    always #1 clk = ~clk;
    integer i;
    
    task pushKey;
        input keyNum;
        begin
            if (keyNum) begin
                KEY[1] = 1'b1;
                #4;
                KEY[1] = 1'b0;
                #4;
            end
            else begin
                KEY[0] = 1'b1;
                #2;
                KEY[0] = 1'b0;
                #2;
            end
        end
    endtask
    
    task cycleOp;
        integer i;
        reg k;
        begin
            k = 0;
            for (i = 0; i < 32; i = i + 1) begin 
                pushKey(k);
                k = ~k;
            end
        end
    endtask
    
    initial begin
        SW[9:0] = 10'b0;
        KEY[1:0] = 2'b1;
        clk = 0;
        /*
        for(i = 0; i < 20; i = i + 1) begin
            KEY[0] = 1'b1;
            #2;
            KEY[0] = 1'b0;
            #2;
        end
        */
        #10
        SW[3:0] = 4'b0111;
        SW[7:4] = 4'b0110;
        cycleOp;
        #4
        SW[3:0] = 4'b0110;
        SW[7:4] = 4'b0100;
        cycleOp;
        #100 $finish;
    end
    
    initial begin
        $dumpfile("project_tb.vcd");
        $dumpvars();
        //$monitor ("========================================\nLEDR = %b\nHEX0 = %b\nHEX1 = %b\nHEX2 = %b\nHEX3 = %b\nHEX4 = %b\nHEX5 = %b", LEDR[9:0], HEX0, HEX1, HEX2, HEX3, HEX4, HEX5);
        $monitor("a = %d, b = %d, addOut = %d multOut = %d\t currentState = %b \t divOut = %b %t", SW[3:0], SW[7:4], addOut, multOut, csOut, divOut, $time);
    end
    
endmodule
