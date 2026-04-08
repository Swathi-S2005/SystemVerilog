module tb;
  bit [2:0] array[2:0][1:0];
  initial begin
     array = '{
              '{3'd1, 3'd2},
              '{3'd3, 3'd4},
              '{3'd5, 3'd6}
            };
    foreach(array[i])
      
      begin
        foreach(array[i][j])
          begin
           
              
          
            $display("array[%0d][%0d]=%0d",i,j,array[i][j]);
      end
      end
    
  end
    endmodule
    
    
