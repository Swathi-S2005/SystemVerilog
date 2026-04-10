// function with and without void

class calculator;
  int a,b;
  int c;
  
  function int add(int a,int b);
   return a+b;
  endfunction
  
  function display();
    $display("display");
  endfunction
             
 function void display_void();
   $display("void display");
 endfunction
  
endclass

module tb;
  calculator cal;
   int result;
  initial begin 
    cal = new();
   
    
             
    cal.display();
    cal.display_void();
    result = cal.display();
    //result = c.display_void();
    
    result = cal.add(3,5);
    $display("sum=%d",result);
    
    
  end
endmodule

    
