`timescale 1ns/100ps

module PN_Seq_test;

	reg            clk_o       ;
	reg            reset_n   ;
	 
	wire 		      data_PN   ;
	
	PN_Seq DESIGN(
		clk_o,
		reset_n,
		
		data_PN
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

endmodule
