`timescale 1ns / 1ps
module adder_16bit(inp_1,inp_2,cin,res,cout);
input [15:0] inp_1,inp_2;
input cin;
output [15:0] res;
output cout;
wire [15:0] w,out;

adder a(.in_1(inp_1[0]), .in_2(inp_2[0]), .car_in(cin),.car_out(w[1]),.sum(out[0]));
adder b(.in_1(inp_1[1]), .in_2(inp_2[1]), .car_in(w[1]),.car_out(w[2]),.sum(out[1]));
adder c(.in_1(inp_1[2]), .in_2(inp_2[2]), .car_in(w[2]),.car_out(w[3]),.sum(out[2]));
adder d(.in_1(inp_1[3]), .in_2(inp_2[3]), .car_in(w[3]),.car_out(w[4]),.sum(out[3]));
adder e(.in_1(inp_1[4]), .in_2(inp_2[4]), .car_in(w[4]),.car_out(w[5]),.sum(out[4]));
adder f(.in_1(inp_1[5]), .in_2(inp_2[5]), .car_in(w[5]),.car_out(w[6]),.sum(out[5]));
adder g(.in_1(inp_1[6]), .in_2(inp_2[6]), .car_in(w[6]),.car_out(w[7]),.sum(out[6]));
adder h(.in_1(inp_1[7]), .in_2(inp_2[7]), .car_in(w[7]),.car_out(w[8]),.sum(out[7]));
adder i(.in_1(inp_1[8]), .in_2(inp_2[8]), .car_in(w[8]),.car_out(w[9]),.sum(out[8]));
adder j(.in_1(inp_1[9]), .in_2(inp_2[9]), .car_in(w[9]),.car_out(w[10]),.sum(out[9]));
adder k(.in_1(inp_1[10]), .in_2(inp_2[10]), .car_in(w[10]),.car_out(w[11]),.sum(out[10]));
adder l(.in_1(inp_1[11]), .in_2(inp_2[11]), .car_in(w[11]),.car_out(w[12]),.sum(out[11]));
adder m(.in_1(inp_1[12]), .in_2(inp_2[12]), .car_in(w[12]),.car_out(w[13]),.sum(out[12]));
adder n(.in_1(inp_1[13]), .in_2(inp_2[13]), .car_in(w[13]),.car_out(w[14]),.sum(out[13]));
adder o(.in_1(inp_1[14]), .in_2(inp_2[14]), .car_in(w[14]),.car_out(w[15]),.sum(out[14]));
adder p(.in_1(inp_1[15]), .in_2(inp_2[15]), .car_in(w[15]),.car_out(cout),.sum(out[15]));

assign res=out;
endmodule