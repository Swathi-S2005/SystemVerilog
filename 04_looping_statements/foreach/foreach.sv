// Code your testbench here
// or browse Examples
module tb;
  
  string array[5] = '{"apple","orange","banana","guava","lemon"};
  initial begin
    foreach(array[i])
      $display("Time=%0t|array[%0d]=%s",$time,i,array[i]);
  end
endmodule

