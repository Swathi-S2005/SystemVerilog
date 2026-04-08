/*  
// integer to real
// implicit conversion


module tb;
    int a=10;
    real b;
    initial begin
      b=a;
      $display("b=%f",b);
    end
  endmodule
*/

// explicit conversion

module tb;
  int a=10;
  real b;
  initial begin
    b = real'(a);
    $display("b=%f",b);
  end
endmodule



