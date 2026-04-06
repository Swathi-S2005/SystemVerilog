    // Code your testbench here
// or browse Examples
module tb;
  
  string array[5] = '{"apple","orange","banana","guava","mango"};
  

  initial begin

    for(int i=0,j=0;i<$size(array);i++)
      begin
        array[i][j]="k";
        
        $display("array[%0d]=%s",i,array[i],j);
      end
  end
  
endmodule

