module gdicell(a, n, p, out);
  input a, n, p;
  output out;
  assign out = (a & n)|(~a & p);
endmodule