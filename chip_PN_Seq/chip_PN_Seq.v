module chip_PN_Seq(
		clk,
		reset_n,	
		dataout
);

	input clk;
	input reset_n;
	output wire dataout;
	reg    c[ 7 : 1 ] ; 
	reg feedback;
	
	always @(posedge clk) 
	begin
		if(!reset_n)
			begin
				c[1] <= 1'b1;
				c[2] <= 1'b0;
				c[3] <= 1'b0;
				c[4] <= 1'b0;
				c[5] <= 1'b0;
				c[6] <= 1'b0;
				c[7] <= 1'b1;
			end
		else
			begin
				feedback = c[7]^c[4]^c[2]^c[3];
				c[1] <= feedback;
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