// Code your testbench here
// or browse Examples
 module tb;
   int seed = 200;
   
   
   initial begin
     $display("random numbr1=%0d",$urandom(seed));
     repeat(2)
      begin
        
        $display("random numbr2=%0d",$urandom());
        
      end
     
     $display("random numbr1=%0d",$random(seed));
     $display("random numbr1=%0d",$urandom_range(3,5));
     
     
   end
 endmodule

     
/*

run -all
# random numbr1=3594263404
# random numbr2=834977323
# random numbr2=2072278247
# random numbr1=-2133669375
# random numbr1=3
# exit
*/
