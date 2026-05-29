// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples

`include "environment.sv"
`include "interface.sv"


module tb #(parameter N=10, WIDTH = $clog2(N));
  bit clk;
  
  always #5 clk=~clk;
  
  count_inf #(.N(N),.WIDTH(WIDTH))inf(clk);
  
  counter dut(inf);
 // count_inf inf();
  
  environment e;
  
  
  initial begin
    $dumpfile("counter.vcd");
         $dumpvars;
    inf.reset_n = 0;          
    e = new(inf.dri,inf.mon,N,WIDTH);
    e.en();
    #300;
    $finish;
    
  end
endmodule

  
    
    
  
  
  
 
