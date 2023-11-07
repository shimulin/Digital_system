module clk_up_down(clk, rst, up_down, OUT);

input clk, rst, up_down;
output reg[3:0] OUT;

always @(posedgeclk or negedge rst)
begin
	if(!rst) OUT <= 4'd0;
	else
	begin
		if(up_down)
		begin
			if(OUT == 4'd15) OUT <= 4'd0;
			else OUT <= OUT + 1;
		end
		else
		begin
			if(OUT == 4'd0) OUT <= 4'd15;
			else OUT <= OUT - 1;
		end
	end
end

endmodule
