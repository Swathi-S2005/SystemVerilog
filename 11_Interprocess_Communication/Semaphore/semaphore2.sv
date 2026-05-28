class worker;
  semaphore sem;
  
  function new(semaphore sem);
    this.sem = sem;
  endfunction
  
  task work(string name);
    begin
      sem.get(1);
      $display("Time=%0t|%0s the worker 1 is working",$time,name);
      
      sem.put(2);
      $display("Time=%0t|%0s nobody is  working",$time,name);
      
      sem.try_get(2);
      $display("Time=%0t|%0s both are working",$time,name);
      
    end
    
  endtask
endclass

    



module tb;
  semaphore sem = new(2);
  worker w1;
  worker w2;
  
  initial begin
    w1 = new(sem);
    w2 = new(sem);
    fork
      w1.work("thread1");
      w2.work("thread2");
    join
    
    
  end
endmodule


/*output 


 run -all
# Time=0|thread1 the worker 1 is working
# Time=0|thread1 nobody is  working
# Time=0|thread1 both are working
# Time=0|thread2 the worker 1 is working
# Time=0|thread2 nobody is  working
# Time=0|thread2 both are working
# exit

*/

