// Code your testbench here
// or browse Examples
class animals;
  string name;
  int age;
  string colour;
  real weight;
  
  
  function void disp();
    name="Lion";
    age = 5;
    colour = "Orange";
    weight = 87.5;
    
    $display(" name = %0s| age =%0d | colour =%0s |weight =%0f ",name,age,colour,weight);
  endfunction
  
endclass

class wild_animals extends animals;
  string forest_name;
  int danger_level;
  
  function void disp();
    name="Tiger";
    age = 9;
    colour = "Orange";
    weight = 70.5;
    forest_name = "amazon";
    danger_level = 99;
    $display(" name = %0s| age =%0d | colour =%0s |weight =%0f |%0s forest has %0d danger animals",name,age,colour,weight,forest_name,danger_level);
  endfunction
  
  
endclass


module tb;
  wild_animals a;
  
  initial begin
    a = new();
    a.disp();
  end
endmodule

/*

 run -all
#  name = Tiger| age =9 | colour =Orange |weight =70.500000 |amazon forest has 99 danger animals
# exit

*/

