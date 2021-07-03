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
        $dumpfile("alu.vcd");
        $dumpvars(0,DUT);
        $monitor($time," in=%16b,clk=%b,out=%16b,reset=%b",in,clk,out,reset);
        #13 reset=1;
        #4 reset=0;
        #3 in=16'b0000000000000000; 
        #10 in=16'b0000000000111100;
        #10 in=16'b0000000001101110;
        #10 in=16'b0000000010100000;
        #10 in=16'b0000000011010010;
        #10 in=16'b0000000011110000;
        #10 in=16'b0000000011011100;
        #10 in=16'b0000000011000011;
        #10 in=16'b0000000010101010;
        #10 in=16'b0000000010011011;
        #10 in=16'b0000000010100000;
        #10 in=16'b0000000010100101;
        #10 in=16'b0000000010100101;
        
        #10 $finish;
    end
endmodule