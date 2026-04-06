module tb;
  bit [3:0][2:0]data;
  initial begin
    data=16'hface;
    for(int i=0;i<$size(data);i++)
      begin
        $display("data[%0d]=%0h",i,data[i]);
    
     
        for(int j=0;j<$size(data[i]);j++)
      begin
        $display("data[%0d][%0d]=%0h",i,j,data[i][j]);
      end
      end
  end
endmodule

  
