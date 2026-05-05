module d_ff(dff_inf inf);
  always @(posedge inf.clk or negedge inf.reset_n)
    begin
      if(! inf.reset_n)
        inf.q <= 0;
      else
        inf.q <=  inf.d;
    end
endmodule

    
    interface dff_inf(input logic clk, reset_n);
  //logic clk,reset_n;
  logic [3:0]d;
  logic [3:0]q;
endinterface

module tb;
  bit clk;
  bit reset_n;
  
  always #5 clk = ~clk;
  initial begin
    clk=0;reset_n=0;
    #10 reset_n = 1;
  end
  
    
  
  dff_inf inf(clk,reset_n);
  d_ff dut(inf);
  
  initial begin
    $monitor("clk=%0b|reset_n=%0b|d=%0d|q=%0d",inf.clk,inf.reset_n,inf.d,inf.q);
    $dumpvars(0,tb);
    $dumpfile("dff.vcd");
    
    inf.d=4'd3;
    #20 inf.d=4'd2;
    #50 $finish;
  end
endmodule

  
