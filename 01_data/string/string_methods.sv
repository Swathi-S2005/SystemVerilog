// Code your testbench here
// or browse Examples
module tb;
  string data1 = "hello";
  string data2 = "HELLO";
  
  initial begin
    string tmp;
    $display("data1.len=%0d",data1.len());
    tmp=data1;
    tmp.putc (3,"d");
    $display("tmp.putc=%s",tmp);
    $display("tmp.getc=%c",data1.getc(2));
    $display("compare=%d",data1.compare(data2));
    $display("compare=%d",data1.icompare(data2));
    $display("data1.tolower",data2.tolower);
     $display("data1.toupper",data1.toupper);
    $display("data1.substr=%s",data1.substr(1,3));
             end
endmodule


