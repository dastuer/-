module div_fre(
		clk,
		reset_n,
		
		clk_o
);
	input					clk;
	input 				reset_n;
	
	output reg 			clk_o;
	
	reg 	[ 9 : 0 ] 	cnt;		
	
	parameter			N = 128;
	
	initial
	begin
						cnt <= 10'b0;
						clk_o	<= 1'b0;
	end
	
	always @( posedge clk or negedge reset_n )
	begin
		if( !reset_n )
		begin
			clk_o <= 0;
			cnt <= 0;
		end
		else if( cnt == N/2 - 1 )
		begin
			cnt <= 10'b0;
			clk_o <= ~ clk_o;
		end
		else
		begin
			cnt <= cnt + 10'b1;
		end
	end
	
endmodule