module add_b(
datain_v,
clk,
reset_n,
dataout_b
);

input [1:0]datain_v;
input clk;
input reset_n;
output [1:0] dataout_b;
reg first_v = 1'b0;
reg count_even = 1'b1;
reg [1:0] d[3:0];

always @(posedge clk) begin
  d[3] <= d[2];
  d[2] <= d[1];
  d[1] <= d[0];
  d[0] <= datain_v;
end

always @(posedge clk or negedge reset_n) begin
    if(!reset_n)begin
      count_even <= 1'b1;
      first_v <= 1'b1;
    end
    else if (d[0]==2'b10) begin
        if(first_v)begin
            count_even <= 1'b1;
            first_v <= 1'b0;
        end
		  else begin
				count_even <= 1'b1;
		  end

    end
    else if (d[0]==2'b01) begin
        count_even <= ~ count_even;
    end
end

assign dataout_b = count_even && (~first_v)  && (d[0] == 2'b10)?2'b11 : d[3];

endmodule
