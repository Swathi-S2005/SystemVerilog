class car_parking;
  int count;
  function new();
    count =101;
  endfunction
endclass


module tb;
  car_parking parking[5];
 initial begin 
   for(int i=0; i<5;i++)
    begin
      parking[i] = new();
      parking[i].count=parking[i].count+ i;
    end
  
  
   for(int i=0;i<5;i++)
    begin
      $display("parking[%0d]=%0d",i,parking[i].count);
    end
   
  
   $display("parking=%0d",parking[3].count);
   $display("parking=%0d",$size(parking));
 end
endmodule

    
