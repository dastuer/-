`timescale 1ns/100ps

module data_sel_test;
    
   reg  [ 1 : 0 ] datain;
	
	wire [ 3 : 0 ] dataout;
    
   data_sel DESIGN (
			.datain  ( datain ),

			.dataout ( dataout )
   );
    
   initial
   begin
		datain = 2'b00;
   end
	always
	begin
		#10 datain = datain + 2'b01;
	end

endmodule
