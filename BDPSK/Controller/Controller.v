module Controller(
			clk,
			reset_n,
			re,
			clk_o,
				
			address,
			clk_DA,
			blank_DA_n,
			sync_DA_n
);

	input            clk         ;
	input            reset_n     ;
	input 			  re; //相对吗
	input				  clk_o;
	
	output [ 4 : 0 ] address     ;
	output           clk_DA      ; //数模转换器控制信号
	output           blank_DA_n  ; //数模转换器控制信号
	output           sync_DA_n   ; //数模转换器控制信号
	
	reg    [ 4 : 0 ] address_data;
	reg    [ 4 : 0 ] cnt;
	reg				  flag;

	/* 此处实现控制器的功能 */
	
	always @( posedge clk_o )
	begin
		if( re == 0 )
		begin
			cnt <= 5'b00000;//正弦
			flag <= 0;
		end
		else
		begin
			cnt <= 5'b10000;
			flag <= 1;
		end
		
	end
	
	always @( posedge clk or negedge reset_n )
	begin
	if( !reset_n )
	begin
		address_data <= 5'b00000;
	end
	else
	begin 
		if( flag == 1 )
		begin
			address_data <= cnt;
			flag <= 0;
		end	
		address_data <= address_data + 5'b00001;
	end
	end
	
	assign address    = address_data;
	assign clk_DA     = clk;
	assign blank_DA_n = 1'b1;
	assign sync_DA_n  = 1'b1;
	
endmodule