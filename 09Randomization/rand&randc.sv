class mypacket;
  rand bit [3:0]a;
  randc bit [3:0]b;
  
  function display();
    $display("a=%0d|b=%0d",a,b);
  endfunction
  
endclass

module tb;
  mypacket p;
  initial begin
    
  p = new();
    for(int i=0;i<20;i++)
      begin
        
  p.randomize();
    p.display();
      end
  end
endmodule

