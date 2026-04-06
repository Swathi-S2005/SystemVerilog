// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
    // Code your testbench here
// or browse Examples
module tb;
  
  int array[5][2]= '{{1,2},{3,4},{5,5},{6,7},{5,8}};
  
int i,j;
  initial begin

    repeat(10)
      begin
     
        $display("array[%0d][%0d]=%d",i,j,array[i][j]);
        j++;
        if(j==2)begin
          j=0;
        
        i++;
      end
      end
      
  end
  
endmodule

