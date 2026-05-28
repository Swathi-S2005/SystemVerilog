class generator;
  
  
  mailbox mb1;
  mailbox mb2;
  
  transaction t;
  
  function new(mailbox mb1, mailbox mb2);
    this.mb1 = mb1;
    this.mb2 = mb2;
  endfunction
  
  
  task gen();
    begin
      repeat(20)
        begin
        t=new();
      t.randomize();
      mb1.put(t);
      mb2.put(t);
      #10;
        end
    end
  endtask
  
endclass

      
      
      
