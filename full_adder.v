`timescale 1ns / 1ps
module full_adder(
 input X,
 input Y,
 input Cin,
 output A,
 output Cout
 );
 
 wire p,r,s;
 xor(p,X,Y);
 xor(A,p,Cin);
 and(r,p,Cin);
 and(s,X,Y);
 or(Cout,r,s);
endmodule
