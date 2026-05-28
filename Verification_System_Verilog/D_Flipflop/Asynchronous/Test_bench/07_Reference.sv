class reference;
  transaction t;
  mailbox mb3;
  mailbox mb5;
  
  int total;
  
  function new(mailbox mb3, mailbox mb5);
    this.mb3 = mb3;
    this.mb5 = mb5;
  endfunction
  
  task add();
    
    begin
      repeat(20)
        begin
         
          mb3.get(t);
          if(!t.reset_n)
            t.q  = 0;
          else
            t.q  = t.d;
          
      
          total++;
          
          mb5.put(t);
          #10;
        end
    end
  endtask
  
endclass

          
