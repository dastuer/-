module LookUpTable( 
			clk,
			reset_n,
			address,

			dataout,
);

	input            clk;
	input            reset_n;
	input  [ 4 : 0 ] address;

	output [ 7 : 0 ] dataout;

	reg    [ 7 : 0 ] LUT     [ 0 : 31 ];
	
	always @( posedge clk or negedge reset_n )
	begin
		if( !reset_n )
		begin
				LUT[ 0 ]  <= 8'd152;
				LUT[ 1 ]  <= 8'd176;
				LUT[ 2 ]  <= 8'd199;
				LUT[ 3 ]  <= 8'd218;
				LUT[ 4 ]  <= 8'd234;
				LUT[ 5 ]  <= 8'd246;
				LUT[ 6 ]  <= 8'd253;
				LUT[ 7 ]  <= 8'd256;
				LUT[ 8 ]  <= 8'd253;
				LUT[ 9 ]  <= 8'd246;
				LUT[ 10 ]  <= 8'd234;
				LUT[ 11 ]  <= 8'd218;
				LUT[ 12 ]  <= 8'd199;
				LUT[ 13 ]  <= 8'd176;
				LUT[ 14 ]  <= 8'd152;
				LUT[ 15 ]  <= 8'd128;
				LUT[ 16 ]  <= 8'd103;
				LUT[ 17 ]  <= 8'd79;
				LUT[ 18 ]  <= 8'd56;
				LUT[ 19 ]  <= 8'd37;
				LUT[ 20 ]  <= 8'd21;
				LUT[ 21 ]  <= 8'd9;
				LUT[ 22 ]  <= 8'd2;
				LUT[ 23 ]  <= 8'd0;
				LUT[ 24 ]  <= 8'd2;
				LUT[ 25 ]  <= 8'd9;
				LUT[ 26 ]  <= 8'd21;
				LUT[ 27 ]  <= 8'd37;
				LUT[ 28 ]  <= 8'd56;
				LUT[ 29 ]  <= 8'd79;
				LUT[ 30 ]  <= 8'd103;
				LUT[ 31 ]  <= 8'd127;
		end
	end
	
	assign dataout = LUT[ address ];
	
endmodule