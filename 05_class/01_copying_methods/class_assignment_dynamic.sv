class assignment;
  string name;
  int price;
  int features[];
  
  function new( );
    this.name = name;
    this.price = price;
    this.features = features;
  endfunction
  
  function void display(string label);
    $display(" %0s|name=%0s | price = %0d | features = %0p",label,name,price,features);
  endfunction
endclass

module tb;
  assignment pkt1;
  assignment pkt2;
  initial begin
    pkt1 = new();
   
    pkt1.features=new[5];
    pkt1.features='{0,1,2,5,6};
    pkt1.name="porsche";
    pkt1.price = 32'hbbcd;
    
    pkt1.display("pkt1");
    
    pkt2 = pkt1;
    pkt2.display("pkt2");
    
    pkt1.name = "ferrari";
    pkt1.price = 32'h12345678;
    pkt1.features='{0,1,4,6,3};
    
    pkt2.display("pkt2");
  end
endmodule


/*outputs

 run -all
#  pkt1|name=porsche | price = 48077 | features = 0 1 2 5 6
#  pkt2|name=porsche | price = 48077 | features = 0 1 2 5 6
#  pkt2|name=ferrari | price = 305419896 | features = 0 1 4 6 3
# exit

*/
