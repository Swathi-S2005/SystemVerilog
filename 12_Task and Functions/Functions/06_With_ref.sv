// Code your testbench here
// or browse Examples
module tb;
  int result1,result2;
  int a,b;
  
  
  //we use automatic to separate memory for each function call
  function automatic int add_with_ref( ref int a,b);
     int temp;
    
    temp=a;
    a=b;
    b=temp;
    
    return a+b;
  endfunction
  function int add_without_ref(int a,b);
    int temp;
    
    temp =a;
    a=b;
    b=temp;
    
    return a+b;
  endfunction
  
  
  
  
  initial begin
    a=10;
    b=6;
     result1 = add_without_ref(a,b);

    $display("WITHOUT REF");
    $display("a=%0d b=%0d result1=%0d",a,b,result1);

    result2 = add_with_ref(a,b);

    $display("WITH REF");
    $display("a=%0d b=%0d result2=%0d",a,b,result2);
    
  end
endmodule


//output

/*

  
run -all
# WITHOUT REF
# a=10 b=6 result1=16
# WITH REF
# a=6 b=10 result2=16
# exit

*/
