// Code your design here
module dual_port(dram_inf.dut inf);
  reg [width-1:0] ram[depth-1:0];
  
  always @(posedge inf.clk)
    begin
      if(inf.addr_a != inf.addr_b)
        begin
          if(inf.wr_en_a)
            ram[inf.addr_a] <= inf.data_in_a;
          else
            inf.data_out <= ram[inf.addr_a];
          
          if(inf.wr_en_b)
            ram[inf.addr_b] <= inf.data_in_b;
          else
            inf.data_out <= ram[inf.addr_b];
            
        end
      
      else
        begin
          if(inf.wr_en_a)
            ram[inf.addr_a] <= inf.data_in_a;
          else
            inf.data_out <= ram[inf.addr_a];
        end
    end
endmodule

            
        
      
     
        
  
