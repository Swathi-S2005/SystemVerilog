// Code your testbench here
// or browse Examples
module tb;
  bit[3:0] seed=20;
  // seed the initial value is 20
  initial begin
    $display("$urandom with seed=%0d",$urandom(seed));
    $display("$random with seed=%0d",$random(seed));
    $display("$urandom_range =%0d",$urandom_range(3,15));
    
  end
endmodule


//output

/*
 run -all
# $urandom with seed=4154083204
# $random with seed=-2147207168
# $urandom_range =4
# exit

*/

