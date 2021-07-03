module adder(in_1, in_2, car_in,car_out,sum);
input in_1, in_2, car_in;
output car_out,sum;
wire w1,w2,w3;
and (w1,in_1, in_2);
and (w2,in_1, car_in);
and (w3,car_in, in_2);
or  (car_out,w1, w2,w3);
xor (sum,in_1, in_2, car_in);
endmodule