// Code your testbench here
// or browse Examples
class random;
  rand bit [7:0]a;
  rand byte b;
  
  constraint c1 { a>10;}
  constraint c2 { a<5;}
  
  function display();
    $display("a=%0d|b=%0d",a,b);
  endfunction
  
endclass

module tb;
  random r;
  initial begin
    r=new();
    if(r.randomize())
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

# run -all
# testbench.sv(20): randomize() failed due to conflicts between the following constraints:
# 	testbench.sv(7): c1 { (a > 10); }
# 	testbench.sv(8): c2 { (a < 5); }
# Given:
# 	bit [7:0] a
# ** Note: (vsim-7130) Enabling enhanced debug (-solvefaildebug=2) may generate a more descriptive constraint contradiction report and -solvefaildebug testcase.
# ** Note: (vsim-7106) Use vsim option '-solvefailtestcase[=filename]' to generate a simplified testcase that will reproduce the failure.
# ** Warning: (vsim-7084) No solutions exist which satisfy the specified constraints; randomize() failed.
# 
#    Time: 0 ns  Iteration: 0  Process: /tb/#INITIAL#18 File: testbench.sv Line: 20
# failed
# exit

*/

             
    
