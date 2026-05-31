`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"


class environment #(parameter depth, width, address);
  
  mailbox mb1;
  mailbox mb2;
  mailbox mb3;
  event e1;
  
  real pass_per,fail_per;
  
  transaction trans;
  generator g;
  driver d;
  monitor m;
  scoreboard #(width,p_addr)s;
  
  virtual ram_inf.dri vinf1;
  virtual ram_inf.mon vinf2;
  
  function new( virtual ram_inf.dri vinf1,  virtual ram_inf.mon vinf2);
    this.vinf1 = vinf1;
    this.vinf2 = vinf2;
    
    mb1 = new();
    mb2 = new();
    mb3 = new();
    
    g = new(mb1,mb2,e1);
    d = new(mb1,vinf1,e1);
    m = new(mb3,vinf2);
    s = new(mb3);
    
  endfunction
  
  task en();
    begin
      fork
        
       g.gen();
       d.driv();
       m.moni();
       s.sb();
      join
      
      pass_per = (s.pass/s.total)*100;
      fail_per = (s.fail/s.total)*100;
      
      $display("+------------------------------------------------+");
      $display("|        TOTAL NUMBER OF TEST CASES =%2d          |",s.total);
      $display("|------------------------------------------------|");
      $display("|          PASS           |          FAIL        |");
      $display("|                         |                      |");
      $display("|          %3d            |          %3d         |",s.pass,s.fail);
      $display("|                         |                      |");
      $display("|------------------------------------------------|");
      $display("|             PASS PERCENTAGE = %0f              |",pass_per);
      $display("|             FAIL PERCENTAGE = %0f              |",fail_per);
      $display("|------------------------------------------------|");
      
      #1;
      
          
      
    end
  endtask
endclass

  
  
  
  
