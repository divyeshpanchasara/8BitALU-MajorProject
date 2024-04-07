`include "oneBitALU.v"

module fourBitALU(input [3:0]a, b, input cin, input [2:0]s, output [3:0]ALU_OUT, output ALU_COUT);
  wire [3:0]w;
  oneBitALU instance40(a[0], b[0], cin, s, ALU_OUT[0], w[1]);
  oneBitALU instance41(a[1], b[1], w[1], s, ALU_OUT[1], w[2]);
  oneBitALU instance42(a[2], b[2], w[2], s, ALU_OUT[2], w[3]);
  oneBitALU instance43(a[3], b[3], w[3], s, ALU_OUT[3], ALU_COUT);
endmodule