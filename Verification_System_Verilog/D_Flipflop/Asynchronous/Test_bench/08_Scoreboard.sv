class scoreboard;
  transaction t1;
  transaction t2;
  
  mailbox mb4;
  mailbox mb5;
  int pass,fail;
  
  
  function new(mailbox mb4, mailbox mb5);
    this.mb4= mb4;
    this.mb5 = mb5;
  endfunction
  
  task sb();
    begin
       $display("===========================================================================");
      $display("                      VERIFICATION D FLIP FLOP IN SV                        ");
      $display("===========================================================================");
  
      
      repeat(20)begin
        t1=new();
        t2=new();
        mb4.get(t1);
        mb5.get(t2);
        $display("reset_n=%0b|d=%0b",t1.reset_n,t1.d);
        $display("actual output, q=%0b",t1.q);
        $display("expected output, q=%0b", t2.q);
        
        
        if(t1.q==t2.q )
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

        
        
        
