module clock(clock, reset, up_down, out);

input clock, reset, up_down;
output[6:0] out;
wire div_clk;
wire [3:0] second;

clk_div clk_div1(clock, reset, div_clk);
clk_up_down clk_up_down1(div_clk, reset, up_down, second);
seven_segment_display(second, out);

endmodule
