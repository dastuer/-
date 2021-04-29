module all_zero(
	clk,
	reset_n,
	
	datain
);

	input		clk;
   input 	reset_n;
	
	output 	datain;
assign datain = 1'b0;
endmodule