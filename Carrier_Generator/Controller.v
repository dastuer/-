module Controller(
			clk,
			reset_n,
				
			address,
			clk_DA,
			blank_DA_n,
			sync_DA_n
);

	input            clk         ;
	input            reset_n     ;
	
	output [ 4 : 0 ] address     ;
	output           clk_DA      ; //数模转换器控制信号
	output           blank_DA_n  ; //数模转换器控制信号
	output           sync_DA_n   ; //数模转换器控制信号
	
	reg    [ 4 : 0 ] address_data;

	/* 此处实现控制器的功能 */
	
	always@(posedge clk or negedge reset_n)
	begin
	  if(!reset_n)
	  address_data <= 5'd8;
	  else if(address_data < 5'd31)
	  begin
		address_data <= address_data + 5'd1;
	  end
	  else
	  address_data <= 5'd0;
	end
	
	
	assign address    = address_data;
	assign clk_DA     = clk;
	assign blank_DA_n = 1'b1;
	assign sync_DA_n  = 1'b1;
	
endmodule