// Code your testbench here
// or browse Examples
class adder;
  bit a;
  bit b;
  bit c;
  function new(bit w=0,bit y = 0);
    if(w==0 && y==0)
      begin
      a=0;b=0;
      end
    else if(w==1 && y==1)
      begin
      a=1;b=1;
      end
    else
      begin
      a=0;b=1;
      end
    c = a^b;
   endfunction
  function display();
    $display("sum=%b",c);
  endfunction
  
  
endclass

class sum;
  task addition;
    adder adder_1;
    adder adder_2;
    
    adder_1 = new();
    adder_2 = new(1,0);
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

    
