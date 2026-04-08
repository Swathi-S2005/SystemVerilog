module tb;
  int array[2:0][3:0];
  initial begin
    array  = '{'{1,2,3,4},
               '{4,5,7,6},
               '{5,6,7,8}
              };
    foreach(array[i])
      
      begin
        foreach(array[i][j])
          
          $display("array[%0d][%0d]=%0d",i,j,array[i][j]);
      end
  end
    endmodule
    
    
