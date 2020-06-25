`include "myMult.v"
`include "fullAdder.v"
`include "divide.v"
`include "bcd2hex.v"
`include "counter.v"
`include "myCos.v"
`include "mySine.v"

module project_top(SW, LEDR, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, KEY, MAX10_CLK1_50, addSum, cs, multOut, diviOut);
    input [9:0] SW;
    input [1:0] KEY;
    input MAX10_CLK1_50;
    output [9:0] LEDR;
    output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
    //Simulation parameters
    output [3:0] addSum, cs;
    output [7:0] multOut;
    output [5:0] diviOut;
    
    integer inti;
    genvar geni;
   
    
    //Clock Section
    wire sysClk = MAX10_CLK1_50; //system clk;
	reg [10:0] sysCount = 0;
    wire [6:0] sevenSegBuffer[5:0];
    reg oneSecReset, halfSecReset, quarterSecReset;
    wire oneSecOut, halfSecOut, quarterSecOut;
    
    counter oneSec (halfSecOut, oneSecReset, oneSecOut);
        defparam oneSec.n = 2;
    counter halfSec (quarterSecOut, halfSecReset, halfSecOut);
		defparam halfSec.n = 2;
    counter quarterSec (sysClk, quarterSecReset, quarterSecOut);
        defparam quarterSec.n = 1;
		  
    
    //Seven Segment Display Section
    reg [4:0] sevenSegReg[5:0];  
    reg [2:0] csOpSel, nsOpSel; //Current and Next State Selection 
	reg opCommit;
	assign cs = {opCommit, csOpSel};
    initial begin
        csOpSel = 4'b0000;
        nsOpSel = 4'b0001;
        opCommit = 1'b0;
    end
    

	 // Asynchronous debounce input
	 wire key0Buf, key1Buf, inKey0, inKey1;
	 //simulation
	 assign inKey0 = KEY[0];
	 assign inKey1 = KEY[1];
	 //FPGA
	 /*
	 initial begin
	    inKey0 = 1'b1;
        inKey1 = 1'b1;
    end
	 always @(posedge sysClk) begin
		if (sysCount[1]) begin
			inKey0 <= key0Buf;
			inKey1 <= key1Buf;
			sysCount <= {11{1'b0}};
		end
		else begin
			sysCount <= sysCount + 1;
			key0Buf <= KEY[0];
			key1Buf <= KEY[1];
		end
	 end
     */
    //Operation Selection
    always @(negedge inKey0) begin
        if (nsOpSel == 3'b110) begin
            nsOpSel <= 3'b000;
        end
        else if (~opCommit) begin
            csOpSel <= nsOpSel;
            nsOpSel <= nsOpSel + 1'b1;
        end
    end
	 
	 always @(negedge inKey1) begin
			opCommit <= ~opCommit;
	 end
	 
	 assign LEDR[3:0] = {opCommit, csOpSel};
	 assign LEDR[7:4] = nsOpSel;
	 
	 //assign HEX0 = sevenSegBuffer[0];
    //assign HEX1 = sevenSegBuffer[1];
	 //assign HEX2 = sevenSegBuffer[2];
    assign HEX3 = sevenSegBuffer[3];
    assign HEX4 = sevenSegBuffer[4];
    assign HEX5 = sevenSegBuffer[5];
    
    //add & subtract Module
    reg [3:0] addA, addB;
    reg addCin;
    wire addCout;
    wire [3:0] addSum;
    fullAdder addMod (.a(addA), 
                     .b(addB), 
                     .cin(addCin),
                     .cout(addCout),
                     .sum(addSum)
                     );
              defparam addMod.n = 4;
    //assign LEDR[8] = addCout;
    //assign LEDR[4:0] = addSum;
    
    //multiply module
    reg [3:0] multA, multB;
    wire [7:0] multOut;
    myMult multMod (.a(multA),
                    .b(multB),
                    .multOut(multOut)
                    );
           defparam multMod.n = 4;

    
    reg [3:0] divA, divB;
    wire [3:0] divout[5:0];
    divide divideMod (divA, divB, divout[0], divout[1], divout[2], divout[3], divout[4], divout[5]);
    
    assign diviOut = {divout[0], divout[1], divout[2], divout[3], divout[4], divout[5]};
    
    //cosine module
    reg [7:0] cosIn;
    wire [23:0] cosOut;
    wire negCosLedOut;
    myCos cosMod (.cosIn(cosIn),
                  .hexOutput(cosOut),
                  .negLedOut(negCosLedOut)
                  );
    //sine module
    reg [7:0] sineIn;
    wire [23:0] sinOut;
    wire negSinLedOut;
    mySine sineMod (.sineIn(sineIn),
                    .hexOutput(sinOut),
                    .negLedOut(negSinLedOut)
                    );
    
	
    //Selection States
    //make into a module
    always @(cs or SW) begin
        //do reset task
		  for (inti = 0; inti < 5; inti = inti + 1) begin : resetSeven_loop
				sevenSegReg[inti] = {5{1'b1}};
		  end
		  addCin = 1'b0;
		  addA = 4'b0000;
		  addB = 4'b0000;
		  multA = 4'b0000;
		  multB = 4'b0000;
		  divA = 4'b0000;
		  divB = 4'b0000;
		  cosIn = 7'b0000000;
		  
        case (cs)
            4'b0000 : begin : sel_add
                        sevenSegReg[0] = {5'b01101}; // a-d-d
                        sevenSegReg[1] = {5'b01101};
                        sevenSegReg[2] = {5'b01010};
                        sevenSegReg[3] = {5{1'b1}};
                        sevenSegReg[4] = {5{1'b1}};
                        sevenSegReg[5] = {5{1'b1}};
                    end
            4'b1000 : begin : do_Add
                        addA = SW[3:0];
                        addB = SW[7:4];
                        addCin = SW[8];
                        sevenSegReg[0] = {1'b0, SW[3:0] - (SW[3:0]/10)*10};
                        sevenSegReg[1] = {1'b0, SW[3:0] / 10};
                        sevenSegReg[2] = {1'b0, SW[7:4] - (SW[7:4]/10)*10};
                        sevenSegReg[3] = {1'b0, SW[7:4] / 10};
                        sevenSegReg[4] = {1'b0, {addCout, addSum} - ({addCout, addSum}/10)*10};
                        sevenSegReg[5] = {1'b0, {addCout, addSum} / 10};
                    end
            4'b0001 : begin : sel_sub
                        sevenSegReg[0] = {5'b01011}; // s-u-b
                        sevenSegReg[1] = {5'b10010};
                        sevenSegReg[2] = {5'b00101};
                        sevenSegReg[3] = {5{1'b1}};
                        sevenSegReg[4] = {5{1'b1}};
                        sevenSegReg[5] = {5{1'b1}};
                    end
            4'b1001 : begin : do_sub
                        addA = SW[3:0];
                        addB = (SW[7:4] ^ 4'b1111); // input XOR 
                        addCin = 1'b1;  // add one for 2s-Complement
                        sevenSegReg[0] = {1'b0, SW[3:0] - (SW[3:0]/10)*10};
                        sevenSegReg[1] = {1'b0, SW[3:0] / 10};
                        sevenSegReg[2] = {1'b0, SW[7:4] - (SW[7:4]/10)*10};
                        sevenSegReg[3] = {1'b0, SW[7:4] / 10};
                        sevenSegReg[4] = {1'b0, {addCout, addSum} - ({addCout, addSum}/10)*10};
                        sevenSegReg[5] = {1'b0, {addCout, addSum} / 10};
						end
			
            4'b0010 : begin : sel_mult
                        sevenSegReg[0] = {5'b00011}; // o-p-3
                        sevenSegReg[1] = {5'b10000};
                        sevenSegReg[2] = {5'b00000};      
                        sevenSegReg[3] = {5{1'b1}};
                        sevenSegReg[4] = {5{1'b1}};
                        sevenSegReg[5] = {5{1'b1}};  
                    end
			4'b1010 : begin: do_mult
			            multA = SW[3:0];
			            multB = SW[7:4];
                        sevenSegReg[0] = {1'b0, SW[3:0] - (SW[3:0]/10)*10};
                        sevenSegReg[1] = {1'b0, SW[3:0] / 10};
                        sevenSegReg[2] = {1'b0, SW[7:4] - (SW[7:4]/10)*10};
                        sevenSegReg[3] = {1'b0, SW[7:4] / 10};
                        sevenSegReg[4] = {1'b0, multOut - (multOut/10)*10};
                        sevenSegReg[5] = {1'b0, multOut /10};                        
						 end
				
            4'b0011 : begin : sel_div
                        sevenSegReg[0] = {5'b10010}; // d-1-u
                        sevenSegReg[1] = {5'b00001};
                        sevenSegReg[2] = {5'b01101};
                        sevenSegReg[3] = {5{1'b1}};
                        sevenSegReg[4] = {5{1'b1}};
                        sevenSegReg[5] = {5{1'b1}};
                    end


            4'b1011 : begin : do_div
                        divA = SW[3:0];
                        divB = SW[7:4];
                        sevenSegReg[0] = {2'b00, divout[0]};
                        sevenSegReg[1] = {2'b00, divout[1]};
                        sevenSegReg[2] = {2'b00, divout[2]};
                        sevenSegReg[3] = {2'b00, divout[3]};
                        sevenSegReg[4] = {2'b00, divout[4]};
                        sevenSegReg[5] = {2'b00, divout[5]};
                    end
                    
            4'b0100 : begin : sel_op1
                        sevenSegReg[0] = {5'b01100}; // f-a-c
                        sevenSegReg[1] = {5'b01010};
                        sevenSegReg[2] = {5'b01111};
                        sevenSegReg[3] = {5{1'b1}};
                        sevenSegReg[4] = {5{1'b1}};
                        sevenSegReg[5] = {5{1'b1}};
                    end
            4'b0101 : begin : sel_op2
                        sevenSegReg[0] = {5'b10000}; // e-x-p
                        sevenSegReg[1] = {5'b10001};
                        sevenSegReg[2] = {5'b01110};
                        sevenSegReg[3] = {5{1'b1}};
                        sevenSegReg[4] = {5{1'b1}};
                        sevenSegReg[5] = {5{1'b1}};
                    end
            4'b0110 : begin : sel_cos
                        sevenSegReg[5] = {5'b01100}; // c-0-s
                        sevenSegReg[4] = {5'b00000};
                        sevenSegReg[3] = {5'b00101};
                        sevenSegReg[2] = {5{1'b1}};
                        sevenSegReg[1] = {5{1'b1}};
                        sevenSegReg[0] = {5{1'b1}};                     
                    end
            
            4'b1110 : begin : do_cos
                        cosIn = SW[7:0];
                        sevenSegReg[5] = cosOut[20 +: 4];
                        sevenSegReg[4] = cosOut[16 +: 4];
                        sevenSegReg[3] = cosOut[12 +: 4];
                        sevenSegReg[2] = cosOut[8 +: 4];
                        sevenSegReg[1] = cosOut[4 +: 4];
                        sevenSegReg[0] = cosOut[0 +: 4];
                        
                    end
            4'b0111 : begin : sel_sine
                        sevenSegReg[5] = {5'b00101}; // s-1-n
                        sevenSegReg[4] = {5'b00001};
                        sevenSegReg[3] = {5'b10100};
                        sevenSegReg[2] = {5{1'b1}};
                        sevenSegReg[1] = {5{1'b1}};
                        sevenSegReg[0] = {5{1'b1}};
                    end
            4'b1111 : begin : do_sine
                        sineIn = SW[7:0];
                        sevenSegReg[5] = sineOut[20 +: 4];
                        sevenSegReg[4] = sineOut[16 +: 4];
                        sevenSegReg[3] = sineOut[12 +: 4];
                        sevenSegReg[2] = sineOut[8 +: 4];
                        sevenSegReg[1] = sineOut[4 +: 4];
                        sevenSegReg[0] = sineOut[0 +: 4];
				      end
        endcase
    end
    
    //end makemodule
    
    
    //Seven Segement Output
	 reg hexOneSecBlink;
	 always @(posedge halfSecOut) begin
		hexOneSecBlink <= ~hexOneSecBlink;
	 end
	 
     assign HEX0 = (hexOneSecBlink & ~opCommit) ? {7{1'b1}} : sevenSegBuffer[0];
	 assign HEX1 = (hexOneSecBlink & ~opCommit) ? {7{1'b1}} : sevenSegBuffer[1];
	 assign HEX2 = (hexOneSecBlink & ~opCommit) ? {7{1'b1}} : sevenSegBuffer[2];
    
    //5 input to 7 seven output
    genvar i;
    generate
        for (i = 0; i < 6; i = i + 1) begin : bcd2Hex_loop
            bcd2hex U0 (.inbcd(sevenSegReg[i]), .hexout(sevenSegBuffer[i]));
        end
    endgenerate
 
endmodule

            
            
