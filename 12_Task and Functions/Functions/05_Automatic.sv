// Code your testbench here
// or browse Examples
module tb;
  int result1,result2;
  
  function int factorial_static(int var1);
    if(var1 >=2)
      result1 = factorial_static(var1-1)*var1;
    else
      result1 =1;
    return result1;
  endfunction
  
  
  function automatic int factorial_automatic(int var2);
    if(var2 >=2)
      result2 = factorial_automatic(var2-1)*var2;
    else
      result2 =1;
    return result2;
  endfunction
  
  
  initial begin
    result1 = factorial_static(3);
    result2 = factorial_automatic(3);
    
    $display("Time=%0t|result1=%0d| result2=%0d",$time,result1,result2);
    
    
  end
endmodule


//output

/*

  
# run -all
# Time=0|result1=1| result2=6
# exit

*/
