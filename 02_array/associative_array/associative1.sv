// Code your testbench here
// or browse Examples
module tb;
  int array1[string];
  string array2[int];
  initial begin
    array2 ='{ 1:"porsche",
             5:"axi"};
    array1 = '{"porsche" :1,
              "axi":5};
    
   
    
    
    
    
    $display("arry1=%0p",array1);
    $display("arry2=%0p",array2);
      
   
    
  end
  endmodule
  
    
