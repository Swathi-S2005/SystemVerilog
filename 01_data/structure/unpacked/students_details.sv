module tb;
 typedef struct { string students;
          int roll_no;
          real marks;
                }class_room;
  class_room boys[int];
  class_room girls[int];
  
  initial begin
     boys[0] = '{"krishna",57,98};
    boys[1] = '{"pranav",54,88};
     boys[2] = '{"guru",67,83};
    boys[3] = '{"krish",33,91};
     girls[0] = '{"priya",56,99};
    girls[1] = '{"rekka",36,39};
    girls[2] = '{"anu",46,59};
             
    $display("boys=%0p",boys);
    
    
      
      $display("girls=%0p ",girls);
    
   end
                   endmodule
                   
                   
