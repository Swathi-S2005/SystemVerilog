
class scoreboard;
  
  transaction t1;
  
  mailbox mb3;
 
  virtual count_inf inf;
  
  
  int N;
  int WIDTH;
  
  int pass, fail;
  int total;
  int expected_count,exp_p;
  
  function new(mailbox mb3,int N,int WIDTH);
    this.mb3 = mb3;
     this.N=N;
    this.WIDTH = WIDTH;
    
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
           
            
        else if(exp_p == N-1)
              exp_p = 0;
            else
               exp_p =  exp_p+1;
            
              
        
            $display("reset_n=%0b",t1.reset_n);
            $display("actual output, count=%0d",t1.count);
            $display("expected output,count=%0d", expected_count);
        
        
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

