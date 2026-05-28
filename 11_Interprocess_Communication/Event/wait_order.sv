module tb;
  event e1;
  event e2;
  event e3;
  
  
  initial begin
    fork 
    begin
      #2;
      
      -> e1;
      $display($time,"event3 is triggered");
    end
    begin
      #5
      -> e3;
      $display($time,"event1 is triggered");
    end
    
      begin
      #10
      -> e2;
        $display($time,"event2 is triggered");
    end
    join
  end

  initial begin
    wait_order (e1,e3,e2)
    $display("inorder");
    else
      $display("out of order");
  end
endmodule



/* output 


run -all
#                    2event3 is triggered
#                    5event1 is triggered
#                   10event2 is triggered
# inorder


*/

