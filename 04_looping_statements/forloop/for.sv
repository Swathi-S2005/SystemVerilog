// Code your testbench here
// or browse Examples
module tb;
  
  string array[5] = '{"apple","orange","banana","guava","lemon"};
  initial begin
   
    for(int i=0;i<5;i++)
      begin
      $display("array[%0d]=%s",i,array[i]);
      for(int j=0;j<array[i].len();j++)
        
      begin
        $display("array[%0d][%0d]=%c",i,j,array[i][j]);
  end
      end
   
  end
  
endmodule

