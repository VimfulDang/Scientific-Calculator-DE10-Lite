module bcd2hex(inbcd, hexout); //binary decimal to HEX output
	input [4:0] inbcd;
	output reg [6:0] hexout;
	
	//active low
	always @(*) begin
		case(inbcd)
			5'b00000 : hexout = 7'b1000000; // 0
			5'b00001 : hexout = 7'b1111001; // 1
			5'b00010 : hexout = 7'b0100100; // 2
			5'b00011 : hexout = 7'b0110000; // 3
			5'b00100 : hexout = 7'b0011001; // 4
			5'b00101 : hexout = 7'b0010010; // 5
			5'b00110 : hexout = 7'b0000010; // 6
			5'b00111 : hexout = 7'b1111000; // 7
			5'b01000 : hexout = 7'b0000000; // 8
			5'b01001 : hexout = 7'b0011000; // 9
			5'b01010 : hexout = 7'b0001000; // A
			5'b01011 : hexout = 7'b0000011; // b
			5'b01100 : hexout = 7'b1000110; // c
			5'b01101 : hexout = 7'b0100001; // d
			5'b01110 : hexout = 7'b0000110; // e
			5'b01111 : hexout = 7'b0001110; // f
			5'b10000 : hexout = 7'b0001100; // p
			5'b10001 : hexout = 7'b0001001; // h
			5'b10010 : hexout = 7'b1100011; // u
			5'b10011 : hexout = 7'b1000111; // l
			5'b10100 : hexout = 7'b1100011; // n
			default : hexout = 7'b1111111; // blank, need to add letters a, b, c, d, e
		endcase
	end
	
endmodule
