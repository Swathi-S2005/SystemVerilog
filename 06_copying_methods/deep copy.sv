// deep copy

class works;
  int tasks[string];
  
  function new();
      this.tasks = tasks;
  endfunction
  
  
  function void display();
    
    foreach(tasks[i])
      $display("tasks[%0s]=%0d",i,tasks[i]);
  endfunction
  
endclass

class users;
  int id;
  string password;
  works w1;
  
  function new(int id , string password);
    w1 = new();
    this.id = id;
    this.password = password;
    
  endfunction
  
  function users copy();
    users u1;
    u1 = new( this.id , this.password );
    foreach(this.w1.tasks[i])
      
      u1.w1.tasks[i] = this.w1.tasks[i];
    return u1;
  endfunction
  
  function display(string label);
    $display("%0s | id=%0d|password=%0s|w1.tasks=%0p",label,id, password,w1.tasks);
  endfunction
  
endclass

  
  module tb;
    users user1;
    users user2;
    initial begin
      
      user1 = new(57,"user@57");
      user1.w1.tasks["problem solving"] = 1;
      user1.w1.tasks["assignment"] = 5;
      user1.w1.tasks["project"] = 1;
      
      user1.display("user1");
      
      user2 = user1.copy();
      
      user2.display("user2");
      
      user2.id= 45;
      user2.password = "user@45";
      user2.w1.tasks["problem solving"] = 4;
      user2.w1.tasks["assignment"] = 6;
      user2.w1.tasks["project"] = 7;
      
      user2.display("user2");
      user1.display("user1");
      
      
    end 
  endmodule
  

/*  outputs
# run -all
# user1 | id=57|password=user@57|w1.tasks={"assignment":5} {"problem solving":1} {"project":1} 
# user2 | id=57|password=user@57|w1.tasks={"assignment":5} {"problem solving":1} {"project":1} 
# user2 | id=45|password=user@45|w1.tasks={"assignment":6} {"problem solving":4} {"project":7} 
# user1 | id=57|password=user@57|w1.tasks={"assignment":5} {"problem solving":1} {"project":1} 
# exit

*/

      
      
      
      
