// Code your testbench here
// or browse Examples
module tb;
  string array1[];
  string array2[];
  initial begin
    array1 = new[5];
    array1 = '{"porsche", "BMW" , "Ferrari", "Lambo", "Bugatti"};
    
    array2 = new[array1.size()+1](array1);
    array2[array2.size()-1] = "benz";
    
    $display("arry1=%0p",array1);
    $display("arry2=%0p",array2);
      
   
    
  end
  endmodule
  
    
