class half_adder;
  bit a,b,sum,carry;
  function new(bit a, bit b);
   this.a=a;
    this.b=b;
    sum = a^b;
    carry = a&b;
  endfunction
  
  function void display();
    $display("sum=%b|carry=%b",sum,carry);
    endfunction
endclass

class full_adder;
  bit a,b,cin,sum,carry;
 
    half_adder ha1;
    half_adder ha2;
    

  
    function new(bit a, bit b, bit cin);
    this.a=a;
    this.b=b;
    this.cin=cin;
      ha1 = new(a,b);
      ha2 = new(ha1.sum,cin);
      
      sum = ha1.sum^cin;
      carry = ha1.carry|ha2.carry;
      
    endfunction
    function void display();
      $display("sum=%b|carry=%b",sum,carry);
    endfunction
      
  
endclass
  
    

module tb;
  half_adder ha1;
   half_adder ha2;
  full_adder fa1;
  initial begin
    ha1 = new(1,0);
    ha1.display();
    
    fa1 = new(1,1,1);
    fa1.display();
    
  end
endmodule

    
    
