class random;
  rand bit[7:0]a;
  rand byte b;
  
  constraint c1 {a==b;}
  constraint c2 {b dist {6:/20, [11:15]:/20, 25:/5};}
  //constraint c3 { a<=25; a<4;}
  
  function display();
   
    $display("a=%0d|b=%0d",a,b);
  endfunction
  
endclass

module tb;
  int i;
  random r;
  initial begin 
    r=new();
    $display("============================Biderectional constraint====================================");
    for(i=0;i<20;i++)
      begin
       r.randomize();
       r.display();
      end
    
  end
endmodule

  //output 
/*
# ============================Biderectional constraint====================================
# a=12|b=12
# a=6|b=6
# a=6|b=6
# a=15|b=15
# a=6|b=6
# a=25|b=25
# a=6|b=6
# a=13|b=13
# a=6|b=6
# a=6|b=6
# a=6|b=6
# a=11|b=11
# a=14|b=14
# a=6|b=6
# a=6|b=6
# a=6|b=6
# a=6|b=6
# a=6|b=6
# a=11|b=11
# a=6|b=6
# exit
*/

