class car;
  string brand;
  string model;
  
 function void display();
   $display(" parent brand= %0s \nmodel=%0s",brand,model);
  endfunction
  
endclass

class lambo extends car;
  
  function void display();
    $display("child brand= %0s \nmodel=%0s",brand,model);
  endfunction

endclass  

module tb;
  car c1;
  lambo l;
  
  initial begin
    l = new();
    c1 = l;
    $cast(l,c1);
    
    
    c1.brand = "ferrari";
    c1.model = "590 GTO";
  
    //l.brand = "bugattii";
    //l.model = "xxx";
    
    
    l.display();
   
  
    
  end
endmodule


//output
/*
# run -all
# child brand= ferrari 
# model=590 GTO
# exit

*/






