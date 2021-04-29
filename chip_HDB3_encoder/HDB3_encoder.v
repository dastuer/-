module HDB3_encoder(
		clk,
		reset_n,
				
		dataout
);

	input            clk;                        
	input            reset_n;                   
                     
	
	output [ 2 : 0 ] dataout;  
	
	wire [ 1 : 0 ]	  data_addV;
	wire [ 1 : 0 ]	  data_addB;
	wire 				  datain;
	
all_zero ALL_ZERO(
	.clk(	clk	),
	.reset_n(reset_n),
	
	.datain( datain )

);

addV ADDV
(
	.clk			( clk ),	
	.reset_n		( reset_n ),	
	.datain		( datain ),
	
	.data_addV	( data_addV )	
);

addB ADDB
(
	.clk			( clk ),	
	.reset_n		( reset_n ),	
	.data_addV	( data_addV ),
	
	.data_addB	( data_addB )	
);


sign_HDB3 SIGN_HDB3
(
	.clk						( clk ),	
	.reset_n					( reset_n ),	
	.data_addB				( data_addB ),	
	
	.dataout					( dataout )	
);


endmodule