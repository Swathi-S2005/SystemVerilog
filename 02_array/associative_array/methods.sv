module tb;
  int array[int];
  initial begin
    int idx=3;
    
    array[1] = 100;
    array[4] = 400;
    array[3] = 200;
    array[6] = 300;
     
    $display("array.size=%0d",array.size());
    
    $display("array.num=%0d",array.num());
    
    array.next(idx);
    $display("array[%0d]=%0d",idx,array[idx]);
    
     array.next(idx);
    $display("array[%0d]=%0d",idx,array[idx]);
    
     array.prev(idx);
    $display("array[%0d]=%0d",idx,array[idx]);
    
    array.last(idx);
    $display("array[%0d]=%0d",idx,array[idx]);
    
      array.first(idx);
    $display("array[%0d]=%0d",idx,array[idx]);
      

    if(array.exists(400));
    $display("the element is exists in the array");
    
    
    if(!array.exists(500));
    $display("the element does not exists in the array");
        

    
  end
endmodule

