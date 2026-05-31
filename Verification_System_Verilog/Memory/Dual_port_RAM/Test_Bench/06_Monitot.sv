class monitor;
  
  transaction t;
  
  mailbox mb3;
  
  virtual ram_inf.mon vinf;
  
  function new(mailbox mb3, virtual ram_inf.mon vinf);
    this.mb3 = mb3;
    this.vinf = vinf;
    
  endfunction
  
  task moni();
    begin
    repeat(20)
      begin
        t=new();
        
        @(vinf.moni)
        
        
        t.data_in = vinf.moni.data_in;
        t.addr = vinf.moni.addr;
        t.wr_en = vinf.moni.wr_en;
        t.data_out = vinf.moni.data_out;
        
        $display("monitor data_in=%0d,addr=%0d,wr_en=%0b,data_out=%0d",t.data_in,t.addr,t.wr_en,t.data_out);
        $display("interface data_in=%0d,addr=%0d,wr_en=%0b data_out=%0d",vinf.moni.data_in,vinf.moni.addr,vinf.moni.wr_en,vinf.moni.data_out);
          
          
       
        mb3.put(t);
        
      end
    end
  endtask
endclass

