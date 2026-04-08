module tb;
  int array[5] = '{1,2,3,4,5};
  initial  begin
    $display("sum =%0d",array.sum());
    $display("product =%0d",array.product());
    $display("and =%0h",array.and());  
    $display("or =%0h",array.or());
    $display("xor =%0h",array.xor());
  end
endmodule
