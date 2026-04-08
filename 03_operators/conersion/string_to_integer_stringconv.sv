 
// string to integer
// string conversion methods


module tb;
 string str = "12345";
  int b;
  
  initial begin
    b=str.atoi();
    b+=100;
    
    $display("b=%d",b);
  end
endmodule

/* output
# b=      12445
*/

