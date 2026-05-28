class reference;
  transaction t;
  mailbox mb2;
  mailbox mb4;
  
  int total;
  
  function new(mailbox mb2, mailbox mb4);
    this.mb2 = mb2;
    this.mb4 = mb4;
  endfunction
  
  task add();
    
    begin
      repeat(20)
        begin
          mb2.get(t);
          
      t.sum = t.a ^ t.b ^ t.cin;
      t.carry = (t.a & t.b) | (t.b & t.cin)| (t.cin & t.a);
          total++;
          
          mb4.put(t);
          #10;
        end
    end
  endtask
  
endclass

          
