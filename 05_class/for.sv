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
  adder adder[4];
  
  initial begin
    for(int i=0; i< $size(adder);i++)
      begin
        
      
                          
        adder[0] =new(1,0);
        adder[1] = new();
        adder[2] = new(0,0);
        adder[3] = adder[0];
        
        adder[i].display();
      end
   
  end
endmodule

    
