class scoreboard #(parameter width, p_addr);
  
  
  transaction t;
  
  mailbox mb3;
  int total;
  int pass, fail;
  
  reg [7:0] ram [63:0];
  bit[7:0] expected_output,exp_p;
  
  
  
  function new(mailbox mb3);
    this.mb3 = mb3;
  endfunction
  
  task sb();
    begin
      
     $display("===========================================================================");
      $display("                      VERIFICATION SINGLE PORT RAM IN SV                        ");
     $display("===========================================================================");
  
      repeat(20)
        begin
          
           mb3.get(t);
           expected_output = exp_p;
         
          if(t.wr_en)
            begin
              ram[t.addr] = t.data_in;
            $display("+|-------------Data Written Successfully ---------------|+");
            end
         
          else
            begin
            exp_p = ram[t.addr];  
            $display("+|-------------Data Read Successfully ---------------|+");
            end
           
          if(t.data_out == expected_output)
            begin
              pass++;
              
               $display("+---------------------------------------------------------+");
               $display("|                                                         |");
               $display("|                          PASS                           |");
               $display("|                                                         |");
               $display("+---------------------------------------------------------+");
              
              
               $display("+---------------------------------------------------------+");
               $display("|    Actual Output           x        Expected Output     |");
               $display("|                            x                            |");
               $display("|         %3d                x              %3d           | ",t.data_out,expected_output);
               $display("|                            x                            |");            
               $display("+---------------------------------------------------------+");
               $display("");
               $display("---------------------xxxxxxxxxxxxxxxxxxxxx-------------------------");

               $display("");
            end
          
          else
            begin
              fail++;
              
              
               $display("+---------------------------------------------------------+");
               $display("|                                                         |");
              $display("|                          FAIL                            |");
               $display("|                                                         |");
               $display("+---------------------------------------------------------+");
              
              
               $display("+---------------------------------------------------------+");
               $display("|    Actual Output           x        Expected Output     |");
               $display("|                            x                            |");
               $display("|         %3d                x              %3d           | ",t.data_out,expected_output);
               $display("|                            x                            |");            
               $display("+---------------------------------------------------------+");
               $display("");
               $display("---------------------xxxxxxxxxxxxxxxxxxxxx-------------------------");

               $display("");
            end
          total++;
          
        end
    end
  endtask
endclass

          
          
              
              
            
          
            
    
    
  
