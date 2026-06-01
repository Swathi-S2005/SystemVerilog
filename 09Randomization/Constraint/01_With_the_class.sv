// Code your testbench here
// or browse Examples
class random;
  rand bit [7:0]a;
  rand byte b;
  rand int c;
  rand shortint d;
  rand longint e;
  
  constraint c1{ a>5; a<=15;}
  constraint c2 { b != 7;}
  constraint c3 { (c>10) && (c>20);}
  constraint c4 { d==25;}
  constraint c5 { e inside {[10:50]};}
  
  function display();
    $display("a=%0d|b=%0d|c=%0d|d=%0d|e=%0d",a,b,c,d,e);
  endfunction
  
endclass

module tb;
  random r;
  initial begin
    r = new();
    r.randomize();
    r.display();
  end
endmodule
/* output

run -all
# a=11|b=75|c=103963904|d=25|e=32
# exit

*/

                   
