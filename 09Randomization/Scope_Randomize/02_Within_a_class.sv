class random;
  int a;
  rand bit[5:0]b;
  //constraint c1{}
  constraint c2{b>3;b<9;}
  task display();
    int c;
    begin
      if(randomize(a))
        $display(" randomize a(not rand or randc)=%0d",a);
      if(std :: randomize(a) with { a<6;})
        $display("std :: randomize a(not rand or randc) =%0d",a);
      if(std :: randomize(b) with {b<5;})
        $display(" std::randomize with rand  =%0d",b);
      if(std :: randomize(c) with {c<15;})
        $display("std :: randomize within the constraint=%0d",c);
      
      
      //if(randomize(this))
        //$display("this randomization a=%0d|b=%0d|c=%0d",a,b,c);
      
      if(std :: randomize(this))
        $display("this std :: randomize a=%0d|b=%0d|c=%0d",a,b,c);
    end
  endtask
endclass


module tb;
  random r;
  initial begin
    
  
  $display("========================================================================");
  $display("==========================SCOPE RANDOMIZE :: ===========================");
  $display("========================================================================");
  
    r=new();
    r.display();

  end
  
endmodule
    
    
//output

/*

run -all
# ========================================================================
# ==========================SCOPE RANDOMIZE :: ===========================
# ========================================================================
# testbench.sv(9): randomize() failed due to conflicts between the following constraints:
# 	testbench.sv(5): c2 { (b > 3); }
# Where:
# 	b = 6'h00 /* non-random 
# ** Note: (vsim-7130) Enabling enhanced debug (-solvefaildebug=2) may generate a more descriptive constraint contradiction report and -solvefaildebug testcase.
# ** Note: (vsim-7106) Use vsim option '-solvefailtestcase[=filename]' to generate a simplified testcase that will reproduce the failure.
# ** Warning: (vsim-7084) No solutions exist which satisfy the specified constraints; randomize() failed.
# 
#    Time: 0 ns  Iteration: 0  Process: /tb/#INITIAL#31 File: testbench.sv Line: 9
# std :: randomize a(not rand or randc) =-2100064779
#  std::randomize with rand  =4
# std :: randomize within the constraint=-1025241787
# this std :: randomize a=-2100064779|b=5|c=-1025241787
# exit


*/
    
    
    
    
    
    
