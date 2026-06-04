// Code your testbench here
// or browse Examples
class parent;
  string name;
  int age;
  
  function new();
    name = "Parent";
    age = 60;
  endfunction
  
  virtual task display();
    $display("The  name %0s and age is %0d",name,age);
  endtask
    
endclass

class child1 extends parent;
  string college;
  
  
  function new();
    name = "child1";
    age = 27;
    college = "ABC";
    
    
  endfunction
  
 task display();
    $display("the  name %0s and the age is %0d college %0s",name, age,college);
 endtask
  
endclass

class child2 extends parent;
  string school;
 
  
  
  function new();
    name = "child2";
    age = 15;
    school = "XYZ school";
    
  endfunction
  
  task display();
    $display("the name %0s and the age is %0d school %0s",name,age,school);
  endtask
  
endclass

module tb;
  parent p1,p2;
  child1 c1;
  child2 c2;
  
  initial begin
    c1 = new();
    p1=c1;
    p1.display();
    c1.display();
    
    c2 = new();
    p2 = c2;
    p2.display();
    c2.display();
  end
endmodule

  

// output

/*

# run -all
# the  name child1 and the age is 27 college ABC
# the  name child1 and the age is 27 college ABC
# the name child2 and the age is 15 school XYZ school
# the name child2 and the age is 15 school XYZ school
# exit

*/

  
    
