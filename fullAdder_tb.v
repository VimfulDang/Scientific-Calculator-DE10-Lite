module fullAdder_tb();
    reg [7:0] a, b, bin;
    wire [7:0] sum;
    wire cout;
    reg cin;
    reg sub;
    
    fullAdder U1 (.a(a), .b(b), .cin(cin), .cout(cout), .sum(sum));
        defparam U1.n = 8;
        
    initial begin
        a = 8'd4;
        bin = 8'd3;
        b = 8'd3 ^ {8{1'b1}};
        cin = 1'b1;
        #2;
        cin = 1'b0;
        a = 8'd4;
        b = 8'd4;
        #10 $finish;
    end
    
    initial begin
        $dumpfile("fullAdder.vcd");
        $dumpvars();
        $monitor ("a = %d, b = %d, sum = %d", a, bin, sum);
    end
endmodule
