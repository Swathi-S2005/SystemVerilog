class transaction #(parameter depth=6, width=8, address = 6);
  rand bit [address-1:0]addr_a;
  rand bit [address-1:0]addr_b;
  rand bit [width-1:0] data_in_a;
  rand bit [width-1:0] data_in_b;
  rand bit wr_en_a;
  rand bit wr_en_b;
  
  bit data_out_a;
  bit data_out_b;
  
  constraint c1 {addr_a != addr_b;}
  
endclass

  
