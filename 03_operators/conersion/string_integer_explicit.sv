 
// string to integer
// explicit conversion


module tb;
 string str = "12345";
  int b;
  
  initial begin
    
    b=int'(str);
   b+=100;
    $display("b=%d",b);
  end
endmodule

/* output
run -all
# b=  842216601

*/

/*
module tb;
  string str= "12345";
  int b;
  initial begin
    $sscanf(str,"%0d",b);
    $display("b=%0d",b);
  end
endmodule

 run -all
# b=12345
*/





