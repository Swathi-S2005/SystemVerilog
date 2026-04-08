module tb;
  int array[7] = '{1,8,2,7,3,0,5};
  initial  begin
    
      array.reverse();
    $display("reverse =%0p",array);
    
    
    
    array.sort();
    $display("sort =%0p",array);
    
  
    array.rsort();
    
    $display("rsort=%0p",array);  
    
    array.shuffle();
    
    $display("shuffle =%0p",array);
   
  end
endmodule
