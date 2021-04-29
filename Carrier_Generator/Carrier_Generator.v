module Carrier_Generator(
			clk,
			reset_n,
			
			clk_DA,
			blank_DA_n,
			sync_DA_n,
			dataout
);

	input            clk       ;
	input            reset_n   ;
	
	output           clk_DA    ; //数模转换器控制信号
	output           blank_DA_n; //数模转换器控制信号
	output           sync_DA_n ; //数模转换器控制信号
	output [ 7 : 0 ] dataout   ;
	
	wire   [ 4 : 0 ] address   ;
	
	Controller  CONTROLLER  (
			.clk       ( clk ),
			.reset_n   ( reset_n ),
						
			.address   ( address ),
			.clk_DA    ( clk_DA ),
			.blank_DA_n( blank_DA_n ),
			.sync_DA_n ( sync_DA_n )
	);
	LookUpTable LOOKUPTABLE (
			.clk       ( clk ),
			.reset_n   ( reset_n ),
			.address   ( address ),
					
			.dataout   ( dataout )
	);

endmodule