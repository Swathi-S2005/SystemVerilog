// Code your design here
module single_port(ram_inf.dut inf);
  
  reg [7:0] ram [63:0];
  
  always @(posedge inf.clk)
    begin
      
    if(inf.wr_en)
      ram[inf.addr] <= inf.data_in;
    else
      inf.data_out <= ram[inf.addr];
    end
endmodule

