module polar(
clk,
reset_n,
datain_b,
codeout
);

input clk;
input reset_n;
input  [1:0] datain_b;
output [2:0] codeout ;

reg [2:0] polared;
reg polar;


always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        polar <= 1'b0;
        polared <= 3'bxxx;
    end
   else begin
		if(datain_b == 2'b01 || datain_b == 2'b11)begin
			polar = ~ polar;
			polared = {polar,datain_b};
		end
		else if (datain_b==2'b10) begin
			polared <= {polar,datain_b};
		end
    else
        polared <= {1'b0,datain_b};
	end	  
end

assign codeout = polared;
endmodule

