// Code your design here
module full_adder(fa_inf.dut inf);
 
  
  assign inf.sum = inf.a ^ inf.b ^ inf.cin;
  assign inf.carry = ( inf.a & inf.b) | (inf.b & inf.cin) | (inf.cin & inf.a);
 

endmodule
  
