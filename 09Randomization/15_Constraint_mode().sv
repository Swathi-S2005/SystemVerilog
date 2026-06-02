// Code your testbench here
// or browse Examples
class random;
  rand bit [7:0]a;
  rand byte b;
  
  constraint c1 { soft a inside {[10:15]};}
  constraint c2 { b>5;}
  
  function display();
    $display("a=%0d|b=%0d",a,b);
  endfunction
  
endclass

module tb;
  random r;
  initial begin
    r=new();
    
    
    repeat(5)
      begin
        r.randomize() with { soft a inside {[2:9]};};
        r.display();
     end
   
    r.c2.constraint_mode(0);
    $display("constraint c2 is disabled");
    repeat(5)
      begin
        r.randomize();
        r.display();
      end
    
    
    
    
  end
endmodule

    
 //output 

/*

# run -all
# a=5|b=80
# a=2|b=33
# a=5|b=22
# a=8|b=53
# a=2|b=96
# constraint c2 is disabled
# a=12|b=-103
# a=11|b=65
# a=12|b=80
# a=10|b=108
# a=10|b=84
# exit

*/

             
    
