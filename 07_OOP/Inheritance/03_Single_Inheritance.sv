// Code your testbench here
// or browse Examples
class animals;
  string name;
  int age;
  string colour;
  real weight;
  
  
  function void disp();
    $display("Make sound");
  endfunction
  
endclass

class wild_animals extends animals;
  string forest_name;
  int danger_level;
  
  function void hunt();
    $display("%s is hunting",name);
  endfunction
  
  
endclass


module tb;
  wild_animals a;
  
  initial begin
    a = new();
    a.name="Tiger";
    a.disp();
    a.hunt();
  end
endmodule

/*

# run -all
# Make sound
# Tiger is hunting
# exit

*/

