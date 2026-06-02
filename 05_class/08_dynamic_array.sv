/*

Write a class that:

Declares a dynamic array of strings (car names)
Initially empty
Perform operations:
Allocate size for 3 cars → add "BMW", "Audi", "Tesla"
Increase size to 5 → add "Hyundai", "Tata"
Delete the array completely
Print array at each step

*/

class showroom;
  string data1;
  
  function void display();
    $display("data1 = %0p",data1);
  endfunction
  
  
             
endclass

module tb;
  showroom received[];
  
  
  initial begin
  //create an array
    received = new[3];
    for( int i=0;i<3;i++)
      begin
        received[i]=new() ;
      end
    received[0].data1 = "BMW";
    received[1].data1 = "Audi";
    received[2].data1 = "Tesla";
    
    
    for(int i=0;i<3;i++)
      begin
      received[i].display();
      end

    
    //resize and copy previous array
    received = new[5](received);
    for(int i =0;i<5;i++)
      begin
        if(received[i]== null)
            received[i] = new();
      end
    
    received[3].data1 = "Hyundai";
    received[4].data1 = "Tata";
    
  
  for(int i=0;i<5;i++)
     begin 
      received[i].display();
  end
    //null
    for(int i =0;i<5;i++)
      begin
        if(received[i]==null);
    received[i] = new();
      end
    
  for(int i=0;i<5;i++)
     begin 
      received[i].display();
  end
  
  
  //delete an object
  received.delete();
  
  for(int i=0;i<5;i++)
      begin
      received[i].display();
  end
  end
endmodule

    /*outputs
    
    
    run -all
# data1 = "BMW"
# data1 = "Audi"
# data1 = "Tesla"
# data1 = "BMW"
# data1 = "Audi"
# data1 = "Tesla"
# data1 = "Hyundai"
# data1 = "Tata"
# data1 = ""
# data1 = ""
# data1 = ""
# data1 = ""
# data1 = ""
# ** Fatal: (SIGSEGV) Bad handle or reference.
#    Time: 0 ns  Iteration: 0  Process: /tb/#INITIAL#16 File: testbench.sv
# Fatal error in Function showroom::display at testbench.sv line 5
# 
# HDL call sequence:
# Stopped at testbench.sv 5  Function showroom::display
# called from  testbench.sv 65  Module tb
# exit

*/

