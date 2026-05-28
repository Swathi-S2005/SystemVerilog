// Code your design here
module d_ff(dff_inf.dut inf);
  
  always @(posedge inf.clk or negedge inf.reset_n)
    begin
      
  if(!inf.reset_n)
    inf.q <= 0;
  else
    inf.q <= inf.d;
  end
endmodule

 
