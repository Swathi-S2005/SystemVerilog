
//without super keyword


class parent;
  bit a,b,c;
  
  function new();
    this.a= a;
    this.b = b;
    this.c= c;
  endfunction
  
  function display();
    $display("a=%0b|b=%0b|c=%0b",a,b,c);
  endfunction
  
endclass

class child extends parent;
  bit d;
  
  function new();
    
    this.d = d;
    
  endfunction
  
  function display();
    
    $display("d=%0b",d);
  endfunction
  
  
endclass

module tb;
  child c1;
  initial begin
    c1 = new();
    c1.a=1;
    c1.b=1;
    c1.c=0;
    c1.d=1;
    c1.display();
  end
endmodule

  /* outputs
  
   run -all
# d=1
# exit

*/

