`timescale 1ns / 1ps
module testbench;
reg [15:0] in;reg clk,reset;wire [15:0] out;
pid DUT(in,clk,out,reset);
initial 
    begin
        in = 16'b0000000010100101;
        clk = 1'b0; 
    end
always
#5 clk=~clk;
initial
    begin
        
        $monitor($time," in=%16b,clk=%b,out=%16b,reset=%b",in,clk,out,reset);
        #13 reset=1;
        #4 reset=0;
        #3 in=16'b0000000000000000; 
        #10 in=16'b000000000011100;
        #10 in=16'b0000000011001000;
        #10 in=16'b0000000010100000;
        #10 in=16'b0000000010010010;
        #10 in=16'b0000000010110000;
        #10 in=16'b0000000010011100;
        #10 in=16'b0000000010000111;
        #10 in=16'b0000000010101110;
        #10 in=16'b0000000010011011;
        #10 in=16'b0000000010100000;
        #10 in=16'b0000000010100101;
        #10 in=16'b0000000010100101;
        #10 in=16'b0000000010100101;
        #10 in=16'b0000000010100111;
        #10 in=16'b0000000010110101;
        #10 in=16'b0000000010101101;
        #10 in=16'b0000000010100101;
        #10 in=16'b0000000010100110;
          
        #8 $finish;
    end
endmodule