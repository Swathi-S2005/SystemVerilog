module tb;
  bit [15:0]data;
  initial begin
    data = 16'b1010_1010_1111_0000;
    

    $display("data=%0b",data);
    
  end
endmodule

