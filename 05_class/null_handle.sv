// Code your testbench here
// or browse Examples
class adder;
  bit a;
 
endclass

module tb;
 adder ad1;
  initial begin
  if(ad1 == null)
    $display("null");
  else
    $display("a=%0d",ad1.a);
  end
endmodule

    /* output 
    
    # run -all
# null
# exit

*/

