`include "combinationalLogicsGDI.v"

module oneBitALU(a, b, cin, s, aluOut, aluCout);
  input a, b, cin;
  input [2:0]s;
  output aluOut, aluCout;
  wire [9:0]w;
  andGdi instance30(a, 0, w[0]);
  fullAdder instance31(a, b, cin, w[1], w[8]);
  andGdi instance32(a, b, w[2]);
  orGdi instance33(a, b, w[3]);
  fullSub instance34(a, b, cin, w[4], w[9]);
  xorGdi instance35(a, b, w[5]);
  xnorGdi instance36(a, b, w[6]);
  invGdi instance37(a, w[7]);
  mux2to1 instance38(w[8], w[9], s[2], aluCout);
  mux8to1 instance39(w[7:0], s[2:0], aluOut);
endmodule
