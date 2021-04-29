module addV(
		clk,
		reset_n,
		datain,
				
		data_addV
);
	input            clk;                        //输入时钟
	input            reset_n;                    //复位信号
	input            datain;                     //二进制数据输入
	
	output [ 1 : 0 ] data_addV; 
	wire        	  addV_en;
	reg [ 1 : 0 ] 	  count_zero;
	reg [ 1 : 0 ]    data_addV;
	
	/*加V码*/
	always @( posedge clk or negedge reset_n )
	begin
		if( !reset_n )
		begin
			count_zero <= 2'b00;
		end
		else if( !datain )
		begin
			count_zero <= count_zero + 2'b01;
		end
		else
		begin
			count_zero <= 2'b00;
		end
	end
	
	assign addV_en = count_zero[ 1 ] && count_zero[ 0 ] && !datain;
	
	always @( posedge clk or negedge reset_n )
	begin
		if( !reset_n )
		begin
			data_addV <= 2'b00;	
		end
		else if( addV_en )
		begin
			data_addV <= 2'b10;	//加V码
		end
		else
		begin
			data_addV <= { 1'b0, datain }; 
		end
	end
endmodule