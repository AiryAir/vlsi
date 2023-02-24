module dataFlowMux(
 input [7:0] i,
 input [2:0] s,
 output Y
 );
 wire [7:0]y;
 assign y[0] = ~s[2]&~s[1]&~s[0]&i[0];
 assign y[1] = ~s[2]&~s[1]&s[0]&i[1];
 assign y[2] = ~s[2]&s[1]&~s[0]&i[2];
 assign y[3] = ~s[2]&s[1]&s[0]&i[3]; 
 assign y[4] = s[2]&~s[1]&~s[0]&i[4];
 assign y[5] = s[2]&~s[1]&s[0]&i[5];
 assign y[6] = s[2]&s[1]&~s[0]&i[6];
 assign y[7] = s[2]&s[1]&s[0]&i[7];
 
 assign Y = y[0]|y[1]|y[2]|y[3]|y[4]|y[5]|y[6]|y[7];
endmodule
