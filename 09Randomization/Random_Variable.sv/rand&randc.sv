class mypacket;
  rand bit [2:0]a;
  randc bit [2:0]b;
  
  function display();
    $display("rand variable =%0d|randc variable=%0d",a,b);
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

//output 

/*
run -all
# rand variable =0|randc variable=3
# rand variable =5|randc variable=2
# rand variable =5|randc variable=4
# rand variable =2|randc variable=7
# rand variable =4|randc variable=0
# rand variable =2|randc variable=6
# rand variable =5|randc variable=5
# rand variable =1|randc variable=1
# rand variable =2|randc variable=7
# rand variable =5|randc variable=4
# rand variable =1|randc variable=5
# rand variable =6|randc variable=3
# rand variable =2|randc variable=0
# rand variable =1|randc variable=1
# rand variable =2|randc variable=6
# rand variable =0|randc variable=2
# rand variable =3|randc variable=2
# rand variable =0|randc variable=5
# rand variable =3|randc variable=3
# rand variable =1|randc variable=1
# exit

*/

