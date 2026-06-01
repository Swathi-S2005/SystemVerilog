class random;
  rand bit[3:0]a;
  rand byte b;
  
  constraint c1 {
    if(a inside{[5:15]})
      b==1;
    else
      b==0;
  }
    
  
  
  function display();
   
    $display("a=%0d|b=%0d",a,b);
  endfunction
  
endclass

module tb;
  int i;
  random r;
  initial begin 
    r=new();
    $display("============================IF ELSE CONSTRAINT====================================");
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
# ============================IF ELSE CONSTRAINT====================================
# a=0|b=0
# a=2|b=0
# a=11|b=1
# a=13|b=1
# a=11|b=1
# a=1|b=0
# a=10|b=1
# a=11|b=1
# a=12|b=1
# a=9|b=1
# a=1|b=0
# a=2|b=0
# a=15|b=1
# a=8|b=1
# a=13|b=1
# a=0|b=0
# a=1|b=0
# a=2|b=0
# a=11|b=1
# a=2|b=0
# exit
*/

