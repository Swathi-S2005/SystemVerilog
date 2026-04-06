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
    
    c=a^b;
    endfunction
  function void display();
    $display("a=%d|b=%d|c=%d",a,b,c);
  endfunction
endclass

module tb;
  adder adder_1;
  adder adder_2;
  initial begin
    adder_1=new(1'b1,1'b0);
    adder_1.display();
    
    adder_2=new();
    adder_2.display();
  end
endmodule

    
