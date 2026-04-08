module tb;
  int array[2:0][1:0][1:0];
  initial begin
    array  = '{'{{1,0},{2,3}},
               '{{4,5},{7,6}},
               '{{5,6},{7,8}}
              };
    foreach(array[i])
      
      begin
        foreach(array[i][j])
          begin
            foreach(array[i][j][k])
              
          
              $display("array[%0d][%0d][%0d]=%0d",i,j,k,array[i][j][k]);
      end
      end
    
  end
    endmodule
    
    
