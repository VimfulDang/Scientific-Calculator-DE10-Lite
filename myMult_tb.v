module myMult_tb();
    reg [7:0] a, b;
    wire [15:0] multOut;
    
    
    myMult U1 (.a(a), .b(b), .multOut(multOut));
        defparam U1.n = 8;
    
    initial begin
        #10;
        a = 8'b00001000;
        b = 8'b00000111;
        #2;
        a = 8'b00001100;
        b = 8'b00000111;
        #2;
        #10; $finish;
    end
    
    initial begin
        $dumpfile("myMult.vcd");
        $dumpvars(0);
        $monitor ("a = %d, b = %d, dotProduct = %d", a, b, multOut);
    end
    
endmodule
