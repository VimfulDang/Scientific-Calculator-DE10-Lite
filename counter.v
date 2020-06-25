module counter (clk,reset, q);
    parameter n = 50000000;
    input clk, reset;
    output q;
    
    reg q;
    reg [25:0] sysCount;
    initial begin
        sysCount = 0;
    end
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            q <= 1'b0;
            sysCount <= 26'b0;
        end
        else if (sysCount == (n-1)) begin
            sysCount <= 26'b0;
            q <= 1'b1;
        end
        else begin
            q <= 1'b0;
            sysCount <= sysCount + 1;
        end
    end
endmodule
           
