module tb;
  event a;
  event b;
  
  initial begin
    fork
      #50 ->a;
      #30 ->b;
      #20 b=a;
    join
    
  end
   initial begin
     @(a);
     $display("a is received",$time);
   end
  initial begin
    @(b);
    $display("b is received",$time);
    
             end
  
endmodule

  /*output
  
  
  run -all
# [30] event a is done
# exit

*/

 
