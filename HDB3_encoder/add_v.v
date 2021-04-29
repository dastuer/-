module add_v(
    reset_n,
    clk,
    datain,
    dataout_v
);

input reset_n;
input clk;
input datain;
output [1:0] dataout_v;
wire addV_en;
reg [1:0] count0;
reg [1:0] data_addV;

always @ ( posedge clk or negedge reset_n )
begin
    if( !reset_n )  begin
    count0 <= 0;
    end
    else if (!datain) begin
        count0 <= count0 + 2'b1;
    end
    else  begin
        count0 <= 2'b00;
    end
end

assign addV_en = count0[1] && count0[0] && (!datain);   

always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        data_addV <= 2'b00;
    end
    else if (addV_en) begin
        data_addV <= 2'b10;
    end
    else begin
    data_addV <= {1'b0,datain};    
    end
end

assign dataout_v = data_addV;

endmodule



