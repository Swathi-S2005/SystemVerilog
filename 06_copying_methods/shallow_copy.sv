class packet;
  int things[string];
  
  function new();
    this.things =  things;
  endfunction
  
  function void display();
    foreach(things[i])
      
      $display("things[%0s]=%0d",i,things[i]);
  endfunction
  
endclass

class bags;
  int size;
  string colour;
  packet pkt;
  
  function new(int size, string colour);
    pkt = new();
    this.size = size;
    this.colour = colour;
  endfunction
  
  function void display(string label);
    $display("%0s|size=%0d|colour = %0s|pkt.things=%0p",label,size, colour,pkt.things);
  endfunction
  
endclass

module tb;
  bags bag1;
  bags bag2;
  initial begin
    bag1 = new(32,"black");
   
   
    bag1.pkt.things["laptop"] =1 ;
    bag1.pkt.things["pen"]=4;
    bag1.pkt.things["charger"]=1 ;
    bag1.pkt.things["lunchbox"]=2;
    bag1.pkt.things["notes"] = 5;
    
    bag1.display("bag1");
    
    bag2 = new bag1;
    bag2.display("bag2");
    
    bag1.size=55;
    bag1.colour="violet";
    bag1.pkt.things["laptop"] =5 ;
    bag1.pkt.things["pen"]=3;
    bag1.pkt.things["charger"]=8 ;
    bag1.pkt.things["lunchbox"]=9;
    bag1.pkt.things["notes"] = 1;
    
    
    
    bag1.display("bag1");
    bag2.display("bag2");
    
    bag2.pkt.things["charger"]=0;
    bag2.pkt.things["lunchbox"]=2;
    bag2.pkt.things["notes"] = 9;
    
    bag1.display();
    bag2.display();
    
  end
endmodule

  /* outputs
  
  
  run -all
# bag1|size=32|colour = black|pkt.things={"charger":1} {"laptop":1} {"lunchbox":2} {"notes":5} {"pen":4} 
# bag2|size=32|colour = black|pkt.things={"charger":1} {"laptop":1} {"lunchbox":2} {"notes":5} {"pen":4} 
# bag1|size=55|colour = violet|pkt.things={"charger":8} {"laptop":5} {"lunchbox":9} {"notes":1} {"pen":3} 
# bag2|size=32|colour = black|pkt.things={"charger":8} {"laptop":5} {"lunchbox":9} {"notes":1} {"pen":3} 
# exit

*/
