`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"


class environment #(parameter WIDTH) ;
  mailbox mb1;
  mailbox mb2;
  mailbox mb3;
  
 
  
  real pass_per,fail_per;
  transaction trans;
  generator g;
  driver d;
  monitor m;
  scoreboard #(WIDTH)s;
  
  event e1;
  
  virtual count_inf.dri vinf1;
  virtual count_inf.mon vinf2;
  
  
  function new( virtual count_inf.dri vinf1,  virtual count_inf.mon vinf2);
    this.vinf1 =  vinf1;
    this.vinf2 =  vinf2;
    
    
    

    mb1=new();
    mb2=new();
    mb3=new();
   
    
    
    
  
    g= new(mb1,e1);
    d=new(mb1,vinf1,e1);
    m=new(mb3,vinf2);
    s=new(mb3);
    
    
    
    
    
  endfunction
  
  
  task en();
    fork
      g.gen();
      d.drive();
      m.moni();
      s.sb();
    join
    
    pass_per = (s.pass /s.total)*100;
    fail_per = (s.fail / s.total)*100;
    $display("===========================================================================");
    $display("PASS PERCENTAGE =%0f",pass_per);
    $display("FAIL PERCENTAGE = %0f",fail_per);
    $display("TOTAL NUMBER OF TEST CASES=%0d",s.total);
    $display("NUMBER OF PASS=%0d",s.pass);
    $display("NUMBER OF FAIL=%0d",s.fail);
    $display("===========================================================================");
    #1;
    $finish;
    
    
  endtask
  
endclass

      
      
  
  
  
  
    
  
  
  
