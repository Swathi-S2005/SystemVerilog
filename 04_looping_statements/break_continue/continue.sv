// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
    // Code your testbench here
// or browse Examples
module tb;
 int count=0;
  initial begin
    for (int i=0;i<10;i++)
      begin
         $display("i=%0d|count=%0d",i,count);
            count++; 

        if(count==7)
          begin
           count++; 
          continue;
          end
      end
  end
endmodule
