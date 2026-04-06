module tb;
  logic [3:0][2:0][3:0]data;
  initial begin
    data[0]=12'habc;
    data[1]=12'h1a2b;
    for(int i=0;i<$size(data);i++)
      begin
        $display("data[%0d]=%0h",i,data[i]);
    
     
        for(int j=0;j<$size(data[i]);j++)
      begin
        for (int k=0;k<$size(data[i][j]);k++)
          
          $display("data[%0d][%0d][%0d]=%0h",i,j,k,data[i][j][k]);
      end
      end
    $display("data=%0p",data);
  end
endmodule

  
