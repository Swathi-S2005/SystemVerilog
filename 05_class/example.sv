class student;
  int rollno;
  string name;
  real marks;
  
  function new(int rollno, string name, real marks);
    this.rollno = rollno;
    this.name = name;
    this.marks = marks;
    
  endfunction
  
  function void display();
    $display("rollno = %0d | name=%0s | marks=%0.2f",rollno,name,marks);
  endfunction
  
endclass

module tb;
  student s1;
  student s2;
  initial begin 
    s1= new(57,"swathi",97.8);
    s2 = new(57, "subiksha",99);
    s1.display();
    s2.display();
    
  end
endmodule

