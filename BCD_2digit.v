 //full adder block
module fa(
    input in0,
    input in1,
    input cin,
    output out,
    output cout
    );
assign out = in0 ^ in1 ^ cin;
assign cout = ((in0 ^ in1) & cin) | (in0 & in1);

endmodule
// ripple carry adder block
module rca(
    input [3:0] in0,
    input [3:0] in1,
	 input cin ,
    output [3:0] out,
    output cout
    );
wire c1, c2, c3;
	fa a0(in0[0], in1[0], cin, out[0], c1);
	fa a1(in0[1], in1[1], c1, out[1], c2);
	fa a2(in0[2], in1[2], c2, out[2], c3);
	fa a3(in0[3], in1[3], c3, out[3], cout);
endmodule
// BCD adder one digit 

module bcd_adder(
    input [3:0] a,
    input [3:0] b,
	 input cin,
    output [3:0] out,
    output cout );
	 wire c1,w1,w2,c2;
	 wire [3:0] z;
	 wire [3:0] six;
	 rca x(  a,  b , cin,  z , c1);
	 assign w1 = z[3] & z[2] ;
	 assign w2 = z[3] & z[1];
	 assign cout = ( c1 | w1| w2) ; 
	  assign six [3] = 1'b0; 
	  assign six [2] = cout; 
	  assign six[1] = cout ; 
	  assign six[0] = 1'b0;
	 rca y(  z, six , 0 , out , c2 );
endmodule
//BCD adder 2digit 

module BCD_2digit( input [7:0] A,
    input [7:0] B,
    input Cin,
    output Cout,
    output [7:0] sum
    );
wire w1 ;
bcd_adder x( A[3:0] , B[3:0] , Cin , sum[3:0] , w1 ) ; 
bcd_adder y ( A[7:4] , B[7:4] , w1 , sum [7:4] , Cout);

endmodule
