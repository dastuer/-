`timescale 1ns/100ps

module logic_test;
    
   reg  a;
	reg  b;
	
	wire c;
	wire d;
	wire f;
	wire g;
    
   logic DESIGN (
						.a ( a ),
				      .b ( b ),
				
						.c ( c ),
						.d ( d ),
						.f ( f ),
						.g ( g )
   );
    
   initial
   begin
		a = 1'b1;
		b = 1'b0;
   end
	always
	begin
		#10 a = ~a;
		    b = ~b;
	end

endmodule
