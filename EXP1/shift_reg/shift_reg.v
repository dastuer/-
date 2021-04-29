module shift_reg(clk,reset_n,datain,dataout);
input clk;
input reset_n;
input[1:0]datain;
output [1:0]dataout;
reg [1:0] reg_data [3:0];
always @(posedge clk or negedge reset_n) 
begin
    if(!reset_n)
    begin
        reg_data[3] <= 2'b00;
        reg_data[2] <= 2'b00;
        reg_data[1] <= 2'b00;
        reg_data[0] <= 2'b00;
    end
    else
    begin
        reg_data[3] <= datain;
        reg_data[2] <= reg_data[3];
        reg_data[1] <= reg_data[2];
        reg_data[0] <= reg_data[1];
    end
   
end
assign dataout = reg_data[0];
endmodule