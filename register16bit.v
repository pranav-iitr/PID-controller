`timescale 1ns / 1ps
//16 bit PIPO Register
module register16bit(out,in,clk);
input [15:0]in;
input clk;
output [15:0]out;
wire temp[15:0];
DFF a1(out[0],temp[0],in[0],clk);
DFF a2(out[1],temp[1],in[1],clk);
DFF a3(out[2],temp[2],in[2],clk);
DFF a4(out[3],temp[3],in[3],clk);
DFF a5(out[4],temp[4],in[4],clk);
DFF a6(out[5],temp[5],in[5],clk);
DFF a7(out[6],temp[6],in[6],clk);
DFF a8(out[7],temp[7],in[7],clk);
DFF a9(out[8],temp[8],in[8],clk);
DFF a10(out[9],temp[9],in[9],clk);
DFF a11(out[10],temp[10],in[10],clk);
DFF a12(out[11],temp[11],in[11],clk);
DFF a13(out[12],temp[12],in[12],clk);
DFF a14(out[13],temp[13],in[13],clk);
DFF a15(out[14],temp[14],in[14],clk);
DFF a16(out[15],temp[15],in[15],clk);
endmodule