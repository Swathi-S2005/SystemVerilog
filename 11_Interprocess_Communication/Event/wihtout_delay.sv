// Code your testbench here
// or browse Examples
module tb;
  //bit done = 1;
  event e;
  initial begin
   //#1; 
  -> e;
  end
  

  initial begin
  // @ cannot detect triggering
  
    @(e.triggered);
    $display("A: @done triggered at %0t", $time);
  end

  initial begin
    wait(e.triggered);
    $display("B: wait(done) triggered at %0t", $time);
  end

endmodule



/* output

# run -all
# B: wait(done) triggered at 0
# exit
*/

