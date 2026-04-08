// Code your testbench here
// or browse Examples
module tb;
  int a= 7;
  initial begin
    if(a inside {[0:3],4,5,[7:10],12})
      $display("a is within the set of values");
    else
      $display("a is not in the set of values");
  end
endmodule

