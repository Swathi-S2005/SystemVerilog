class packet;
  int addr;
  function new(int x);
    addr = x;
 
  endfunction
endclass
module tb;
  packet pkt1;
  packet pkt2;
  initial begin
    pkt1 = new(20);
    pkt2 = new(10);
    $display("addr=%0d",pkt1.addr);
    $display("addr=%0d",pkt2.addr);
  end
endmodule

    
    
