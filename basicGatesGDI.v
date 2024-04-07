`include "gdiCell.v"

module andGdi(a, b, out);
  input a, b;
  output out;
  gdicell instance1(a, b, 0, out);
endmodule

module orGdi(a, b, out);
  input a, b;
  output out;
  gdicell instance2(a, 1, b, out);
endmodule

module invGdi(a, out);
  input a;
  output out;
  gdicell instance3(a, 0, 1, out);
endmodule

module nandGdi(a, b, out);
  input a, b;
  output out;
  wire w;
  andGdi instance4(a, b, w);
  invGdi instance5(w, out);
endmodule

module norGdi(a, b, out);
  input a, b;
  output out;
  wire w;
  orGdi instance6(a, b, w);
  invGdi instance7(w, out);
endmodule

module xorGdi(a, b, out);
  input a, b;
  output out;
  wire notb;
  invGdi instance8(b, notb);
  gdicell instance9(a, notb, b, out);
endmodule

module xnorGdi(a, b, out);
  input a, b;
  output out;
  wire notb;
  invGdi instance10(b, notb);
  gdicell instance11(a, b, notb, out);
endmodule