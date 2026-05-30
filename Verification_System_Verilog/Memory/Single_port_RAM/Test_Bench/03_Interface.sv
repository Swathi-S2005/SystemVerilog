// Code your testbench here
// or browse Examples
interface ram_inf #(parameter width = 8,p_addr = 6)(input clk);
  
  logic [width-1:0]data_in;
  logic [p_addr:0]addr;
  logic wr_en;
  logic [width-1:0]data_out;
  
  clocking drive @(posedge clk);
    default input #1step output #0;
    
    output data_in;
    output addr;
    output wr_en;
    
    input data_out;
    
  endclocking
  
  clocking moni @(negedge clk);
    default input #1step output #0;
    
    input data_in;
    input addr;
    input wr_en;
    input data_out;
    
  endclocking
  
  
  modport dut(input clk,input data_in,input addr, input wr_en, output data_out);
  modport dri(input clk,clocking drive);
  modport mon(input clk, clocking moni);
      
    
endinterface


    
    
  
