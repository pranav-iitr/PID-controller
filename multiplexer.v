`timescale 1ns / 1ps
module multiplexer(in,s0,out);

output [15:0]out;
input [15:0]in;
input s0;
reg c=1'b0;

MUX2X1 mux1(out[0],in[0],c,s0);
MUX2X1 mux2(out[1],in[1],c,s0);
MUX2X1 mux3(out[2],in[2],c,s0);
MUX2X1 mux4(out[3],in[3],c,s0);
MUX2X1 mux5(out[4],in[4],c,s0);
MUX2X1 mux6(out[5],in[5],c,s0);
MUX2X1 mux7(out[6],in[6],c,s0);
MUX2X1 mux8(out[7],in[7],c,s0);
MUX2X1 mux9(out[8],in[8],c,s0);
MUX2X1 mux10(out[9],in[9],c,s0);
MUX2X1 mux11(out[10],in[10],c,s0);
MUX2X1 mux12(out[11],in[11],c,s0);
MUX2X1 mux13(out[12],in[12],c,s0);
MUX2X1 mux14(out[13],in[13],c,s0);
MUX2X1 mux15(out[14],in[14],c,s0);
MUX2X1 mux16(out[15],in[15],c,s0);

endmodule


