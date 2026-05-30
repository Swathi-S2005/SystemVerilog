class driver;
  
  transaction t;
  
  mailbox mb1;
  
  event e1;
  virtual ram_inf.dri vinf;
  
  function new(mailbox mb1, virtual ram_inf.dri vinf,event e1);
    
    this.mb1 = mb1;
    this.vinf=vinf;
    this.e1 = e1;
    
  endfunction
  
  task driv();
    begin
      repeat(20)
        begin
          t=new();
          mb1.get(t);
          @(vinf.drive)
          
             vinf.drive.data_in <= t.data_in;
             vinf.drive.addr <= t.addr;
             vinf.drive.wr_en <= t.wr_en;
          $display("driver data_in=%0d,addr=%0d,wr_en=%0b",t.data_in,t.addr,t.wr_en);
          
          #10;
          ->e1;
          
        end
    end
  endtask
endclass

