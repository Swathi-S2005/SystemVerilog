class transaction;
  rand bit reset_n;
 
  
  rand bit d;
 

  bit q;
  
  constraint c1{ reset_n dist {[0:1]:/20};}
  
endclass



