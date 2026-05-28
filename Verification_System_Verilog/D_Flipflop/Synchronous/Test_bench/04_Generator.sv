class generator;
  
  
  mailbox mb1;
  mailbox mb2;
  
  transaction t;
  event e1;
  
  function new(mailbox mb1, mailbox mb2,event e1);
    this.mb1 = mb1;
    this.mb2 = mb2;
    this.e1= e1;
    
  endfunction
  
  
  task gen();
    begin
      repeat(20)
        begin
        t=new();
      t.randomize();
      mb1.put(t);
      mb2.put(t);
          wait(e1);
          $display("gen reset =%0b", t.reset_n);
          
        end
    end
  endtask
  
endclass

      
      
      
