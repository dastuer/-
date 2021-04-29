`timescale 1ns/100ps

module dif_encoder_test;

	reg            clk_o     ;
	reg            reset_n   ;
	reg 				data_PN	 ;
	 
	wire 		      re   	 	 ;
	
	dif_encoder DESIGN(
		clk_o,
		reset_n,
		data_PN,
		
		re
	);
	
	initial
   begin
      clk_o = 1'b0;
   end
	always
	begin
		#5 clk_o = ~clk_o;
	end

   initial
   begin
		#0  reset_n = 1'b0;
      #20 reset_n = 1'b1;
   end

	initial
	begin
		data_PN =1'bz;
		#20 data_PN = 1'b1;
		#10 data_PN = 1'b0;
		#10 data_PN = 1'b1;
		#10 data_PN = 1'b0;
		#10 data_PN = 1'b1;
		#10 data_PN = 1'b1;
		#10 data_PN = 1'b0;
		#10 data_PN = 1'b0;
		#10 data_PN = 1'b0;
		#10 data_PN = 1'b0;
		#10 data_PN = 1'b0;
		#10 data_PN = 1'b1;
		#10 data_PN = 1'b1;
		#10 data_PN = 1'b0;
		#10 data_PN = 1'b0;
		#10 data_PN = 1'b0;
		#10 data_PN = 1'b0;
		#10 data_PN = 1'b1;
	end
endmodule
