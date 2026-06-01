class random;
  rand bit[7:0]box;
  rand byte tools;
  
  constraint c1 {box dist {1:=5, 5:=20, [16:18]:=50, 20:=25};}
  constraint c2 {tools dist {6:=200, [11:15]:=20, 25:=5};}
  
  function display();
    $display("box=%0d|tools=%0d",box,tools);
  endfunction
  
endclass

module tb;
  int i;
  random r;
  initial begin 
    r=new();
    for(i=0;i<20;i++)
      begin
       r.randomize();
       r.display();
      end
    
  end
endmodule

  //output 
/*
run -all
# box=17|tools=11
# box=5|tools=11
# box=17|tools=6
# box=5|tools=6
# box=17|tools=6
# box=1|tools=13
# box=18|tools=12
# box=16|tools=14
# box=16|tools=6
# box=5|tools=15
# box=18|tools=14
# box=17|tools=6
# box=17|tools=6
# box=17|tools=6
# box=16|tools=6
# box=16|tools=6
# box=18|tools=15
# box=17|tools=12
# box=5|tools=6
# box=18|tools=14
# exit

*/

