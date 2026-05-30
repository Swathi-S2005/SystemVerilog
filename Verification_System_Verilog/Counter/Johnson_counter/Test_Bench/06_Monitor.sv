class monitor;
  
  transaction t;
  
  mailbox mb3;
  
  virtual count_inf.mon vinf;
  
  function new(mailbox mb3, virtual count_inf.mon vinf);
    this.mb3 = mb3;
    this.vinf = vinf;
    
  endfunction
  
  
  task moni();
    begin
      repeat(70)begin
      
      t=new();
         
           
        @( vinf.moni);
          #1;
        
      t.reset_n = vinf.moni.reset_n;
      t.count = vinf.moni.count;
        
        
      mb3.put(t);
       // $display("monitor  Time=%0t |reset_n =%0b| count =%0d",$time,t.reset_n, t.count);
        
        //$display("interface  Time=%0t |reset_n =%0b| count =%0d",$time,t.reset_n,vinf.moni.count);
        
      
        //#9;
    end
    end
  endtask
  
endclass

    
   
