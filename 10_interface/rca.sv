//Design
module half_adder(ha_inf inf);
  assign inf.sum = inf.a^inf.b;
  assign inf.carry = inf.a & inf.b;
endmodule


module full_adder(fa_inf inf);
  ha_inf h1(),h2();
  
  half_adder ha1(h1);
  half_adder ha2(h2);
  
  assign h1.a = inf.a;
  assign h1.b = inf.b;
  
  assign h2.a = h1.sum;
  assign h2.b = inf.cin;
  
  assign inf.sum = h2.sum;
  assign inf.carry = h1.carry | h2.carry;
  
endmodule


module rca(rca_inf inf);
  ha_inf h3();
  
  half_adder ha3(h3);
  
  assign h3.a = inf.a[0];
  assign h3.b = inf.b[0];
    
  fa_inf f1(),f2(),f3();
  
  full_adder fa1(f1);
  full_adder fa2(f2);
  full_adder fa3(f3);
  
  
  assign f1.a = inf.a[1];
  assign f1.b = inf.b[1];
  assign f1.cin = h3.carry;
  
  assign f2.a = inf.a[2];
  assign f2.b = inf.b[2];
  assign f2.cin= f1.carry;
  
  assign f3.a = inf.a[3];
  assign f3.b = inf.b[3];
  assign f3.cin = f2.carry;
  
  assign inf.carry = f2.carry;
  assign inf.sum[0] = h3.sum;
  assign inf.sum[1] = f1.sum;
  assign inf.sum[2] = f2.sum;
  assign inf.sum[3] = f3.sum;
  
endmodule

 
 //interface half adder
 
 interface ha_inf;
  logic a,b;
  logic sum,carry;
endinterface


// interface full adder


interface fa_inf;
  logic a,b,cin;
  logic sum, carry;
endinterface

// interface rca


interface rca_inf;
  logic [3:0]a,b;
  logic [3:0]sum;
  logic carry;
endinterface
  

module tb;
  rca_inf inf();
  
  rca dut(inf);
  
  initial begin
    $monitor("a=%0d|b=%0d|sum=%0d|carry=%0d",inf.a,inf.b,inf.sum,inf.carry);
    inf.a=4'd2;inf.b=4'd4;
    #10 inf.a=4'd3;inf.b=4'd6;
  end
endmodule

    
  // outputs
  
  /*
  run -all
# a=2|b=4|sum=6|carry=0
# a=3|b=6|sum=9|carry=1
# exit
*/

