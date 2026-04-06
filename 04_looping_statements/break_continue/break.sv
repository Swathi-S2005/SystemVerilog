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
        $display("count=%0d",count);
        count++;
        if(i==7)
          break;
      end
  end
endmodule
