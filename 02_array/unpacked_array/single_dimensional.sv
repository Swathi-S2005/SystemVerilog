module tb;
  int array[3:0];
  initial begin
    array  = '{1,1,1,1};
    foreach(array[i])
      begin
        $display("array[%0d]=%0d",i,array[i]);
      end
  end
    endmodule
    
    
