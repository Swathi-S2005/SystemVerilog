class transaction #(parameter width=8, p_addr=2);
  
  rand bit[width-1:0] data_in;
  rand bit[p_addr-1:0] addr;
  rand bit wr_en;
  
  bit[width-1:0] data_out;
  constraint c1{wr_en dist {0:=5,1:=10};}
endclass


