// Code your design here
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
        
        
       count++;

        if(count==3)
         
          continue;
          
        if(count==8)
          break;
       
         $display("i=%0d|count=%0d",i,count);
           
         
      end
      end
  
endmodule
