class parent;
  rand bit[7:0]a;
  rand int b;
  rand byte c;
  
  constraint c1 { a==37;}
  constraint c2 { b inside {[10:15]};}
  constraint c3 { c inside {4,5,[8:17],21};}
  
  function display();
    $display("parent class a=%0d|b=%0d|c=%0d",a,b,c);
    
  endfunction
  
endclass

class child extends parent;
  rand shortint e;
  
  constraint c4 { e inside {[0:100]};}
  constraint c1 { a != 37;}
  constraint c2 { b inside {[16:18]};}
  
  function display();
    $display("child class a=%0d|b=%0d|c=%0d|e=%0d",a,b,c,e);
  endfunction
  
endclass
                 
module tb;
  parent p;
  child c;
  
  initial begin
    p=new();
    c=new();
    $display("randomization with parent class");
    repeat(3)
      begin
       p.randomize();
       p.display();
      end
    $display("randomization with child class");
    repeat(3)
      begin
       c.randomize();
       c.display();
      end
    
    
  end
endmodule
                 
  
 //output 

/*
run -all
# randomization with parent class
# parent class a=37|b=10|c=17
# parent class a=37|b=11|c=15
# parent class a=37|b=11|c=17
# randomization with child class
# child class a=221|b=17|c=8|e=64
# child class a=65|b=16|c=16|e=36
# child class a=44|b=16|c=13|e=60
# exit

*/

  
  
  
    
  
