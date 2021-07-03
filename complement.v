`timescale 1ns / 1ps
// 2's complement of 16 bit number
module complement(in,comp);
input [15:0] in;
output [15:0] comp;
wire cout;
wire [15:0] g,h;
not(g[0],in[0]);
not(g[1],in[1]);
not(g[2],in[2]);
not(g[3],in[3]);
not(g[4],in[4]);
not(g[5],in[5]);
not(g[6],in[6]);
not(g[7],in[7]);
not(g[8],in[8]);
not(g[9],in[9]);
not(g[10],in[10]);
not(g[11],in[11]);
not(g[12],in[12]);
not(g[13],in[13]);
not(g[14],in[14]);
not(g[15],in[15]);
adder_16bit add(g[15:0],16'b0000000000000001,1'b0,comp[15:0],cout);
endmodule