    // Code your testbench here
// or browse Examples
module tb;
  
  string array[5]= '{"apple","orange","banana","guava","mango"};
  

  initial begin

    foreach(array[i])
      begin
        $display("array[%0d]=%s",i,array[i]);
        foreach(array[i][j])
      begin
           
        
        $display("array[%0d][%0d]=%c",i,j,array[i][j]);
      end
      end
  end
  
endmodule

