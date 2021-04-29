module dif(
clk,
reset_n,
datain,
dataout
);

input clk;
input reset_n;
input datain;
output dataout;

reg dn_1 = 1'b0;

always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        dn_1 <= datain;
    end
    else begin
        dn_1 <= dataout;
    end
end

assign dataout =  dn_1 ^ datain;

endmodule 
