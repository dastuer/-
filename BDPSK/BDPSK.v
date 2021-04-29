module BDPSK(
		clk,
		reset_n,
	
		clk_DA,
		blank_DA_n,
		sync_DA_n,
		re,
		data_PN,
		dataout
);

	input            clk       ;
	input            reset_n   ;
	

	output [ 7 : 0 ] dataout   ;
	output           clk_DA      ; //数模转换器控制信号
	output           blank_DA_n  ; //数模转换器控制信号
	output           sync_DA_n   ; //数模转换器控制信号		
	output  			  data_PN	;
	output			  re			;
	
	wire   [ 6 : 0 ] address   ;
	wire	 			  clk_o		;
	
	
	div_fre  DIV_FRE(					// 分频
			.clk		  ( clk ),
			.reset_n   ( reset_n ),
			
			.clk_o	  ( clk_o )
	);


	PN_Seq PN_SEQ(						//产生伪随机序列
			.clk_o	  ( clk_o ), 	
			.reset_n	  ( reset_n ),        
			
			.data_PN   ( data_PN )
	);
	
	dif_encoder  DIF_ENCODER(		//差分编码
			.clk_o	  ( clk_o ),
			.reset_n	  ( reset_n ),
			.data_PN	  ( data_PN ),

			.re		  ( re )
	);
	
	Controller  CONTROLLER  (		//控制器
			.clk       ( clk ),
			.reset_n   ( reset_n ),
			.re		  ( re ),
						
			.address   ( address  ),
			.clk_DA    ( clk_DA   ),
			.blank_DA_n(blank_DA_n),
			.sync_DA_n (sync_DA_n ),
	);
	
	LookUpTable LOOKUPTABLE (		//查找表
			.clk       ( clk ),
			.reset_n   ( reset_n ),
			.address   ( address ),
					
			.dataout   ( dataout )
	);
	

endmodule