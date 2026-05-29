// Code your testbench here
// or browse Examples
module tb;
  int a=6,b=5;
  int result;
  
  function int add(int x,y);
    x=x+1;
    $display("Time=%0t, x=%0d,y=%0d",$time,x,y);
    return x+y;
   
  endfunction
  
  initial begin
    result = add(a,b);
    $display("Time=%0t, a=%0d,b=%0d,result  %0d",$time,a,b,result);
    //module a,b != function a,b
    $display("original value a=%0d",a);
  end
endmodule


//output 

/*
run -all
# Time=0, x=7,y=5
# Time=0, a=6,b=5,result  12
# original value a=6
# exit
*/

