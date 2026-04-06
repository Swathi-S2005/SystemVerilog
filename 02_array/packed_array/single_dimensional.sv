module tb;
  bit [7:0]data;
  initial begin
    data=4'hf;
    for(int i=0;i<$size(data);i++)
      begin
        $display("data[%0d]=%0h",i,data);
      end
  end
endmodule

  
