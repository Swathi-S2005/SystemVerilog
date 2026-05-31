class scoreboard #(parameter depth,width, address);
  
  
  transaction t;
  
  mailbox mb3;
  int total;
  int pass, fail;
  
  reg [width-1:0] ram [depth-1:0];
  bit[width-1:0] expected_output,exp_p;
  
  
  
  function new(mailbox mb3);
    this.mb3 = mb3;
  endfunction
  
  task sb();
    begin
      
     $display("===========================================================================");
     $display("                      VERIFICATION DUAL PORT RAM IN SV                        ");
     $display("===========================================================================");
  
      repeat(20)
        begin
          
          mb3.get(t);
          expected_output_a = exp_a;
          expected_output_b = exp_b;
          
          $display("-----------------------------PORT A-----------------------------------");
          //write operation
          
          if(t.addr_a != t.addr_b)
            begin
              if(t.wr_en_a)
                begin
                  ram[t.addr_a] = t.data_in_a;
                  $display("+|-------------Data A Written  Successfully ---------------|+");
                
                end
         
            else
               begin
                 exp_a = ram[t.addr_a];  
                 $display("+|-------------Data A Read FROM ADDR_A Successfully ---------------|+");
                end
            
          
          $display("-------------------------------------PORT B -------------------------------");
          
          
              if(t.wr_en_b)
                begin
                  ram[t.addr_b] = t.data_in_b;
                  $display("+|-------------Data  B Written Successfully -----------------------|+");
                end
         
            else
               begin
                 exp_b = ram[t.addr_b];  
                 $display("+|-------------Data  B Read Successfully ----------------------------|+");
                end
            end
              
      else
        begin
          if(t.wr_en_a)
                begin
                  ram[t.addr_a] = t.data_in_a;
                  $display("+|-------------Data A Written  Successfully ---------------|+");
                
                end
         
            else
               begin
                 exp_a = ram[t.addr_a];  
                 $display("+|-------------Data A Read FROM ADDR_A Successfully ---------------|+");
                end
        end
          
          
            
          
           
          if(t.data_out_a == expected_output_a)
            begin
              pass++;
              
               $display("+---------------------------------------------------------+");
               $display("|                                                         |");
              $display("|                       DATA-A   PASS                           |");
               $display("|                                                         |");
               $display("+---------------------------------------------------------+");
              
              
               $display("+---------------------------------------------------------+");
               $display("|    Actual Output           x        Expected Output     |");
               $display("|                            x                            |");
              $display("|         %3d                x              %3d           | ",t.data_out_a,expected_output_a);
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
              $display("|                         DATA-A FAIL                           |");
               $display("|                                                         |");
               $display("+---------------------------------------------------------+");
              
              
               $display("+---------------------------------------------------------+");
               $display("|    Actual Output           x        Expected Output     |");
               $display("|                            x                            |");
               $display("|         %3d                x              %3d           | ",t.data_out_b,expected_output_b);
               $display("|                            x                            |");            
               $display("+---------------------------------------------------------+");
               $display("");
               $display("---------------------xxxxxxxxxxxxxxxxxxxxx-------------------------");

               $display("");
               $display("");
              
            end
          
              
               if(t.data_out_b==expected_b)
                 begin
                   pass++;
                   $display("+---------------------------------------------------------+");
                   $display("|                                                         |");
                   $display("|                       DATA-B PASS                       |");
                   $display("|                                                         |");
                   $display("+---------------------------------------------------------+");
                 
                 
                   $display("+---------------------------------------------------------+");
                   $display("|    Actual Output           x        Expected Output     |");
                   $display("|                            x                            |");
                   $display("|         %3d                x              %3d           | ",t.data_out_b,expected_b);
                   $display("|                            x                            |");            
                   $display("+---------------------------------------------------------+");
                   $display("");
                   $display("---------------------xxxxxxxxxxxxxxxxxxxxx-------------------------");
                   $display("---------------------xxxxxxxxxxxxxxxxxxxxx-------------------------");

                  $display("");
          
               end
                         
               else begin
                 fail++;
                 
                 $display("+---------------------------------------------------------+");
                 $display("|                                                         |");
                 $display("|                       DATA-B FAIL                       |");
                 $display("|                                                         |");
                 $display("+---------------------------------------------------------+");
                 
                 $display("+---------------------------------------------------------+");
                 $display("|      Actual Output         x       Expected Output      |");
                 $display("|                            x                            |");
                 $display("|            %3d             x              %3d           |",t.data_out_b,expected_b);
                 $display("|                            x                            |");            
                 $display("+---------------------------------------------------------+");
             
                 $display("");
                 $display("---------------------xxxxxxxxxxxxxxxxxxxxx-------------------------");
                 $display("---------------------xxxxxxxxxxxxxxxxxxxxx-------------------------");
                 $display("");
               end
            end
          total++;
          
        end
    end
  endtask
endclass

          
          
              
              
            
          
            
    
    
  
