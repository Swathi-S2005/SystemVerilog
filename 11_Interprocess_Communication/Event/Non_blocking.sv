// Code your testbench here
// or browse Examples
module tb;
  event e;
  
  initial begin 
    $display("event is triggering");
    
    #10;
    ->>e;
    $display("triggered",$time);
    
  end
  
  initial begin
    #10;
    @(e);
   
    $display("event is received at @",$time);
  end
 initial begin
   #10;
    wait(e.triggered);
   $display("event is received at wait",$time);
    
 end
  
endmodule
/* output
# run -all
# event is triggering
# triggered                  10
# event is received at wait                  10
# event is received at @                  10
# exit

*/

