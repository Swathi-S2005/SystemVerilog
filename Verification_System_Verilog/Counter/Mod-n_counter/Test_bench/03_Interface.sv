//or browse Examples
interface count_inf #(parameter N=10, WIDTH = $clog2(N))(input logic clk);
  logic reset_n;
  logic [WIDTH-1:0]count;
  
  clocking drive @(posedge clk);
    default input #1step output #0;
    
    input count;
    output reset_n;
    
  endclocking
  
  clocking moni @(negedge clk);
    default input #1step output #0;
    
    input reset_n;
    input count;
    
  endclocking
  
  
  modport dut(input clk, input reset_n, output count);
  modport dri(input clk, clocking drive);
  modport mon(input clk, clocking moni);
      
    
  
  
  
endinterface
