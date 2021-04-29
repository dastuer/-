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
			//用C编程计算出的查找表采样值填在这里
		LUT[ 0 ] <= 8 'd 127;
		LUT[ 1 ] <= 8 'd 152;
		LUT[ 2 ] <= 8 'd 176;
		LUT[ 3 ] <= 8 'd 198;
		LUT[ 4 ] <= 8 'd 217;
		LUT[ 5 ] <= 8 'd 233;
		LUT[ 6 ] <= 8 'd 245;
		LUT[ 7 ] <= 8 'd 252;
		LUT[ 8 ] <= 8 'd 255;
		LUT[ 9 ] <= 8 'd 252;
		LUT[ 10 ] <= 8 'd 245;
		LUT[ 11 ] <= 8 'd 233;
		LUT[ 12 ] <= 8 'd 217;
		LUT[ 13 ] <= 8 'd 198;
		LUT[ 14 ] <= 8 'd 176;
		LUT[ 15 ] <= 8 'd 152;
		LUT[ 16 ] <= 8 'd 127;
		LUT[ 17 ] <= 8 'd 102;
		LUT[ 18 ] <= 8 'd 78;
		LUT[ 19 ] <= 8 'd 56;
		LUT[ 20 ] <= 8 'd 37;
		LUT[ 21 ] <= 8 'd 21;
		LUT[ 22 ] <= 8 'd 9;
		LUT[ 23 ] <= 8 'd 2;
		LUT[ 24 ] <= 8 'd 0;
		LUT[ 25 ] <= 8 'd 2;
		LUT[ 26 ] <= 8 'd 9;
		LUT[ 27 ] <= 8 'd 21;
		LUT[ 28 ] <= 8 'd 37;
		LUT[ 29 ] <= 8 'd 56;
		LUT[ 30 ] <= 8 'd 78;
		LUT[ 31 ] <= 8 'd 102;
		end
	end
	
	assign dataout = LUT[ address ];
	
endmodule
