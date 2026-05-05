// Code your design here
module half_adder(ha_inf inf);
  
  assign inf.sum = inf.a^ inf.b;
  assign inf.carry = inf.a& inf.b;
endmodule

module full_adder(fa_inf inf);
  ha_inf h1(),h2();
  wire c0,c1;
  
  half_adder ha1(h1);
  half_adder ha2(h2);
  
  assign h1.a = inf.a;
  assign h1.b = inf.b;
  
  assign h2.a = inf.sum;
  assign h2.b = inf.cin;
  
  assign inf.sum = h2.sum;
  assign inf.carry = h1.carry | h2.carry;
  
  
endmodule


// interface for half_adder


interface ha_inf;
  logic a,b;
  logic sum,carry;
endinterface


// interface for full adder
interface fa_inf;
  logic a,b,cin;
  logic sum,carry;
endinterface

module tb;
  fa_inf inf();
  full_adder dut(inf);
  
  initial begin
    $monitor("a=%0b|b=%0b|cin=%0b",inf.a,inf.b,inf.cin);
    inf.a=0;inf.b=1;inf.cin=0;
    #10 inf.a=1;  inf.b = 0; inf.cin=1;
    #10 inf.a = 1; inf.b=1; inf.cin=1;
  end
endmodule

    
//output 
/*
# run -all
# a=0|b=1|cin=0
# a=1|b=0|cin=1
# a=1|b=1|cin=1
# exit
*/

  
  
