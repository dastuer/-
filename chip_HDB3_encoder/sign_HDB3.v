module sign_HDB3(
		clk,
		reset_n,
		data_addB,
		
		dataout
);
	input          		   clk;                        //输入时钟
	input          		   reset_n;                    //复位信号
	input  [ 1 : 0 ] 			data_addB;                    
	
	reg							flag;
	reg   [ 1 : 0 ]			delay_data_addB;
	reg  							sign_HDB3;
	output [ 2 : 0 ]			dataout;
	
	
	always @ ( posedge clk or negedge reset_n )
	begin
		if( !reset_n )  
		begin
			flag <= 0;
			sign_HDB3 <= 1'b0;
			delay_data_addB <= data_addB;
		end
		else  
		begin
			if( data_addB == 2'b01 || data_addB == 2'b11 )  //输入1或B
			begin  
				if( flag == 0 ) 
					begin
					sign_HDB3 <= 1'b0;  //+1
					flag <= 1;    //极性更改
					delay_data_addB <= data_addB;
					end
				else  
				begin
					sign_HDB3 <= 1'b1;  //-1
					flag <= 0;    //极性更改
					delay_data_addB <= data_addB;
				end
			end
			else if( data_addB == 2'b10 ) //输入V
			begin       
				if( flag == 0 )  
				begin	
					sign_HDB3 <= 1'b1;  //输出-1
					delay_data_addB <= data_addB;
				end
				else
				begin
					sign_HDB3 <= 1'b0;  //+1
					delay_data_addB <= data_addB;
				end
			end
			else  
			begin
				sign_HDB3 <= 1'b0;
				delay_data_addB <= data_addB;
			end
		end
   end
	assign  dataout = { sign_HDB3, delay_data_addB }; 
endmodule