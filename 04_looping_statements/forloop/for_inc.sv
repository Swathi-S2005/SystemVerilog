// Code your testbench here
// or browse Examples
module tb;
  
 int count;

  initial begin
   
    for(int i=0;i<10;i++)
      begin
        count++;
        $display("count[%0d]=%d",i,count);
      end
  end
  
endmodule

