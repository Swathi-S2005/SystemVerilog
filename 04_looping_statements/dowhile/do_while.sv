// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
    // Code your testbench here
// or browse Examples
module tb;
 int count=0;
  initial begin
    do begin
      
      $display("Time=%0t|count=%0d",$time,count);
      #10 count++;
      
    end
    while (count!=0);
    
    
      end    
  initial begin
     #100 $finish;
  end
 
  
endmodule

