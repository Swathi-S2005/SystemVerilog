class driver;
  
  transaction t;
  mailbox mb1;
  
  event e1;
  
  virtual dff_inf.dri vif;
  
  function new(mailbox mb1, virtual dff_inf.dri vif,event e1);
    this.mb1 = mb1;
    this.vif = vif;
    this.e1 = e1;
    
  endfunction
  
  
  task drive();
    begin
      repeat(20)
        begin
          
         mb1.get(t);
          
          @(vif.drive)
          
          vif.drive.d <= t.d;
          vif.drive.reset_n <= t.reset_n;
          
          #10;
          ->e1;
          $display("driver reset=%0b",t.reset_n);
          
        end
    end
  endtask
endclass

          
          
    
