`timescale 1ns / 1ps
// main pid code which uses all other modules
module pid(in,clk,out,reset);
input [15:0] in;
input clk,reset;
output [15:0] out;
wire [15:0] out_temp;
wire [15:0] u_prev;
wire [15:0] previous_errorx;
wire [15:0] e_prev_2;
wire [15:0] previous_error;
wire [15:0] current_error;
wire [15:0] e_current;
wire [15:0] complement1;
wire [15:0] previous_input;
wire cout1;
wire cout2;
wire cout3;
wire cout4;
wire [15:0] multiply1,multiply2,multiply3;
wire [15:0] tadd2,tadd3; 
complement comp1(previous_input,complement1);
adder_16bit add1(16'b0000000011001000,complement1,1'b0,current_error,cout1);  
multiplier r(current_error,16'b0000000000000011,multiply1); //kp+kd
multiplier s(previous_error,16'b1111111111111110,multiply2);  //kd
multiplier t(e_prev_2,16'b0000000000000010,multiply3);  //ki
adder_16bit add2(multiply1,multiply2,1'b0,tadd2,cout2);
adder_16bit add3(tadd2,multiply3,1'b0,tadd3,cout3);
adder_16bit add4(u_prev,tadd3,1'b0,out_temp,cout4);
multiplexer m1(current_error,reset,e_current);
multiplexer m2(out_temp,reset,out);
multiplexer m3(previous_error,reset,previous_errorx);
register16bit reg1(e_prev_2,previous_errorx,clk);
register16bit reg2(previous_error,e_current,clk);
register16bit reg3(u_prev,out,clk);
register16bit reg4(previous_input,in,clk);
endmodule