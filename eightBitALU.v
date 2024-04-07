//`include "oneBitALU.v"

//module eightBitALU(input [7:0]a, b, input cin, input [2:0]s, output [7:0]ALU_OUT, output ALU_COUT);
//  wire [7:0]w;
//  oneBitALU instance40(a[0], b[0], cin, s, ALU_OUT[0], w[1]);
//  oneBitALU instance41(a[1], b[1], w[1], s, ALU_OUT[1], w[2]);
//  oneBitALU instance42(a[2], b[2], w[2], s, ALU_OUT[2], w[3]);
//  oneBitALU instance43(a[3], b[3], w[3], s, ALU_OUT[3], w[4]);
//  oneBitALU instance44(a[4], b[4], w[4], s, ALU_OUT[4], w[5]);
//  oneBitALU instance45(a[5], b[5], w[5], s, ALU_OUT[5], w[5]);
//  oneBitALU instance46(a[5], b[6], w[6], s, ALU_OUT[6], w[7]);
//  oneBitALU instance47(a[7], b[7], w[7], s, ALU_OUT[7], ALU_COUT);
//endmodule
  
`include "fourBitALU.v"

module eightBitALU(input [7:0]a, b, input cin, input [2:0]s, output [7:0]ALU_OUT, output ALU_COUT);
  wire w1;
  fourBitALU instance44(a[3:0], b[3:0], cin, s[2:0], ALU_OUT[3:0], w1);
  fourBitALU instance45(a[7:4], b[7:4], w1, s[2:0], ALU_OUT[7:4], ALU_COUT);
endmodule
  
  
  
  
  
  
  