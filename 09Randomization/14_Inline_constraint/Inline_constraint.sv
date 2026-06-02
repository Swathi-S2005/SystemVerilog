// Code your testbench here
// or browse Examples
class random;
  rand bit [7:0]a;
  rand byte b;
  
  function display();
    $display("a=%0d|b=%0d",a,b);
  endfunction
  
endclass

module tb;
  random r;
  initial begin
    r=new();
    if(r.randomize() with {a==3;})
      begin
      
      $display("successful");
      r.display();
     end
    else
      $display("failed");
    
    
    
  end
endmodule

    
 //output 
/*
run -all
# successful
# a=3|b=-54
# exit

*/

             
    
