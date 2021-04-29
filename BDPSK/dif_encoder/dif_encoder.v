module dif_encoder(
		clk_o,
		reset_n,
		data_PN,
		re
);
	input 	clk_o;
	input 	reset_n;
	input 	data_PN;
	
	output 	re;
	
	reg		temp;
	
	always @( posedge clk_o or negedge reset_n )
	begin
		if ( !reset_n )
		begin
			temp <= 1;
		end
		else
		begin
			temp <= data_PN ^ temp;
		end
	end
	
	assign re = temp;
	
endmodule