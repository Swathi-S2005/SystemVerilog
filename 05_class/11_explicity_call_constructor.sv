// Code your testbench here
// or browse Examples
class packet;
  bit [31:0]addr;
  function new();
    addr =32'habcdab;
  endfunction
endclass

module tb;
  packet pkt;
  initial begin
    pkt = new();
    
   
    $display("addr=%0h",pkt.addr);
  end
endmodule


/*outputs

run -all
# addr=abcdab
# exit

*/
