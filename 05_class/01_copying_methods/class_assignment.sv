class assignment;
  string name;
  int price;
  int features;
  
  function new( string name, int price, int features);
    this.name = name;
    this.price = price;
    this.features = features;
  endfunction
  
  function void display(string label);
    $display(" %0s|name=%0s | price = %0d | features = %0d",label,name,price,features);
  endfunction
endclass

module tb;
  assignment pkt1;
  assignment pkt2;
  initial begin
    pkt1 = new("porsche",32'h1bbccdd,32'h911);
    pkt1.display("pkt1");
    
    pkt2 = pkt1;
    pkt2.display("pkt2");
    
    pkt1.name = "ferrari";
    pkt1.price = 32'h12345678;
    pkt1.features = 32'h110;
    
    pkt2.display("pkt2");
  end
endmodule

