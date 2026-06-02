// Code your testbench here
// or browse Examples
module tb;
  int seed1 = 100;
  int seed2 = 200;
  bit [31:0]a;
  bit [31:0]b;
  bit [31:0]c;
  
  
  initial begin
    a= $urandom(seed1);
    $display("$urandom with seed1=%0d",a);
    repeat(3)
      begin
        b=$urandom(seed2);
        $display("$urandom with seed2=%0d",b);
      end
      repeat(3)
      begin
    b=$random(seed1);
    $display("$random with seed1=%0d|=%0d",b,seed1);
    
    c=$random(seed2);
    $display("$random with seed2 = %0d",c);
    end
    
    
    
    
    repeat (3)
      begin
      
       $display("$urandom_range =%0d",$urandom_range(3,15));
      end
    
    
  end
endmodule


//output

/*
run -all
# $urandom with seed1=2327738115
# $urandom with seed2=3594263404
# $urandom with seed2=3594263404
# $urandom with seed2=3594263404
# $random with seed1=2154391040
# $random with seed2 = 2161297921
# $urandom_range =14
# $urandom_range =3
# $urandom_range =10
# exit

*/

