module fullAdder(a, b, cin, cout, sum);
    parameter n = 1;
    
    input [n-1:0] a,  b; 
    input cin;
    output cout;
    output [n-1:0] sum;
    
    wire [n:0] carry;
	assign cout = carry[n];
    assign carry[0] = cin;
    
    genvar i;
    generate
        for(i = 0; i < n; i = i + 1) begin : fullAdder_loop
            fullAdderBit U1 (a[i], b[i], carry[i], carry[i+1], sum[i]);
        end
    endgenerate

endmodule

module fullAdderBit (a, b, cin, cout, sum);
    input a, b, cin;
    output cout, sum;
    
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
endmodule
