`include "environment.sv"
`include "interface.sv"


module tb #(parameter width = 8,p_addr =6);
  bit clk;
  
  always #5 clk=~clk;
  
  ram_inf #(.width(width),.p_addr(p_addr))inf(clk);
  
  single_port dut(inf);

  
  environment #(width,p_addr) e;
  
  
  initial begin
    $dumpfile("ram.vcd");
    $dumpvars;
    e = new(inf.dri,inf.mon);
    e.en();
    #300;
    $finish;
    
  end
endmodule

  
    
    
  
  
  
 
