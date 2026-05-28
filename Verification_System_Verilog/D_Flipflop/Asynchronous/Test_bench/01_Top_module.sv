// Code your testbench here
// or browse Examples
`include "interface.sv"
`include "environment.sv"



module tb;
  bit clk;
  
  always #5 clk=~clk;
  
  dff_inf in(clk);
  
  d_ff dut(in);
  
  environment e;
  
  initial begin
    e = new(in.dri,in.mon);
    e.en();
    #300;
    $finish;
    
  end
endmodule

  
    
    
  
  
  
 
