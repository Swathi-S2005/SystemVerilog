// Code your testbench here
// or browse Examples
module tb;
  int a,b;
  
  function int add(int x,y);
    x=x+1;
    return x+y;
   
  endfunction
  
  initial begin
    
    $display("Time=%0t result=%0d",$time,add(5,6));
    
    
  end
endmodule


//output

/*

 run -all
# Time=0 result=12
# exit

*/
