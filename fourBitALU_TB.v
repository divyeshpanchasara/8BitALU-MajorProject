// Code your testbench here
// or browse Examples
module tb;
  reg [3:0]a, b;
  reg [2:0]s;
  reg cin;
  wire [3:0]ALU_OUT;
  wire ALU_COUT;
  ALU_Test uut(a, b, cin, s, ALU_OUT, ALU_COUT);
  initial begin
    $dumpfile("dump.vcd");
  	$dumpvars(1);
    a = 4'b1000;
    b = 4'b1000;
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
       