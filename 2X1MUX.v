`timescale 1ns / 1ps

//2X1 MUX to create 16 bit register reset
module MUX2X1(out,i0,i1,s0);

output out;
input i0,i1;
input s0;

wire c1,c2;
assign c1=(~s0)&&i0;
assign c2=s0&&i1;

assign out=c1||c2;
endmodule
