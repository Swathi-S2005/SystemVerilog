class scoreboard;
  transaction t1;
  transaction t2;
  
  mailbox mb4;
  mailbox mb3;
  int pass,fail;
  
  
  function new(mailbox mb3, mailbox mb4);
    this.mb3= mb3;
    this.mb4 = mb4;
  endfunction
  
  task sb();
    begin
       $display("===========================================================================");
      $display("                      VERIFICATION FULL ADDER IN SV                        ");
      $display("===========================================================================");
  
      
      repeat(20)begin
        t1=new();
        t2=new();
        mb3.get(t1);
        mb4.get(t2);
        $display("a=%0b|b=%0b|cin=%0b",t1.a,t1.b,t1.cin);
        $display("actual output, sum=%0b|carry = %0b",t1.sum,t1.carry);
        $display("expected output, sum=%0b|carry =%0b", t2.sum,t2.carry);
        
        
        if(t1.sum==t2.sum && t1.carry  == t2.carry)
          begin
            $display("+--------+");
          $display("|  PASS  |");
          $display("+--------+");
            pass++;
            
          end
        else
          begin
            $display("+--------+");
            $display("|  FAIL |");
          $display("+--------+");
            fail++;
            
          end
        
        
        $display("=====================================================");
        #10;
      end
    end
  endtask
endclass

        
        
        
