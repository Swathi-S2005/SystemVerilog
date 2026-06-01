class random;
  rand bit[3:0]a;
  rand byte b;
  
  constraint c1 {a inside{[5:15]} -> b<8 ;}
  
  
  function display();
   
    $display("a=%0d|b=%0d",a,b);
  endfunction
  
endclass

module tb;
  int i;
  random r;
  initial begin 
    r=new();
    $display("============================IMPLICATION CONSTRAINT====================================");
    for(i=0;i<20;i++)
      begin
       r.randomize();
       r.display();
      end
    
  end
endmodule

  //output 
/*

//BYTE  UNSIGNED
run -all
# ============================IMPLICATION CONSTRAINT====================================
# a=14|b=-83
# a=2|b=123
# a=11|b=1
# a=13|b=-36
# a=4|b=-72
# a=12|b=-38
# a=3|b=-24
# a=11|b=-66
# a=12|b=-42
# a=9|b=-25
# a=0|b=80
# a=11|b=-30
# a=15|b=-71
# a=3|b=81
# a=2|b=-38
# a=0|b=-9
# a=1|b=101
# a=2|b=41
# a=11|b=-114
# a=0|b=115
# exit
*/

