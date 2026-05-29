class transaction #(parameter N=10, WIDTH = $clog2(N));
  rand bit reset_n;
  bit [WIDTH-1:0]count;
  
  constraint c1{ reset_n dist {0:=1, 1:=15};}
  
endclass

 
