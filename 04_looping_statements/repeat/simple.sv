// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
    // Code your testbench here
// or browse Examples
module tb;
  
  initial begin

    repeat(10)
      
      begin
   #10
        $display("Time=%0t|repeat it 10 times",$time);
       
      end    
  end
  
endmodule

