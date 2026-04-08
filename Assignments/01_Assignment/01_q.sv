module tb;
  int arr[5] = '{10,20,30,40,50};
  initial begin
    for(int i=0;i<5;i++)
      begin
        
        $display("arr[%0d]=%0d",i,arr[i]);
      end
  end
endmodule

