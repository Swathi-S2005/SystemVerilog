class transaction #(parameter WIDTH = 8);
  rand bit reset_n;
  bit [WIDTH-1:0]count;
  
  constraint c1{ reset_n dist {0:=1, 1:=15};}
  
endclass

 
