module counter(clk,reset_n,dataout);
input clk;
input reset_n;
output[1:0]dataout;
reg [1:0]counter_value;
always @(posedge clk,negedge reset_n) begin
    if(!reset_n)
    begin
        counter_value <= 2'b00;
    end
    else
    begin
        counter_value<=counter_value+2'b01;
    end
end
assign dataout = counter_value;
endmodule