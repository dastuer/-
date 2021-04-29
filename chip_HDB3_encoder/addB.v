module addB(
		clk,
		reset_n,
		data_addV,
		
		data_addB
);
	input            clk;                        //输入时钟
	input            reset_n;                    //复位信号
	input [ 1 : 0 ]  data_addV;
	
	reg [ 1 : 0 ]    reg_data [ 0 : 2 ];
	reg 				  firstV_occur;
	reg 			     count_nonzero;
	
	wire 	[ 1 : 0 ]		delay_data_addV;	
	
	output reg [ 1 : 0 ] data_addB;
	
	always @( posedge clk or negedge reset_n)
	begin
		if( !reset_n ) 
		begin //复位过程中，对移位寄存器的各位置初值。
			reg_data[ 2 ] <= 2'b00; 
			reg_data[ 1 ] <= 2'b00; 
			reg_data[ 0 ] <= 2'b00; 
		end 
		else
		begin
			reg_data[ 2 ] <= data_addV;				 //移位寄存器延时
			reg_data[ 1 ] <= reg_data[ 2 ];
			reg_data[ 0 ] <= reg_data[ 1 ];

		end
	end
	
	assign delay_data_addV = reg_data [ 0 ];
	
	always @( posedge clk or negedge reset_n )
	begin
	if( !reset_n )  
	begin
		count_nonzero <= 1'b0;
		firstV_occur <= 1'b0;
	end
	else if( data_addV == 2'b10 )
	begin
		if( firstV_occur == 1'b0 )
		begin
			count_nonzero <= 1'b0;
			firstV_occur <= 1'b1;
			data_addB <= delay_data_addV;
		end
		else
		begin
			if( count_nonzero == 1'b0 )
			begin
				data_addB <= 2'b11;
			end
			else
			begin
				data_addB <= delay_data_addV;
				count_nonzero <= 1'b0;
			end
		end
	end
	else if ( data_addV == 2'b01 )
	begin
		if( firstV_occur == 1'b1 )
		begin
			count_nonzero <= count_nonzero + 1'b1;
			data_addB <= delay_data_addV;
		end
		else
		begin
			data_addB <= delay_data_addV;
		end
	end
	else
	begin
		data_addB <= delay_data_addV;
	end
	end
endmodule