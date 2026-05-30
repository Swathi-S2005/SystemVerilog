// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples

`include "environment.sv"
`include "interface.sv"


module tb #(parameter WIDTH = 8);
  bit clk;
  
  always #5 clk=~clk;
  
  count_inf #(.WIDTH(WIDTH))inf(clk);
  
  counter dut(inf);
 // count_inf inf();
  
  environment #(WIDTH) e;
  
  
  initial begin
    $dumpfile("counter.vcd");
         $dumpvars;
    inf.reset_n = 0;          
    e = new(inf.dri,inf.mon);
    e.en();
    #300;
    $finish;
    
  end
endmodule

  
    
    
  
  
  
 
