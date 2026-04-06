module tb;
  string data1 = "hello";
  string data2 = "welcome";
  
  initial begin
    if(data1 == data2)
      $display("data1=%s is equal to data2=%s",data1,data2);
    if(data1 != data2)
      $display("data1=%s is not equal to data2=%s",data1,data2);
    if(data1 > data2)
      $display("data1=%s is greater than data2=%s",data1,data2);    
    if(data1 < data2)
      $display("data1=%s is  lesser than data2=%s",data1,data2);
    if(data1 >= data2)
      $display("data1=%s is grater than equal data2=%s",data1,data2);
    if(data1 <= data2)
      $display("data1=%s is lesser than equal data2=%s",data1,data2);
    
    $display("concatenation", {data1,"",data2});   
    $display("replication", {3{data1,"",data2}});  
    $display("indexing methods", data1[2],data2[2]);  
  end
endmodule

