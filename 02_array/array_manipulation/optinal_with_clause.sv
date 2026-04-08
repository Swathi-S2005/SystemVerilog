module tb;
  int array[7] = '{1,8,2,7,7,0,5};
  int res[$];
  initial  begin
    
   
    $display("min =%0p",array.min());
    
    
    
    
    $display("max =%0p",array.max());
    
  
   res = array.unique();
    
    $display("unique = %0p",res);  
    
   res =  array.unique_index();
    
    $display("unique_index =%0p",res);
   
  end
endmodule
