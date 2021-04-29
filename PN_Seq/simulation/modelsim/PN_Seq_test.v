`timescale 1ns/100ps

module PN_Seq_test;
    
   reg   clk;
	reg   reset_n;
	
	wire  dataout;
    
   PN_Seq DESIGN (
			clk,
			reset_n,
			
			dataout
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
