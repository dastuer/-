module div_clk(
clk,
clk_out
);
input clk;
output clk_out;
reg clk_out;
reg [5:0] count;
initial
begin
clk_out = 1'b1;
count = 6'd0;
end

always @(posedge clk) begin
    if(count == 6'd63)
		begin
        clk_out <= ~clk_out;
		  count <= 6'd0;
		end 
	else
		count <= count + 6'd1;	
end
endmodule
