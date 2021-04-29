`timescale 1ns/100ps

module shift_reg_test;
    
   reg            clk;
	reg            reset_n;
	reg  [ 1 : 0 ] datain;
	
	wire [ 1 : 0 ] dataout;
    
   shift_reg DESIGN (
			.clk    ( clk ),
			.reset_n( reset_n ),
			.datain ( datain ),
				
			.dataout( dataout )
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
      #10 reset_n = 1'b1;
   end

	initial
	begin
		datain = 2'b00;
	end
	always
	begin
		#10 datain = datain + 2'b01;
	end
    
endmodule
