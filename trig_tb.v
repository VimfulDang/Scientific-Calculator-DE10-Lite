module myTrig_tb();
    reg [7:0] trigIn;
    wire [23:0] sineOut;
    wire [23:0] cosOut;
    wire sinOF, cosOF;
    
    myCos U1 (.cosIn(trigIn), .hexOutput(cosOut), .negLedOut(cosOF));
    mySine U2 (.sineIn(trigIn), .hexOutput(sineOut), .negLedOut(sinOF));
    /*
    reg [3:0] cosOutHex[5:0];
    reg [3:0] sinOutHex[5:0];
    
    genvar i;
    generate
        for (i = 0; i < 6; i = i + 1) begin : hex_gen
            cosOutHex[i] = cosOut[i*4 +: 4];
            sinOutHex[i] = sinOut[i*4 +: 4];
        end
    endgenerate
    */
    
    initial begin
    
        #2 trigIn = 8'h00; //rad = 6*pi / 256 ~= 0.0254 rad
        #2 trigIn = 8'h1F; //rad = pi/4
        #2 trigIn = 8'h3F; //rad = pi/2
        #2 trigIn = 8'h7F; //rad = pi
        #2 trigIn = 8'hFF; //rad = 2*pi
        #50 $finish;
    end
    
    initial begin
        $dumpfile("trig_tb.vcd");
        $dumpvars();
        $monitor("Cosine : rad = %0.5f, HEX5=%d HEX4=%d HEX3=%d HEX2=%d HEX1=%d HEX0=%d, Overflow=%d\nSine   : rad = %0.5f, HEX5=%d HEX4=%d HEX3=%d HEX2=%d HEX1=%d HEX0=%d, Overflow=%d\n", (trigIn * 6.2831 / 256), cosOut[20 +: 4], cosOut[16 +: 4], cosOut[12 +: 4], cosOut[8 +: 4], cosOut[4 +: 4], cosOut[0 +: 4], cosOF, (trigIn * 6.2831 / 256), sineOut[20 +: 4], sineOut[16 +: 4], sineOut[12 +: 4], sineOut[8 +: 4], sineOut[4 +: 4], sineOut[0 +: 4], sinOF); 
    end
endmodule
   
