`timescale 1ns / 1ps
module DFF(q,q_,d,clk);
input d ;
input clk ;           
output q ;
output q_ ;           
wire w_1,w_2,w_3,w_4 ;           
nand a(w_1,d,w_4);
nand b(w_4,w_2,w_1,clk); 
nand c(w_2,clk,w_3);
nand l(w_3,w_1,w_2);
nand e(q,q_,w_2) ;
nand f(q_,q,w_4) ;
endmodule 
