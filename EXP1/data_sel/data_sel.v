module data_sel(datain,dataout);
input [1:0]datain;
output [3:0]dataout;
reg [3:0]data_selected;
always @(datain) begin
    case(datain)
    2'b00:data_selected = 4'b0001;
    2'b01:data_selected = 4'b0010;
    2'b10:data_selected = 4'b0100;
    2'b11:data_selected = 4'b1000;
    default:data_selected = 4'bzzzz;
    endcase
end
assign  dataout = data_selected;
endmodule