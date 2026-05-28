// Code your design here
module counter (count_inf inf);
  always @(posedge inf.clk)
    begin
      if(inf.reset_n)
        inf.count <= 0;
      else
        inf.count <= inf.count+1;
    end
endmodule


// Code your testbench here
// or browse Examples
interface count_inf #(parameter N=3);
  logic clk,reset_n;
  logic [N:0]count;
endinterface


module tb;
  count_inf inf();
  // defparam inf.N=3;
  counter dut(inf);
  
  always #5 inf.clk = ~ inf.clk;
  
   initial begin
     $monitor("clk=%0b|reset_n=%0b|count=%0d",inf.clk,inf.reset_n,inf.count);
    $dumpvars(0,tb);
     $dumpfile("counter.vcd");
   
    inf.clk=0;
     inf.reset_n=1;
     #20 inf.reset_n=0;
    
     
    #100 $finish;
  end
endmodule

/*output 
run -all
# ** Warning: (vsim-PLI-3826) $dumpfile : This task should be called prior to the $dumpvars
# task.  The $dumpfile task will be ignored.
#    Time: 0 ns  Iteration: 0  Process: /tb/#INITIAL#16 File: testbench.sv Line: 19
# clk=0|reset_n=1|count=x
# clk=1|reset_n=1|count=0
# clk=0|reset_n=1|count=0
# clk=1|reset_n=1|count=0
# clk=0|reset_n=0|count=0
# clk=1|reset_n=0|count=1
# clk=0|reset_n=0|count=1
# clk=1|reset_n=0|count=2
# clk=0|reset_n=0|count=2
# clk=1|reset_n=0|count=3
# clk=0|reset_n=0|count=3
# clk=1|reset_n=0|count=4
# clk=0|reset_n=0|count=4
# clk=1|reset_n=0|count=5
# clk=0|reset_n=0|count=5
# clk=1|reset_n=0|count=6
# clk=0|reset_n=0|count=6
# clk=1|reset_n=0|count=7
# clk=0|reset_n=0|count=7
# clk=1|reset_n=0|count=8
# clk=0|reset_n=0|count=8
# clk=1|reset_n=0|count=9
# clk=0|reset_n=0|count=9
# clk=1|reset_n=0|count=10
# ** Note: $finish    : testbench.sv(26)

*/


