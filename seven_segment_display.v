module seven_segment_display(IN, OUT);

input[3:0] IN;
output reg[6:0] OUT;

always @(IN)
begin
	case(IN)
		4'b0000 : OUT = 7b'1000000;
		4'b0001 : OUT = 7b'1111001;
		4'b0010 : OUT = 7b'0100100;
		4'b0011 : OUT = 7b'0110000;
		4'b0100 : OUT = 7b'0011001;
		4'b0101 : OUT = 7b'0010010;
		4'b0110 : OUT = 7b'0000010;
		4'b0111 : OUT = 7b'1111000;
		4'b1000 : OUT = 7b'0000000;
		4'b1001 : OUT = 7b'0010000;
		4'b1010 : OUT = 7b'0001000;
		4'b1011 : OUT = 7b'0000011;
		4'b1100 : OUT = 7b'1000110;
		4'b1101 : OUT = 7b'0100001;
		4'b1110 : OUT = 7b'0000110;
		4'b1111 : OUT = 7b'0001110;
	encase
end

endmodule

		
		