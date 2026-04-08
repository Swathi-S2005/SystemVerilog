/*  
// integer to real
// implicit conversion


module tb;
  typedef enum {porsche=1,ferrari,bmw,benz,bugatti} cars;
  cars c;
  int b;
  initial begin
    c=ferrari;
    b=c;
    $display("b=%d",b);
  end
endmodule
*/



// explicit conversion

module tb;
  typedef enum {porsche=1,ferrari,bmw,benz,bugatti} cars;
  cars c;
  int b;
  initial begin
    c=ferrari;
    b=int'(c);
    $display("b=%d",b);
  end
endmodule



