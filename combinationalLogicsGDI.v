`include "basicGatesGDI.v"

module halfAdder(a, b, sum, carry);
  input a, b;
  output sum, carry;
  xorGdi instance12(a, b, sum);
  andGdi instance13(a, b, carry);
endmodule

module halfSub(a, b, diff, borr);
  input a, b;
  output diff, borr;
  wire w;
  invGdi instance14(a, w);
  xorGdi instance15(a, b, diff);
  andGdi instance16(w, b, borr);
endmodule

module fullAdder(a, b, cin, sum, carry);
  input a, b, cin;
  output sum, carry;
  wire w1, w2, w3;
  halfAdder instance24(a, b, w1, w2);
  halfAdder instance25(cin, w1, sum, w3);
  orGdi instance26(w2, w3, carry);
endmodule

module fullSub(a, b, bin, diff, borr);
  input a, b, bin;
  output diff, borr;
  wire w1, w2, w3;
  halfSub instance27(a, b, w1, w2);
  halfSub instance28(bin, w1, diff, w3);
  orGdi instance29(w2, w3, borr);
endmodule

module mux2to1(i0, i1, s, out);
  input i0, i1, s;
  output out;
  gdicell instance17(s, i1, i0, out);
endmodule

module mux4to1(input [3:0]i, input [1:0]s, output out);
  wire w1, w2;
  mux2to1 instance18(i[0], i[1], s[0], w1);
  mux2to1 instance19(i[2], i[3], s[0], w2);
  mux2to1 instance20(w1, w2, s[1], out);
endmodule

module mux8to1(input [7:0]i, input [2:0]s, output out);
  wire w1, w2;
  mux4to1 instance21(i[3:0], s[1:0], w1);
  mux4to1 instance22(i[7:4], s[1:0], w2);
  mux2to1 instance23(w1, w2, s[2], out);
endmodule