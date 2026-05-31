`include "environment.sv"
program test();
  
  environment e;
  
  initial 
    begin
      
      e = new(inf.dri,inf,mon);
      e.en();
      
    end
  
