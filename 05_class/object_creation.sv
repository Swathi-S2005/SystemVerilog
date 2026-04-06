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
    
  ad1 = new();
    
  if(ad1==null)
    $display("null");
     
  else
    $display("pointing to an object");
               
               
    
  
    $display("a=%0d",ad1.a);
  end
endmodule

    
