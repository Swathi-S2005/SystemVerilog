class home;
  int livingroom;
  int kitchen;
  int bedroom;
  
  function void blue_print(int livingroom=1,
    int kitchen=1,
    int bedroom=2);
    livingroom=livingroom;
    kitchen=kitchen;
    bedroom = bedroom;
    
  //  this.livingroom=livingroom;
    //this.kitchen = kitchen;
    //this.bedroom = bedroom;
    $display("living room=%0d|kitchen = %0d|bed room=%0d",livingroom,kitchen,bedroom);
    
    
  endfunction
  
endclass

module tb;
  home h1;
  initial begin
    h1=new();
    h1.blue_print();
    $display("living room=%0d|kitchen = %0d|bed room=%0d",h1.livingroom,h1.kitchen,h1.bedroom);
  end
endmodule

//output

/*

# run -all
# living room=1|kitchen = 1|bed room=2
# living room=0|kitchen = 0|bed room=0
# exit

*/

  
  
  
