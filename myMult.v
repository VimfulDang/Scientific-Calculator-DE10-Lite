module myMult(a, b, multOut);
    parameter n = 8;    //input bit width
    input [n-1:0] a, b;
    output [(2*n)-1:0] multOut;
    
    //declaration
    genvar geni, genn;
    wire [n-1:0] sum[n-1:0];   
    wire [n-1:0] inBn[n-1:1];
    wire [n-1:0] inAn[n-1:1];
    wire carryN[n-1:1]; //only care about the last carryout of each n-bit fulladder
    
    //construct output
    assign multOut[0] = sum[0][0];
    assign multOut[2*n-1 -: n+1] = {carryN[n-1], sum[n-1]};
    generate
        for(geni = 1; geni < n; geni = geni + 1) begin : assignMultOut
            assign multOut[geni] = sum[geni][0];
        end
    endgenerate
    
    /*
    generate
        for(genn = 1; genn < n; genn = genn + 1) begin : carryN0_init
            assign carryN[genn][0] = 1'b0;
        end
    endgenerate
    */
    
    //assign multOut[n-1:0] = sum[2];
    //first level
    generate
        for (geni = 0; geni < n; geni = geni + 1) begin : firstLevel_loop
            assign sum[0][geni] = a[geni] & b[0];
        end
    endgenerate
    
    //second level
    //wire [n-1:0] inB1;
    assign inAn[1] = {1'b0, sum[0][n-1:1]};
    assign inBn[1] = a & {n{b[1]}};
    fullAdder U2 (.a(inAn[1]),
                  .b(inBn[1]), 
                  .cin(1'b0), 
                  .cout(carryN[1]), 
                  .sum(sum[1])
                  );
               defparam U2.n = n;
    
    // third level to n level
    generate
        for(genn = 2; genn < n; genn = genn + 1) begin : nLevel_loop
            assign inAn[genn] = {carryN[genn-1], sum[genn-1][n-1:1]};
            assign inBn[genn] = a & {n{b[genn]}};
            fullAdder Un (.a(inAn[genn]),
                          .b(inBn[genn]),
                          .cin(1'b0),
                          .cout(carryN[genn]),
                          .sum(sum[genn])
                          );
                      defparam Un.n = n;
        end
    endgenerate
           
endmodule





















