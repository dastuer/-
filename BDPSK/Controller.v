module Controller(
			clk,
			reset_n,
			re,
				
			address,
			clk_DA,
			blank_DA_n,
			sync_DA_n

);

	input            clk         ;
	input            reset_n     ;
	input 			  re			  ; 			//相对吗
	
	output [ 6 : 0 ] address     ;
	output           clk_DA      ; //数模转换器控制信号
	output           blank_DA_n  ; //数模转换器控制信号
	output           sync_DA_n   ; //数模转换器控制信号
	
	
	reg    [ 6 : 0 ] address_data;
	reg    [ 6 : 0 ] count;
	reg    [ 6 : 0 ] countt;
	reg				  flag;
	
	
	always @( posedge clk or negedge reset_n )
	begin
	if( !reset_n )
	begin
		address_data <= 7'b0000000;
		count <= 7'b0;
		countt <= 7'b1000000;
	end
	else 
	begin 
		if( !re )
		begin
			if ( count == 7'b1111111 )
				count <= 0;	
			count <= count + 1'b1;
			address_data <= count;
			countt <= 7'b1000000;
		end
		else
		begin
			if ( countt == 7'b1111111 )
				countt <= 0;
			countt <= countt + 1'b1;
			address_data <= countt;
			count <= 7'b0;
		end
	end
	end


	

	assign address    = address_data;
	assign clk_DA     = clk;
	assign blank_DA_n = 1'b1;
	assign sync_DA_n  = 1'b1;
	
endmodule
	