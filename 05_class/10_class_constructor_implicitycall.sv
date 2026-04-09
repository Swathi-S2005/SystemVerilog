// Code your testbench here
// or browse Examples

// class constructor implicity call
class packet;
  bit [31:0]addr;
endclass

module tb;
  packet pkt;
  initial begin
    pkt = new();
    
    pkt.addr = 32'habcdab;
    $display("addr%0h",pkt.addr);
  end
endmodule


/* output

run -all
# addr=abcdab
# exit
*/
