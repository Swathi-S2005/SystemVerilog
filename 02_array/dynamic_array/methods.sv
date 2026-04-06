// Code your testbench here
// or browse Examples
module tb;
  string array[];
  initial begin
    array = new[5];
    array = '{"porsche", "BMW" , "Ferrari", "Lambo", "Bugatti"};
    foreach(array[i])
      begin
      $display("arry[%0d]=%s",i,array[i]);
      end
    $display("arry=%0p",array.size());
    array.delete();
    $display("arry=%0p",array);
      
    
  end
  endmodule
  
    
