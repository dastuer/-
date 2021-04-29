module logic(a,b,c,d,f,g);
input a;
input b;
output c;
output d;
output f;
output g;
assign c = ~a;
assign d = a&&!b;
assign f = a||b;
assign g = a^b;
endmodule

