// Code your testbench here
// or browse Examples
    // Code your testbench here
// or browse Examples
module tb;
  
  int array[5][2]= '{{1,2},{3,4},{5,5},{6,7},{5,8}};
  

  initial begin

    foreach(array[i])
     
        foreach(array[i][j])
      begin
   
     
        $display("array[%0d][%0d]=%d",i,j,array[i][j]);
      end
      
  end
  
endmodule

