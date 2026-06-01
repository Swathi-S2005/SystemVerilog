class random;
  rand bit[7:0]a;
  rand byte b;
  
  constraint c1 { a inside { 1,5,[6:8],11};}
  constraint c2 { b inside {[10:15]};}
  
  function display();
    $display("a=%0d|b=%0d",a,b);
  endfunction
  
endclass

module tb;
  random r;
  initial begin 
    r=new();
    r.randomize();
    r.display();
  end
endmodule

  //output 

/*
# run -all
# a=8|b=12
# exit

*/

