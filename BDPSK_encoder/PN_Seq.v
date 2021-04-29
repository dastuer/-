module PN_Seq(
		clk,
		reset_n,	
		dataout,
);

	input clk;
	input reset_n;
	output dataout;
	reg    [7:1]c ; 
	
	always @(posedge clk) 
	begin
		if(!reset_n)
			begin
			c <= 7'd0;
			end
		else
			begin
				c[1] <= c[7]^c[4]^c[2]^c[3];
				c[2] <= c[1];
				c[3] <= c[2];
				c[4] <= c[3];
				c[5] <= c[4];
				c[6] <= c[5];
				c[7] <= c[6];
			end	
			
	end
	assign dataout = c[7];
	endmodule
	