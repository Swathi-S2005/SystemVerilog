// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
    // Code your testbench here
// or browse Examples
module tb;
  bit clk;
  always #10 clk= ~clk;
  initial begin
    bit [3:0]num= $random;
    $display("the num=%d",num);
    
    repeat(num)@(posedge clk);
      
      begin
  
        $display("Time=%0t|num=%d",$time,num);
       #100 $finish;
      end    
  end
  
endmodule

