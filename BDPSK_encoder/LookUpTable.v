module LookUpTable( 
			clk,
			reset_n,
			address,

			dataout,
);

	input            clk;
	input            reset_n;
	input  [ 6 : 0 ] address;

	output [ 7 : 0 ] dataout;

	reg    [ 7 : 0 ] LUT [ 0 : 127 ];
	
	always @( posedge clk or negedge reset_n )
	begin
		if( !reset_n )
		begin
		LUT[ 0 ] <= 8 'd 127;
		LUT[ 1 ] <= 8 'd 133;
		LUT[ 2 ] <= 8 'd 139;
		LUT[ 3 ] <= 8 'd 146;
		LUT[ 4 ] <= 8 'd 152;
		LUT[ 5 ] <= 8 'd 158;
		LUT[ 6 ] <= 8 'd 164;
		LUT[ 7 ] <= 8 'd 170;
		LUT[ 8 ] <= 8 'd 176;
		LUT[ 9 ] <= 8 'd 182;
		LUT[ 10 ] <= 8 'd 187;
		LUT[ 11 ] <= 8 'd 193;
		LUT[ 12 ] <= 8 'd 198;
		LUT[ 13 ] <= 8 'd 203;
		LUT[ 14 ] <= 8 'd 208;
		LUT[ 15 ] <= 8 'd 213;
		LUT[ 16 ] <= 8 'd 217;
		LUT[ 17 ] <= 8 'd 221;
		LUT[ 18 ] <= 8 'd 226;
		LUT[ 19 ] <= 8 'd 229;
		LUT[ 20 ] <= 8 'd 233;
		LUT[ 21 ] <= 8 'd 236;
		LUT[ 22 ] <= 8 'd 239;
		LUT[ 23 ] <= 8 'd 242;
		LUT[ 24 ] <= 8 'd 245;
		LUT[ 25 ] <= 8 'd 247;
		LUT[ 26 ] <= 8 'd 249;
		LUT[ 27 ] <= 8 'd 251;
		LUT[ 28 ] <= 8 'd 252;
		LUT[ 29 ] <= 8 'd 253;
		LUT[ 30 ] <= 8 'd 254;
		LUT[ 31 ] <= 8 'd 254;
		LUT[ 32 ] <= 8 'd 255;
		LUT[ 33 ] <= 8 'd 254;
		LUT[ 34 ] <= 8 'd 254;
		LUT[ 35 ] <= 8 'd 253;
		LUT[ 36 ] <= 8 'd 252;
		LUT[ 37 ] <= 8 'd 251;
		LUT[ 38 ] <= 8 'd 249;
		LUT[ 39 ] <= 8 'd 247;
		LUT[ 40 ] <= 8 'd 245;
		LUT[ 41 ] <= 8 'd 242;
		LUT[ 42 ] <= 8 'd 239;
		LUT[ 43 ] <= 8 'd 236;
		LUT[ 44 ] <= 8 'd 233;
		LUT[ 45 ] <= 8 'd 229;
		LUT[ 46 ] <= 8 'd 226;
		LUT[ 47 ] <= 8 'd 221;
		LUT[ 48 ] <= 8 'd 217;
		LUT[ 49 ] <= 8 'd 213;
		LUT[ 50 ] <= 8 'd 208;
		LUT[ 51 ] <= 8 'd 203;
		LUT[ 52 ] <= 8 'd 198;
		LUT[ 53 ] <= 8 'd 193;
		LUT[ 54 ] <= 8 'd 187;
		LUT[ 55 ] <= 8 'd 182;
		LUT[ 56 ] <= 8 'd 176;
		LUT[ 57 ] <= 8 'd 170;
		LUT[ 58 ] <= 8 'd 164;
		LUT[ 59 ] <= 8 'd 158;
		LUT[ 60 ] <= 8 'd 152;
		LUT[ 61 ] <= 8 'd 146;
		LUT[ 62 ] <= 8 'd 139;
		LUT[ 63 ] <= 8 'd 133;
		LUT[ 64 ] <= 8 'd 127;
		LUT[ 65 ] <= 8 'd 121;
		LUT[ 66 ] <= 8 'd 115;
		LUT[ 67 ] <= 8 'd 108;
		LUT[ 68 ] <= 8 'd 102;
		LUT[ 69 ] <= 8 'd 96;
		LUT[ 70 ] <= 8 'd 90;
		LUT[ 71 ] <= 8 'd 84;
		LUT[ 72 ] <= 8 'd 78;
		LUT[ 73 ] <= 8 'd 72;
		LUT[ 74 ] <= 8 'd 67;
		LUT[ 75 ] <= 8 'd 61;
		LUT[ 76 ] <= 8 'd 56;
		LUT[ 77 ] <= 8 'd 51;
		LUT[ 78 ] <= 8 'd 46;
		LUT[ 79 ] <= 8 'd 41;
		LUT[ 80 ] <= 8 'd 37;
		LUT[ 81 ] <= 8 'd 33;
		LUT[ 82 ] <= 8 'd 28;
		LUT[ 83 ] <= 8 'd 25;
		LUT[ 84 ] <= 8 'd 21;
		LUT[ 85 ] <= 8 'd 18;
		LUT[ 86 ] <= 8 'd 15;
		LUT[ 87 ] <= 8 'd 12;
		LUT[ 88 ] <= 8 'd 9;
		LUT[ 89 ] <= 8 'd 7;
		LUT[ 90 ] <= 8 'd 5;
		LUT[ 91 ] <= 8 'd 3;
		LUT[ 92 ] <= 8 'd 2;
		LUT[ 93 ] <= 8 'd 1;
		LUT[ 94 ] <= 8 'd 0;
		LUT[ 95 ] <= 8 'd 0;
		LUT[ 96 ] <= 8 'd 0;
		LUT[ 97 ] <= 8 'd 0;
		LUT[ 98 ] <= 8 'd 0;
		LUT[ 99 ] <= 8 'd 1;
		LUT[ 100 ] <= 8 'd 2;
		LUT[ 101 ] <= 8 'd 3;
		LUT[ 102 ] <= 8 'd 5;
		LUT[ 103 ] <= 8 'd 7;
		LUT[ 104 ] <= 8 'd 9;
		LUT[ 105 ] <= 8 'd 12;
		LUT[ 106 ] <= 8 'd 15;
		LUT[ 107 ] <= 8 'd 18;
		LUT[ 108 ] <= 8 'd 21;
		LUT[ 109 ] <= 8 'd 25;
		LUT[ 110 ] <= 8 'd 28;
		LUT[ 111 ] <= 8 'd 33;
		LUT[ 112 ] <= 8 'd 37;
		LUT[ 113 ] <= 8 'd 41;
		LUT[ 114 ] <= 8 'd 46;
		LUT[ 115 ] <= 8 'd 51;
		LUT[ 116 ] <= 8 'd 56;
		LUT[ 117 ] <= 8 'd 61;
		LUT[ 118 ] <= 8 'd 67;
		LUT[ 119 ] <= 8 'd 72;
		LUT[ 120 ] <= 8 'd 78;
		LUT[ 121 ] <= 8 'd 84;
		LUT[ 122 ] <= 8 'd 90;
		LUT[ 123 ] <= 8 'd 96;
		LUT[ 124 ] <= 8 'd 102;
		LUT[ 125 ] <= 8 'd 108;
		LUT[ 126 ] <= 8 'd 115;
		LUT[ 127 ] <= 8 'd 121;
		end
	end
	
	assign dataout = LUT[ address ];
	
endmodule