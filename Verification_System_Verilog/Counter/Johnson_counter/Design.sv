// Code your design here
module counter (count_inf.dut inf);
  always @(posedge inf.clk)
    begin
      if(!inf.reset_n)
        inf.count <= 0;
      
      else
        inf.count <= {~inf.count[0],inf.count[inf.WIDTH-1:1]};
    end
endmodule
