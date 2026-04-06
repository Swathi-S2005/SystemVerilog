class packet;
  bit [15:0]addr;
  bit [15:0]data;
  static int st_count=0;
  static int count=0;
   
  function new(bit [15:0]addr, bit [15:0]data);
   this.addr = addr;
    this.data = data;
    
    
    $display("addr=%h|data=%h|",addr,data);
   
  endfunction
  // the function prints the object of the 
  function void display();
    $display("Display -> addr=%0h|data=%0h",addr,data);
  endfunction
  
 
  
  static function void increment();
    st_count++;
    count++;
    $display("static_count=%0h|count=%0h",st_count,count);
  endfunction
endclass

module tb;
  packet pkt[3];
  
 
  initial begin
    
    pkt[0] = new(16'h1a78,16'h1076);
    pkt[1] = new(16'h1008,16'h1101);
    pkt[2] = new(16'h1ab8,16'hab01);
   
    pkt[0].display();
    pkt[1].display();
    pkt[2].display();
    
    
    packet::increment();
    packet::increment();
  end
endmodule

    
    
