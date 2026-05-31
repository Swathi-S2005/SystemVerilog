// Code your testbench here
// or browse Examples

`include "interface.sv"
`include "test.sv"



module tb #(parameter depth=64, width = 8,address =6);
  bit clk;
  
  always #5 clk=~clk;
  
  ram_inf #(.depth(depth), .width(width),.address(address))inf(clk);
  
  single_port dut(inf);

  
  test #(depth,width,address) tt;
  
  
  initial begin
    $dumpfile("ram.vcd");
    $dumpvars;
    #300;
    $finish;
    
  end
endmodule

  
    
    
  
  
  
 
