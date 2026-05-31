interface dram_inf #(parameter depth=64, width=8, address=6)(input clk);
  logic [address-1:0]addr_a;
  logic [address-1:0]addr_b;
  logic [width-1:0]data_in_a;
  logic [width-1:0]data_in_b;
  logic wr_en_a;
  logic wr_en_b;
  
  logic [width-1:0]data_out_a;
  logic [width-1:0]data_out_b;
  
  
  clocking drive @(posedge clk);
    default input #1step output #0;
    
    output addr_a;
    output addr_b;
    output data_in_a;
    output data_in_b;
    output wr_en_a;
    output wr_en_b;
    
    input data_out_a;
    input data_out_b;
    
  endclocking
  
  clocking moni @(posedge clk);
    default input #1step output #0;
    
    input addr_a;
    input addr_b;
    input data_in_a;
    input data_in_b;
    input wr_en_a;
    input wr_en_b;
    
    input data_out_a;
    input data_out_b;
    
  endclocking
  
  modport dut(input addr_a,input addr_b,input data_in_a, input data_in_b, input wr_en_a, input wr_en_b, output data_out_a, output data_out_b);
  
  modport dri(input clk, clocking drive);
  modport mon(input clk, clocking moni);
      
endinterface
      
