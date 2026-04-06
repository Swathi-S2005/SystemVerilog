class packet;
  bit [15:0]addr;
  bit [15:0]data;
  static int st_count=0;
  int count=0;
  function new(bit [15:0]addr, bit [15:0]data);
   this.addr = addr;
    this.data = data;
    st_count++;
    count++;
    
    $display("addr=%h|data=%h|static_count=%0h|count=%0h",addr,data,st_count,count);
   
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

    
    
