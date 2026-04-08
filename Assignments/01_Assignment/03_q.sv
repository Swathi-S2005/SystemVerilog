module tb;
  logic [7:0]data[3:0];
  initial begin
    data = '{8'hA1, 8'hB2, 8'hC3, 8'hD4};
    foreach(data[i])
    

      $display("data[%0d]=%0h",i,data[i]);
    
  end
endmodule

