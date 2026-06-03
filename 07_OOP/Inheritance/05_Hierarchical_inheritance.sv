// Code your testbench here
// or browse Examples
class animals;
  string name;
  int age;
  string colour;
  real weight;
  
  
  function void disp();
    $display("the animal name %0s its age %0d , the colour of the animal %0s and its weight is %0f ",name,age,colour,weight);
  endfunction
  
endclass

class wild_animals extends animals;
  string forest_name;
  int danger_level;
  
  function void hunt();
   
    name="Tiger";
    age = 9;
    colour = "Orange";
    weight = 70.5;
    forest_name = "amazon";
    danger_level = 99;
    
    super.disp();    
   
    $display("%s forest has %0d percentage dangerous animal",forest_name,danger_level);
  endfunction
  
  
endclass


class domestic_animals extends animals;
  string owner_name;
  string vaccinated;
  
  function void obey();
    
     name="Dog";
    age = 9;
    colour = "Orange";
    weight = 7.5;
    owner_name = "diya";
    vaccinated = "yes";
    
    super.disp();
    $display("the %0s 's %0s obey the command and it is vaccinated",owner_name,name,vaccinated);
  endfunction
  
endclass




module tb;
  wild_animals a;
  domestic_animals b;
  initial begin
    a = new();
    //a.disp();
    a.hunt();
    
    b = new();
    //b.disp();
    b.obey();
    
  end
endmodule

/*

 run -all
# the animal name Tiger its age 9 , the colour of the animal Orange and its weight is 70.500000 
# amazon forest has 99 percentage dangerous animal
# the animal name Dog its age 9 , the colour of the animal Orange and its weight is 7.500000 
# the diya 's Dog obey the command and it is vaccinatedyes
# exit

*/

