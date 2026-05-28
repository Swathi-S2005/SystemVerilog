`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "reference.sv"
`include "scoreboard.sv"


class environment;
  mailbox mb1;
  mailbox mb2;
  mailbox mb3;
  mailbox mb4;
  mailbox mb5;
  
  real pass_per,fail_per;
  transaction trans;
  generator g;
  driver d;
  monitor m;
  reference r;
  scoreboard s;
  
  event e1;
  
  virtual dff_inf.dri vinf1;
  virtual dff_inf.mon vinf2;
  
  function new( virtual dff_inf.dri vinf1,  virtual dff_inf.mon vinf2);
    this.vinf1 =  vinf1;
    this.vinf2 =  vinf2;
    
    
    mb1=new();
    mb2=new();
    mb3=new();
    mb4=new();
    mb5 = new();
    
    
    
  
    g= new(mb1,mb2,e1);
    d=new(mb1,vinf1,e1);
    m=new(mb3,mb4,vinf2);
    r=new(mb3,mb5);
    s=new(mb4,mb5);
    
    
    
    
    
  endfunction
  
  
  task en();
    fork
      g.gen();
      d.drive();
      m.moni();
      r.add();
      s.sb();
    join
    
    pass_per = (s.pass /r.total)*100;
    fail_per = (s.fail / r.total)*100;
    $display("===========================================================================");
    $display("PASS PERCENTAGE =%0f",pass_per);
    $display("FAIL PERCENTAGE = %0f",fail_per);
    $display("TOTAL NUMBER OF TEST CASES=%0d",r.total);
    $display("NUMBER OF PASS=%0d",s.pass);
    $display("NUMBER OF FAIL=%0d",s.fail);
    $display("===========================================================================");
    #1;
    $finish;
    
    
  endtask
  
endclass

      
      
  
  
  
  
    
  
  
  
