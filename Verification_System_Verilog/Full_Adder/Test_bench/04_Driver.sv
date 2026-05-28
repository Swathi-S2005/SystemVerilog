class driver;
  
  transaction t;
  mailbox mb1;
  
  
  virtual fa_inf.dri vif;
  
  function new(mailbox mb1, virtual fa_inf.dri vif);
    this.mb1 = mb1;
    this.vif = vif;
  endfunction
  
  
  task drive();
    begin
      repeat(20)
        begin
          
         mb1.get(t);
          vif.a = t.a;
          vif.b = t.b;
          vif.cin = t.cin;
          #10;
        end
    end
  endtask
endclass

          
          
    
