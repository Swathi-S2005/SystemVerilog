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

class ferrari extends lambo;
  
  function void display();
    $display("brand= %0s \nmodel=%0s",brand,model);
  endfunction
endclass

  

module tb;
  car c;
  lambo l;
  ferrari f;
  
  initial begin
    l = new();
    f = new();
    l=f;
    c=l;
    f.brand = "porsche";
    f.model = "911 GT3rs";
    l.display();
    c.display();
  
    
  end
endmodule


/*

# run -all
# child brand= porsche 
# model=911 GT3rs
#  parent brand= porsche 
# model=911 GT3rs
# exit

*/




