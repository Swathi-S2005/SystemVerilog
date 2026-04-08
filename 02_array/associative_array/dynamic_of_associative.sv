module tb;
  int fruits[] [string];
  initial begin
    fruits = new[2];
    fruits[0] = '{"banana":3 ,
                  "apple":4};
    fruits[1] = '{"quava":5 ,
                  "amla":7};
    foreach(fruits[i])begin
      
      foreach(fruits[i][key])begin
        $display("fruits[%0d][%0s]=%0d",i,key,fruits[i][key]);
      end
    end
  end
endmodule

