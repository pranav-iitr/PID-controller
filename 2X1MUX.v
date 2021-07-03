`timescale 1ns / 1ps

module MUX2X1(out,i0,i1,s0);

output out;

input s0;
input i0,i1;

wire c1,c2;
assign c1=(~s0)&&i0;
assign c2=s0&&i1;

assign out=c1||c2;
endmodule
