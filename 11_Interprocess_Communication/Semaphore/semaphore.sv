module tb;
  semaphore sem = new(2);
  
  initial begin
    $display("the first block");
    
    $display("the cars are at the shop");
    sem.get(1);
    $display("Time=%0t|the car1 is delivered from the shop",$time);
    
    #10;
    sem.put(2);
    $display("Time=%0t|the cars are returned to the shop",$time);
    
  end
  
  initial begin
    $display("Time=%0t|the second block",$time);
    
    sem.get(1);
    $display("Time=%0t|the car2 is delivered from the shop",$time);
    
    #20;
    sem.get(2);
    $display("Time=%0t|the cars are delecivered from the shop",$time);
    
  end
endmodule


/* output

run -all
# the first block
# the cars are at the shop
# Time=0|the car1 is delivered from the shop
# Time=0|the second block
# Time=0|the car2 is delivered from the shop
# Time=10|the cars are returned to the shop
# Time=20|the cars are delecivered from the shop
# exit

*/

