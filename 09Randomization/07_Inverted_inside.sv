class random;
  rand bit[7:0]a;
  rand byte b;
  
  constraint c1 { !(a inside { 1,5,[6:8],11});}
  constraint c2 { !(b inside {[10:15]});}
  
  function display();
    $display("a=%0d|b=%0d",a,b);
  endfunction
  
endclass

module tb;
  random r;
  initial begin 
    r=new();
    repeat(5)
      begin
       r.randomize();
       r.display();
      end
    
  end
endmodule

  //output 
/*
run -all
# a=18|b=80
# a=246|b=-101
# a=34|b=22
# a=76|b=53
# a=222|b=96
# exit

*/

