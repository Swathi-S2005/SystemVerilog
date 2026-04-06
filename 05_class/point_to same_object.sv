// Code your testbench here
// or browse Examples
class adder;
  bit a;
 
endclass

module tb;
 adder ad1;
  adder ad2;
  initial begin
    ad1=new();
  ad1.a = 1;
    
    $display("ad1=%0d",ad1.a);
    
    ad2 = ad1;
    $display("ad2=%0d",ad2.a);
    
    ad2.a=0;
    $display("ad1=%0d",ad1.a);
    
  end
endmodule

    
