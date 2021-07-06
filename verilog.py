
from os import write
from os import getcwd
print(getcwd())
n=16
x=open("multiplier.v","w")
x.write("`timescale 1ns / 1ps\nmodule multiplier(m1,m2,out);\n")  
x.write('''input[15:0] m1; 
input[15:0] m2; 
output[15:0] out; 
wire [31:0]M;
''')
for i in range(n):
    for j in range(n):
        x.write("wire m1m2_"+str(i)+str(j)+";\n")

x.write("wire[15:0] p"+str(0)+";\n")
for i in range(1,n):
    x.write("wire[15:0] sum"+str(i)+";\n")
    x.write("wire c"+str(i)+";\n")
    x.write("wire[15:0] p"+str(i)+";\n")
for i in range(n):
    for j in range(n):
            x.write("and(m1m2_"+str(i)+str(j)+",m1["+str(i)+"],m2["+str(j)+"]);\n")
x.write("buf(M[0],m1m2_00);\nassign p0={1'b0,m1m2_150,m1m2_140,m1m2_130,m1m2_120,m1m2_110,m1m2_100,m1m2_90,m1m2_80,m1m2_70,m1m2_60,m1m2_50,m1m2_40,m1m2_30,m1m2_20,m1m2_10};\n")

for i in range(1,n):
    x.write("assign p"+str(i)+"={")
    for j in range(n-1,-1,-1):
          x.write("m1m2_"+str(j)+str(i)) 
          if j==0:
              x.write("};\n")
          else:
              x.write(",")
x.write("adder_16bit add0(p0,p1,1'b0,sum1,c1);\nbuf(M[1],sum1[0]);\n")

for i in range(2,n):
       x.write("adder_16bit add"+str(i)+"({c"+str(i-1)+",sum"+str(i-1)+"[15:1]},p"+str(i)+",1'b0,sum"+str(i)+",c"+str(i)+");\n"+"buf(M["+str(i)+"],sum"+str(i)+"[0]);\n")

x.write("assign out={sum15[0],M[14:0]};\n")
x.write("endmodule")
x.close
print("completed")