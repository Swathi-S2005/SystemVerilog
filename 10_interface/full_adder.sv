// Code your design here
module half_adder( 
  input a,b,
  output sum,carry);
  
  assign sum = a^b;
  assign carry = a&b;
endmodule

module full_adder(fa_inf inf);
  wire s0,c0,c1;
  
  half_adder h1(inf.a, inf.b, s0, c0);
  
  half_adder h2(s0, inf.cin, inf.sum, c1);
  or h3(inf.carry , c0,c1);
endmodule




// interface
interface fa_inf;
  logic a,b,cin;
  logic sum,carry;
endinterface


//test bench
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

