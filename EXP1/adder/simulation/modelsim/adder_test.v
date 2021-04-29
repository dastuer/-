`timescale 1ns/100ps

module adder_test;
    
   reg  [ 3 : 0 ] ina;
	reg  [ 3 : 0 ] inb;
	
	wire [ 3 : 0 ] sum;
    
   adder DESIGN (
						.ina ( ina ),
				      .inb ( inb ),
				
						.sum ( sum )
   );
    
   initial
   begin
		ina = 4'b1010;
		inb = 4'b0110;
   end
	always
	begin
		#10 ina = ina + 4'b0001;
		    inb = inb + 4'b0001;
	end

endmodule
