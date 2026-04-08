// Code your testbench here
// or browse Examplesmodule tb;
module tb;
  logic [3:0] a = 4'b1100;
  logic [3:0] b = 4'b11x0;  // store x in 2nd bit

  initial begin
    if(a ==? b)
      $display("match, a=%b", a==? b);
    else
      $display("not matched, a=%b", a ==? b);
  end
endmodule

