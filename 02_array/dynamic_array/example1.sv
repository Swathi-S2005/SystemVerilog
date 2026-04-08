
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

module tb;
  string data1[];
  initial begin
    
    $display("data1=%d",data1);
    data1 = new[3];
    data1 = '{"BMW", "Audi", "Tesla"};
    $display("data1=%p",data1);
    data1 = new[5];
    data1='{"BMW", "Audi", "Tesla","Hyndai", "Tata"};
    $display("data1=%p",data1);
    data1.delete();
    $display("data1=%p",data1);
  end
endmodule

    
