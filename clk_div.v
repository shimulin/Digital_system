`define TimeExpire 32'd25000000

module clk_div(clk, rst, div_clk);
input clk, rst;
output reg div_clk;

reg[31:0] count;

always @(posedge clk)
	if(!rst)
	begin
		count <= 32'd0;
		div_clk <= 1'b1;
	end
	else
	begin
		if(count == `TimeExpire)
		begin
			count <= 32'd0;
			div_clk <= ~div_clk;
		end
		else count <= count + 32'd1;
	end
end

endmodule
