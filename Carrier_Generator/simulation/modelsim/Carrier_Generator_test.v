`timescale 1ns/100ps

module Carrier_Generator_test;
    
   reg   clk;
	reg   reset_n;
	
	wire  [ 7 : 0 ]dataout;
    
   Carrier_Generator DESIGN (
			.clk(clk),
			.reset_n(reset_n),
			
			.dataout(dataout)
	);
    
   initial
   begin
      clk = 1'b0;
   end
	always
	begin
		#5 clk = ~clk;
	end

   initial
   begin
		#0  reset_n = 1'b0;
      #20 reset_n = 1'b1;
    end

endmodule
