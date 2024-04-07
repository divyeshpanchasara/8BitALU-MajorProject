// Code your testbench here
// or browse Examples
module tb;
	reg a,b,cin;
  reg [2:0]s;
	wire aluOut, aluCout;
  	oneBitALU uut(a,b,cin,s,aluOut, aluCout);
	initial begin
  	$dumpfile("dump.vcd");
  	$dumpvars(1);
	  a = 1'b0;
      b = 1'b0;
      cin = 1'b0;
      s = 3'b000;
      #10 s = 3'b001;
      #10 s = 3'b010;
      #10 s = 3'b011;
      #10 s = 3'b100;
      #10 s = 3'b101;
      #10 s = 3'b110;
      #10 s = 3'b111;
      #10;
	$finish();
	end        
endmodule