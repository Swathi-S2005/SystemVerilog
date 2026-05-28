interface dff_inf(input clk);
  logic d;
  logic q;
  logic reset_n;
  
  clocking  drive @(posedge clk);
    default input #1step output #0;
    input q;
    output d;
    output reset_n;
  endclocking
  
  
  clocking moni @(posedge clk);
    default input #1step output #0;
    input reset_n;
    input d;
    input q;
  endclocking
  
    
    
  
  modport dut(input clk,input d, input reset_n,output q);
  modport dri(input clk,clocking drive);
    modport mon(input clk,clocking moni);
  
  
  
  
endinterface

