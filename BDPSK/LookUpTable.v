module LookUpTable( 
			clk,
			reset_n,
			address,

			dataout
);

	input            clk;
	input            reset_n;
	input  [ 6 : 0 ] address;

	output [ 7 : 0 ] dataout;

	reg    [ 7 : 0 ] LUT     [ 0 : 127 ];
	
	always @( posedge clk or negedge reset_n )
	begin
		if( !reset_n )
		begin
			LUT[ 0 ]  <= 8'd134;
			LUT[ 1 ]  <= 8'd140;
			LUT[ 2 ]  <= 8'd146;
			LUT[ 3 ]  <= 8'd152;
			LUT[ 4 ]  <= 8'd159;
			LUT[ 5 ]  <= 8'd165;
			LUT[ 6 ]  <= 8'd171;
			LUT[ 7 ]  <= 8'd176;
			LUT[ 8 ]  <= 8'd182;
			LUT[ 9 ]  <= 8'd188;
			LUT[ 10 ]  <= 8'd193;
			LUT[ 11 ]  <= 8'd199;
			LUT[ 12 ]  <= 8'd204;
			LUT[ 13 ]  <= 8'd209;
			LUT[ 14 ]  <= 8'd213;
			LUT[ 15 ]  <= 8'd218;
			LUT[ 16 ]  <= 8'd222;
			LUT[ 17 ]  <= 8'd226;
			LUT[ 18 ]  <= 8'd230;
			LUT[ 19 ]  <= 8'd234;
			LUT[ 20 ]  <= 8'd237;
			LUT[ 21 ]  <= 8'd240;
			LUT[ 22 ]  <= 8'd243;
			LUT[ 23 ]  <= 8'd246;
			LUT[ 24 ]  <= 8'd248;
			LUT[ 25 ]  <= 8'd250;
			LUT[ 26 ]  <= 8'd252;
			LUT[ 27 ]  <= 8'd253;
			LUT[ 28 ]  <= 8'd254;
			LUT[ 29 ]  <= 8'd255;
			LUT[ 30 ]  <= 8'd255;
			LUT[ 31 ]  <= 8'd255;
			LUT[ 32 ]  <= 8'd255;
			LUT[ 33 ]  <= 8'd255;
			LUT[ 34 ]  <= 8'd254;
			LUT[ 35 ]  <= 8'd253;
			LUT[ 36 ]  <= 8'd252;
			LUT[ 37 ]  <= 8'd250;
			LUT[ 38 ]  <= 8'd248;
			LUT[ 39 ]  <= 8'd246;
			LUT[ 40 ]  <= 8'd243;
			LUT[ 41 ]  <= 8'd240;
			LUT[ 42 ]  <= 8'd237;
			LUT[ 43 ]  <= 8'd234;
			LUT[ 44 ]  <= 8'd230;
			LUT[ 45 ]  <= 8'd226;
			LUT[ 46 ]  <= 8'd222;
			LUT[ 47 ]  <= 8'd218;
			LUT[ 48 ]  <= 8'd213;
			LUT[ 49 ]  <= 8'd209;
			LUT[ 50 ]  <= 8'd204;
			LUT[ 51 ]  <= 8'd199;
			LUT[ 52 ]  <= 8'd193;
			LUT[ 53 ]  <= 8'd188;
			LUT[ 54 ]  <= 8'd182;
			LUT[ 55 ]  <= 8'd176;
			LUT[ 56 ]  <= 8'd171;
			LUT[ 57 ]  <= 8'd165;
			LUT[ 58 ]  <= 8'd159;
			LUT[ 59 ]  <= 8'd152;
			LUT[ 60 ]  <= 8'd146;
			LUT[ 61 ]  <= 8'd140;
			LUT[ 62 ]  <= 8'd134;
			LUT[ 63 ]  <= 8'd128;
			LUT[ 64 ]  <= 8'd121;
			LUT[ 65 ]  <= 8'd115;
			LUT[ 66 ]  <= 8'd109;
			LUT[ 67 ]  <= 8'd103;
			LUT[ 68 ]  <= 8'd96;
			LUT[ 69 ]  <= 8'd90;
			LUT[ 70 ]  <= 8'd84;
			LUT[ 71 ]  <= 8'd79;
			LUT[ 72 ]  <= 8'd73;
			LUT[ 73 ]  <= 8'd67;
			LUT[ 74 ]  <= 8'd62;
			LUT[ 75 ]  <= 8'd56;
			LUT[ 76 ]  <= 8'd51;
			LUT[ 77 ]  <= 8'd46;
			LUT[ 78 ]  <= 8'd42;
			LUT[ 79 ]  <= 8'd37;
			LUT[ 80 ]  <= 8'd33;
			LUT[ 81 ]  <= 8'd29;
			LUT[ 82 ]  <= 8'd25;
			LUT[ 83 ]  <= 8'd21;
			LUT[ 84 ]  <= 8'd18;
			LUT[ 85 ]  <= 8'd15;
			LUT[ 86 ]  <= 8'd12;
			LUT[ 87 ]  <= 8'd9;
			LUT[ 88 ]  <= 8'd7;
			LUT[ 89 ]  <= 8'd5;
			LUT[ 90 ]  <= 8'd3;
			LUT[ 91 ]  <= 8'd2;
			LUT[ 92 ]  <= 8'd1;
			LUT[ 93 ]  <= 8'd0;
			LUT[ 94 ]  <= 8'd0;
			LUT[ 95 ]  <= 8'd0;
			LUT[ 96 ]  <= 8'd0;
			LUT[ 97 ]  <= 8'd0;
			LUT[ 98 ]  <= 8'd1;
			LUT[ 99 ]  <= 8'd2;
			LUT[ 100 ]  <= 8'd3;
			LUT[ 101 ]  <= 8'd5;
			LUT[ 102 ]  <= 8'd7;
			LUT[ 103 ]  <= 8'd9;
			LUT[ 104 ]  <= 8'd12;
			LUT[ 105 ]  <= 8'd15;
			LUT[ 106 ]  <= 8'd18;
			LUT[ 107 ]  <= 8'd21;
			LUT[ 108 ]  <= 8'd25;
			LUT[ 109 ]  <= 8'd29;
			LUT[ 110 ]  <= 8'd33;
			LUT[ 111 ]  <= 8'd37;
			LUT[ 112 ]  <= 8'd42;
			LUT[ 113 ]  <= 8'd46;
			LUT[ 114 ]  <= 8'd51;
			LUT[ 115 ]  <= 8'd56;
			LUT[ 116 ]  <= 8'd62;
			LUT[ 117 ]  <= 8'd67;
			LUT[ 118 ]  <= 8'd73;
			LUT[ 119 ]  <= 8'd79;
			LUT[ 120 ]  <= 8'd84;
			LUT[ 121 ]  <= 8'd90;
			LUT[ 122 ]  <= 8'd96;
			LUT[ 123 ]  <= 8'd103;
			LUT[ 124 ]  <= 8'd109;
			LUT[ 125 ]  <= 8'd115;
			LUT[ 126 ]  <= 8'd121;
			LUT[ 127 ]  <= 8'd127;
				
		end
	end
	
	assign dataout = LUT[ address ];
	
endmodule