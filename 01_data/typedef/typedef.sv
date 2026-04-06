module tb;
  typedef bit[7:0] addr;
  typedef enum{green,red, yellow,blue}colors;
  
 
  initial begin
     addr address ;
    colors clr1;
    address = 8'hff;
    clr1 = yellow;
    $display("address=%0p|clr1 = %0p",address,clr1);
    
    
      
      
    
   end
                   endmodule
                   
                   
