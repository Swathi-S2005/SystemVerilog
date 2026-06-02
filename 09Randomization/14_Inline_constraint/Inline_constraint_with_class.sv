// Code your testbench here
// or browse Examples
class random;
  rand bit [7:0]a;
  rand byte b;
  
  constraint c1 { a<10;}
  constraint c2 { a>5;}
  
  function display();
    $display("a=%0d|b=%0d",a,b);
  endfunction
  
endclass

module tb;
  random r;
  initial begin
    r=new();
    // it just add extra logic with the constraint not overriding the previous constraint
    
    if(r.randomize() with {a==7;})
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
# a=7|b=-54
# exit

*/

             
    
