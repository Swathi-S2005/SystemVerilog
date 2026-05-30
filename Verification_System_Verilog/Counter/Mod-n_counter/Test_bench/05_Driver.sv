class driver;
  
  transaction t;
  event e1;
  
  mailbox mb1;
  virtual count_inf.dri vinf;
  
  function new(mailbox mb1,  virtual count_inf.dri vinf,event e1);
    this.mb1 = mb1;
    this.vinf = vinf;
    this.e1 = e1;
    
  endfunction
   
  
  
  task drive();
    begin
      repeat(70) begin
      t=new();
      
      mb1.get(t);
      
      @(posedge vinf.drive);
      
      vinf.drive.reset_n <= t.reset_n;
      
      //#10;
      
      $display("driver    Time=%0t |reset_n =%0b",$time,t.reset_n);
      ->e1;
    end
    end
  endtask
  
endclass

    
      
      
    
