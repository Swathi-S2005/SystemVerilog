// Code your testbench here
// or browse Examples
`include "interface.sv"
`include "environment.sv"



module tb;
  fa_inf in();
  
  full_adder dut(in);
  
  environment e;
  
  initial begin
    e = new(in.dri,in.mon);
    e.en();
    #300;
  end
endmodule

  
    
    
  
  
  
 
