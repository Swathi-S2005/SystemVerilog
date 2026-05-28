class monitor;
  transaction t;
  mailbox mb3;
  mailbox mb4;
  
  
  virtual dff_inf.mon vif;
  function new(mailbox mb3,mailbox mb4, virtual dff_inf.mon vif);
    this.mb3 = mb3;
    this.mb4 = mb4;
    this.vif = vif;
  endfunction
  
  
  task moni();
    begin
      repeat(20)
        begin
          
          t=new();
          #1;
          @(vif.moni)
          
          
          t.reset_n = vif.moni.reset_n;
          t.d = vif.moni.d;
          t.q = vif.moni.q;
          
          
          mb3.put(t);
          mb4.put(t);
          $display(" monitor reset=%0b",t.reset_n);
          
          #9;
          
        end
    end
    
      endtask
  endclass
  
      
          
          
          
        
