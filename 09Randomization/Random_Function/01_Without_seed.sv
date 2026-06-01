// Code your testbench here
// or browse Examples
module tb;
  int a;
  
  initial begin
    $display("$urandom without seed=%0d",$urandom(a));
    $display("$random without seed=%0d",$random(a));
    $display("$urandom_range =%0d",$urandom_range(3,15));
    
  end
endmodule


//output

/*
 run -all
# $urandom without seed=1708117286
# $random without seed=303379748
# $urandom_range =13
# exit

*/

