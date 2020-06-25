module mySine(sineIn, hexOutput, negLedOut);
    input [7:0] sineIn;
    output negLedOut;
    output [23:0] hexOutput;
    
    reg [3:0] hexOut[5:0];
    reg ledOut;
    assign negLedOut = ledOut;
    assign hexOutput = {hexOut[5], hexOut[4], hexOut[3], hexOut[2], hexOut[1], hexOut[0]};
    always @(*) begin
        case(sineIn)
            8'd0: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd0;
	            hexOut[3] = 4'd2;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd4;
            end
            8'd1: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd0;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd6;
            end
            8'd2: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd0;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd6;
            end
            8'd3: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd0;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd8;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd1;
            end
            8'd4: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd1;
	            hexOut[3] = 4'd2;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd4;
	            hexOut[0] = 4'd1;
            end
            8'd5: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd1;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd6;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd3;
            end
            8'd6: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd1;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd6;
            end
            8'd7: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd1;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd9;
            end
            8'd8: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd2;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd0;
            end
            8'd9: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd2;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd8;
            end
            8'd10: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd2;
	            hexOut[3] = 4'd6;
	            hexOut[2] = 4'd6;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd1;
            end
            8'd11: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd2;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd8;
            end
            8'd12: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd3;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd6;
	            hexOut[0] = 4'd8;
            end
            8'd13: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd3;
	            hexOut[3] = 4'd3;
	            hexOut[2] = 4'd6;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd8;
            end
            8'd14: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd3;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd9;
            end
            8'd15: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd3;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd6;
	            hexOut[0] = 4'd8;
            end
            8'd16: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd4;
	            hexOut[3] = 4'd0;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd4;
            end
            8'd17: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd4;
	            hexOut[3] = 4'd2;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd5;
            end
            8'd18: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd4;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd6;
	            hexOut[0] = 4'd1;
            end
            8'd19: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd4;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd1;
	            hexOut[1] = 4'd3;
	            hexOut[0] = 4'd9;
            end
            8'd20: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd4;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd9;
            end
            8'd21: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd5;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd0;
            end
            8'd22: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd5;
	            hexOut[3] = 4'd3;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd9;
            end
            8'd23: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd5;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd7;
            end
            8'd24: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd5;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd0;
            end
            8'd25: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd5;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd6;
	            hexOut[0] = 4'd9;
            end
            8'd26: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd6;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd3;
            end
            8'd27: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd6;
	            hexOut[3] = 4'd3;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd3;
	            hexOut[0] = 4'd9;
            end
            8'd28: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd6;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd7;
            end
            8'd29: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd6;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd1;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd5;
            end
            8'd30: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd6;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd4;
            end
            8'd31: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd0;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd0;
            end
            8'd32: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd2;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd4;
            end
            8'd33: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd5;
            end
            8'd34: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd0;
            end
            8'd35: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd1;
            end
            8'd36: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd8;
	            hexOut[1] = 4'd3;
	            hexOut[0] = 4'd4;
            end
            8'd37: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd0;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd0;
            end
            8'd38: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd8;
            end
            8'd39: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd3;
	            hexOut[2] = 4'd1;
	            hexOut[1] = 4'd4;
	            hexOut[0] = 4'd6;
            end
            8'd40: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd5;
            end
            8'd41: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd2;
            end
            8'd42: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd8;
            end
            8'd43: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd1;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd2;
            end
            8'd44: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd2;
            end
            8'd45: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd0;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd8;
            end
            8'd46: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd0;
            end
            8'd47: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd2;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd7;
            end
            8'd48: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd3;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd9;
            end
            8'd49: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd1;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd4;
            end
            8'd50: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd2;
            end
            8'd51: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd6;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd4;
            end
            8'd52: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd6;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd7;
            end
            8'd53: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd3;
            end
            8'd54: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd0;
            end
            8'd55: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd8;
            end
            8'd56: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd7;
            end
            8'd57: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd7;
            end
            8'd58: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd4;
	            hexOut[0] = 4'd7;
            end
            8'd59: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd8;
            end
            8'd60: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd9;
            end
            8'd61: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd8;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd9;
            end
            8'd62: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd6;
	            hexOut[0] = 4'd9;
            end
            8'd63: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd1;
	            hexOut[4] = 4'd0;
	            hexOut[3] = 4'd0;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd0;
            end
            8'd64: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd6;
	            hexOut[0] = 4'd9;
            end
            8'd65: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd8;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd9;
            end
            8'd66: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd9;
            end
            8'd67: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd8;
            end
            8'd68: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd4;
	            hexOut[0] = 4'd7;
            end
            8'd69: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd7;
            end
            8'd70: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd7;
            end
            8'd71: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd8;
            end
            8'd72: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd0;
            end
            8'd73: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd3;
            end
            8'd74: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd6;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd7;
            end
            8'd75: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd6;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd4;
            end
            8'd76: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd2;
            end
            8'd77: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd1;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd4;
            end
            8'd78: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd3;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd9;
            end
            8'd79: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd2;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd7;
            end
            8'd80: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd0;
            end
            8'd81: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd0;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd8;
            end
            8'd82: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd2;
            end
            8'd83: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd1;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd2;
            end
            8'd84: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd8;
            end
            8'd85: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd2;
            end
            8'd86: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd5;
            end
            8'd87: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd3;
	            hexOut[2] = 4'd1;
	            hexOut[1] = 4'd4;
	            hexOut[0] = 4'd6;
            end
            8'd88: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd8;
            end
            8'd89: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd0;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd0;
            end
            8'd90: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd8;
	            hexOut[1] = 4'd3;
	            hexOut[0] = 4'd4;
            end
            8'd91: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd1;
            end
            8'd92: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd0;
            end
            8'd93: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd5;
            end
            8'd94: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd2;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd4;
            end
            8'd95: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd0;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd0;
            end
            8'd96: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd6;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd4;
            end
            8'd97: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd6;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd1;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd5;
            end
            8'd98: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd6;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd7;
            end
            8'd99: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd6;
	            hexOut[3] = 4'd3;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd3;
	            hexOut[0] = 4'd9;
            end
            8'd100: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd6;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd3;
            end
            8'd101: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd5;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd6;
	            hexOut[0] = 4'd9;
            end
            8'd102: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd5;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd0;
            end
            8'd103: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd5;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd7;
            end
            8'd104: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd5;
	            hexOut[3] = 4'd3;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd9;
            end
            8'd105: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd5;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd0;
            end
            8'd106: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd4;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd9;
            end
            8'd107: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd4;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd1;
	            hexOut[1] = 4'd3;
	            hexOut[0] = 4'd9;
            end
            8'd108: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd4;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd6;
	            hexOut[0] = 4'd1;
            end
            8'd109: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd4;
	            hexOut[3] = 4'd2;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd5;
            end
            8'd110: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd4;
	            hexOut[3] = 4'd0;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd4;
            end
            8'd111: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd3;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd6;
	            hexOut[0] = 4'd8;
            end
            8'd112: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd3;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd9;
            end
            8'd113: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd3;
	            hexOut[3] = 4'd3;
	            hexOut[2] = 4'd6;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd8;
            end
            8'd114: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd3;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd6;
	            hexOut[0] = 4'd8;
            end
            8'd115: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd2;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd8;
            end
            8'd116: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd2;
	            hexOut[3] = 4'd6;
	            hexOut[2] = 4'd6;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd1;
            end
            8'd117: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd2;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd8;
            end
            8'd118: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd2;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd0;
            end
            8'd119: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd1;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd9;
            end
            8'd120: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd1;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd6;
            end
            8'd121: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd1;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd6;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd3;
            end
            8'd122: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd1;
	            hexOut[3] = 4'd2;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd4;
	            hexOut[0] = 4'd1;
            end
            8'd123: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd0;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd8;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd1;
            end
            8'd124: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd0;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd6;
            end
            8'd125: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd0;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd6;
            end
            8'd126: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd0;
	            hexOut[3] = 4'd2;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd4;
            end
            8'd127: begin
	            ledOut = 1'b0;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd0;
	            hexOut[3] = 4'd0;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd0;
            end
            8'd128: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd0;
	            hexOut[3] = 4'd2;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd4;
            end
            8'd129: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd0;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd6;
            end
            8'd130: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd0;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd6;
            end
            8'd131: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd0;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd8;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd1;
            end
            8'd132: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd1;
	            hexOut[3] = 4'd2;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd4;
	            hexOut[0] = 4'd1;
            end
            8'd133: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd1;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd6;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd3;
            end
            8'd134: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd1;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd6;
            end
            8'd135: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd1;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd9;
            end
            8'd136: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd2;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd0;
            end
            8'd137: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd2;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd8;
            end
            8'd138: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd2;
	            hexOut[3] = 4'd6;
	            hexOut[2] = 4'd6;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd1;
            end
            8'd139: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd2;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd8;
            end
            8'd140: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd3;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd6;
	            hexOut[0] = 4'd8;
            end
            8'd141: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd3;
	            hexOut[3] = 4'd3;
	            hexOut[2] = 4'd6;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd8;
            end
            8'd142: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd3;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd9;
            end
            8'd143: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd3;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd6;
	            hexOut[0] = 4'd8;
            end
            8'd144: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd4;
	            hexOut[3] = 4'd0;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd4;
            end
            8'd145: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd4;
	            hexOut[3] = 4'd2;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd5;
            end
            8'd146: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd4;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd6;
	            hexOut[0] = 4'd1;
            end
            8'd147: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd4;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd1;
	            hexOut[1] = 4'd3;
	            hexOut[0] = 4'd9;
            end
            8'd148: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd4;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd9;
            end
            8'd149: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd5;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd0;
            end
            8'd150: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd5;
	            hexOut[3] = 4'd3;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd9;
            end
            8'd151: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd5;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd7;
            end
            8'd152: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd5;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd0;
            end
            8'd153: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd5;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd6;
	            hexOut[0] = 4'd9;
            end
            8'd154: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd6;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd3;
            end
            8'd155: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd6;
	            hexOut[3] = 4'd3;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd3;
	            hexOut[0] = 4'd9;
            end
            8'd156: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd6;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd7;
            end
            8'd157: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd6;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd1;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd5;
            end
            8'd158: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd6;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd4;
            end
            8'd159: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd0;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd0;
            end
            8'd160: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd2;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd4;
            end
            8'd161: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd5;
            end
            8'd162: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd0;
            end
            8'd163: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd1;
            end
            8'd164: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd8;
	            hexOut[1] = 4'd3;
	            hexOut[0] = 4'd4;
            end
            8'd165: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd0;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd0;
            end
            8'd166: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd8;
            end
            8'd167: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd3;
	            hexOut[2] = 4'd1;
	            hexOut[1] = 4'd4;
	            hexOut[0] = 4'd6;
            end
            8'd168: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd5;
            end
            8'd169: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd2;
            end
            8'd170: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd8;
            end
            8'd171: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd1;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd2;
            end
            8'd172: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd2;
            end
            8'd173: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd0;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd8;
            end
            8'd174: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd0;
            end
            8'd175: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd2;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd7;
            end
            8'd176: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd3;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd9;
            end
            8'd177: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd1;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd4;
            end
            8'd178: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd2;
            end
            8'd179: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd6;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd4;
            end
            8'd180: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd6;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd7;
            end
            8'd181: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd3;
            end
            8'd182: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd0;
            end
            8'd183: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd8;
            end
            8'd184: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd7;
            end
            8'd185: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd7;
            end
            8'd186: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd4;
	            hexOut[0] = 4'd7;
            end
            8'd187: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd8;
            end
            8'd188: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd9;
            end
            8'd189: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd8;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd9;
            end
            8'd190: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd6;
	            hexOut[0] = 4'd9;
            end
            8'd191: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd1;
	            hexOut[4] = 4'd0;
	            hexOut[3] = 4'd0;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd0;
            end
            8'd192: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd6;
	            hexOut[0] = 4'd9;
            end
            8'd193: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd8;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd9;
            end
            8'd194: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd9;
            end
            8'd195: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd8;
            end
            8'd196: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd4;
	            hexOut[0] = 4'd7;
            end
            8'd197: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd7;
            end
            8'd198: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd7;
            end
            8'd199: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd8;
            end
            8'd200: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd0;
            end
            8'd201: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd3;
            end
            8'd202: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd6;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd7;
            end
            8'd203: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd6;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd4;
            end
            8'd204: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd2;
            end
            8'd205: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd1;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd4;
            end
            8'd206: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd3;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd9;
            end
            8'd207: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd2;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd7;
            end
            8'd208: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd0;
            end
            8'd209: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd9;
	            hexOut[3] = 4'd0;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd8;
            end
            8'd210: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd2;
            end
            8'd211: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd1;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd2;
            end
            8'd212: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd8;
            end
            8'd213: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd2;
            end
            8'd214: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd5;
            end
            8'd215: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd3;
	            hexOut[2] = 4'd1;
	            hexOut[1] = 4'd4;
	            hexOut[0] = 4'd6;
            end
            8'd216: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd8;
            end
            8'd217: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd8;
	            hexOut[3] = 4'd0;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd0;
            end
            8'd218: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd8;
	            hexOut[1] = 4'd3;
	            hexOut[0] = 4'd4;
            end
            8'd219: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd1;
            end
            8'd220: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd0;
            end
            8'd221: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd5;
            end
            8'd222: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd2;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd4;
            end
            8'd223: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd7;
	            hexOut[3] = 4'd0;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd0;
            end
            8'd224: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd6;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd4;
            end
            8'd225: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd6;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd1;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd5;
            end
            8'd226: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd6;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd7;
            end
            8'd227: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd6;
	            hexOut[3] = 4'd3;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd3;
	            hexOut[0] = 4'd9;
            end
            8'd228: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd6;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd3;
            end
            8'd229: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd5;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd6;
	            hexOut[0] = 4'd9;
            end
            8'd230: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd5;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd0;
            end
            8'd231: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd5;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd7;
            end
            8'd232: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd5;
	            hexOut[3] = 4'd3;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd9;
            end
            8'd233: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd5;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd0;
            end
            8'd234: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd4;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd9;
            end
            8'd235: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd4;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd1;
	            hexOut[1] = 4'd3;
	            hexOut[0] = 4'd9;
            end
            8'd236: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd4;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd6;
	            hexOut[0] = 4'd1;
            end
            8'd237: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd4;
	            hexOut[3] = 4'd2;
	            hexOut[2] = 4'd7;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd5;
            end
            8'd238: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd4;
	            hexOut[3] = 4'd0;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd4;
            end
            8'd239: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd3;
	            hexOut[3] = 4'd8;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd6;
	            hexOut[0] = 4'd8;
            end
            8'd240: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd3;
	            hexOut[3] = 4'd5;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd9;
            end
            8'd241: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd3;
	            hexOut[3] = 4'd3;
	            hexOut[2] = 4'd6;
	            hexOut[1] = 4'd8;
	            hexOut[0] = 4'd8;
            end
            8'd242: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd3;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd6;
	            hexOut[0] = 4'd8;
            end
            8'd243: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd2;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd2;
	            hexOut[0] = 4'd8;
            end
            8'd244: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd2;
	            hexOut[3] = 4'd6;
	            hexOut[2] = 4'd6;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd1;
            end
            8'd245: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd2;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd8;
            end
            8'd246: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd2;
	            hexOut[3] = 4'd1;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd1;
	            hexOut[0] = 4'd0;
            end
            8'd247: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd1;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd5;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd9;
            end
            8'd248: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd1;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd9;
	            hexOut[0] = 4'd6;
            end
            8'd249: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd1;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd6;
	            hexOut[1] = 4'd7;
	            hexOut[0] = 4'd3;
            end
            8'd250: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd1;
	            hexOut[3] = 4'd2;
	            hexOut[2] = 4'd2;
	            hexOut[1] = 4'd4;
	            hexOut[0] = 4'd1;
            end
            8'd251: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd0;
	            hexOut[3] = 4'd9;
	            hexOut[2] = 4'd8;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd1;
            end
            8'd252: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd0;
	            hexOut[3] = 4'd7;
	            hexOut[2] = 4'd3;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd6;
            end
            8'd253: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd0;
	            hexOut[3] = 4'd4;
	            hexOut[2] = 4'd9;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd6;
            end
            8'd254: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd0;
	            hexOut[3] = 4'd2;
	            hexOut[2] = 4'd4;
	            hexOut[1] = 4'd5;
	            hexOut[0] = 4'd4;
            end
            8'd255: begin
	            ledOut = 1'b1;
	            hexOut[5] = 4'd0;
	            hexOut[4] = 4'd0;
	            hexOut[3] = 4'd0;
	            hexOut[2] = 4'd0;
	            hexOut[1] = 4'd0;
	            hexOut[0] = 4'd0;
            end
        endcase
    end
endmodule
