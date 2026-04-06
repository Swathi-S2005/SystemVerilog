// Code your testbench here
// or browse Examples
module tb;
  string data1 = "101000";
  string s;
  int data2 = 1010;
  
  initial begin
    
    $display("string to binary=%0b |%0d",data1.atobin(),data1.atobin());
    $display("string to integer =%0d",data1.atoi());
    $display("string to octal=%0o |%0d ",data1.atooct(),data1.atooct());
    $display("string to hexadecimal =%0h| %0d",data1.atohex(),data1.atohex());
    $display("string to real=%0f |%0d ",data1.atoreal(),data1.atoreal());
    
    s.bintoa(data2);
    $display(" binary to string =%0s ",s);
     s.itoa(data2);
    $display(" integer to string =%0s ",s); s.bintoa(data2);
     s.octtoa(data2);
    $display(" octal to string =%0s ",s);
     s.hextoa(data2);
    $display(" hexadecimal to string =%0s ",s);
    s.realtoa(data2);
    $display(" real to string =%0s ",s);
    
    
    
    
  end
endmodule

