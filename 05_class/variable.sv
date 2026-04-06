class packet;
  bit [15:0]addr;
  bit [15:0]data;
  function new(bit [15:0]addr, bit [15:0]data);
   this.addr = addr;
    this.data = data;
    $display("addr=%h|data=%h",addr,data);
   
  endfunction
endclass

module tb;
  packet pkt1;
  packet pkt2;
  packet pkt3;
  initial begin
    pkt1 = new(16'h1a78,16'h1076);
    pkt2 = new(16'h1008,16'h1101);
    pkt3 = new(16'h1ab8,16'hab01);
   
  end
endmodule

    
    
