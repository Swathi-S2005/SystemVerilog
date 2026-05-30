
class scoreboard#(parameter WIDTH);
  
  transaction t1;
  
  mailbox mb3;
  
  int pass, fail;
  int total;
  bit [7:0] expected_count,exp_p;
  
  function new(mailbox mb3);
    this.mb3 = mb3;
    
    expected_count=0;
    
  endfunction
  
  
  task sb();
    begin
      
      
       $display("===========================================================================");
      $display("                      VERIFICATION MOD n COUNTER IN SV                        ");
      $display("===========================================================================");
  
         
         
      repeat(50)begin
            t1=new();
        
            mb3.get(t1);
           
           
          expected_count=exp_p;
            
            if(!t1.reset_n)
              exp_p = 0;
           
            else
              exp_p =  {~exp_p[0],exp_p[WIDTH-1:1]};
            
            // exp_p = {~exp_p[0], exp_p[$bits(exp_p)-1:1]};
        
        $display("reset_n=%0b",t1.reset_n);
        $display("actual output, count=%0b",t1.count);
        $display("expected output,count=%0b", expected_count);
        
        
            if(t1.count==expected_count )
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
            total++;
            
         $display("=====================================================");
       
      end
    end
  endtask
endclass

