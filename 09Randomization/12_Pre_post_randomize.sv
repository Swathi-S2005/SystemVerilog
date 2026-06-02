// Code your testbench here
// or browse Examples
class random;
  rand bit [7:0]a;
  rand byte b;
  
  constraint c1 { a inside {[5:19]};}
  constraint c2 { b<128;}
  
  function void pre_randomize();
    $display("Inside pre_randomize");
    c1.constraint_mode(0);
  endfunction
  
  function void post_randomize();
    $display("inside post randomize");
    $display("a=%0d|b=%0d",a,b);
  endfunction
  
endclass

module tb;
  random r;
  initial begin
    r=new();
    r.randomize();
  end
endmodule

    
 //output 

/*

# run -all
# Inside pre_randomize
# inside post randomize
# a=12|b=74
# exit

*/

             
    
