// Code your testbench here
// or browse Examples
class adder;
  bit a;
  bit b;
  bit c;
  function new(bit a=0, bit b=0);
    this.a =  a;
    this.b = b;
    this.c = a^b;
   endfunction
   /*(function new(int x=0,int y = 0);
   a=x;
    b=y;
    
    c=a^b;
   endfunction)*/
/*
(function new();
   
    
    c=a^b;
   endfunction)*/
  function display();
    $display("sum=%d",c);
  endfunction
  
  
endclass

class sum;
  task addition;
    adder adder_1;
    adder adder_2;
    
    adder_1 = new(1,0);
    adder_2 = new(0,0);
    adder_1.display();
    adder_2.display();
     endtask;
   
  
    
   
 
endclass

  
      
module tb;
   sum sum_1;
  
  
  initial begin
    sum_1= new();
    sum_1.addition();
    
  
    
    
  end
endmodule

    
