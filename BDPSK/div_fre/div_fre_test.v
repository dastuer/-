`timescale 1ns/100ps

module div_fre_test;
reg clk;
wire clk_o;

div_fre DIV_FRE(
clk,
clk_o
);
	initial
   begin
      clk = 1'b0;
   end
	always
	begin
		#5 clk = ~clk;
	end
endmodule