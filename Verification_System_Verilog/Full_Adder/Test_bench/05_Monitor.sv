class monitor;
  transaction t;
  mailbox mb3;
  
  
  virtual fa_inf.mon vif;
  function new(mailbox mb3, virtual fa_inf.mon vif);
    this.mb3 = mb3;
    this.vif = vif;
  endfunction
  
  
  task moni();
    begin
      repeat(20)
        begin
          
          t=new();
          #1;
          
          t.a = vif.a;
          t.b = vif.b;
          t.cin = vif.cin;
          t.sum = vif.sum;
          t.carry = vif.carry;
          
          mb3.put(t);
          #9;
          
        end
    end
    
      endtask
  endclass
  
      
          
          
          
        
