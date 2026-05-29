// Code your testbench here
// or browse Examples
module tb;
  int a,b;
  int result;
  
  function int add(int x,y);
    x=x+1;
    return x+y;
   
  endfunction
  
  initial begin
    result = add(.x(5),.y(6));
    
    $display("Time=%0t result=%0d",$time,result);
    
    
  end
endmodule


//output

/*

 run -all
# Time=0 result=12
# exit

*/
