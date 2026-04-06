module tb;
  struct { string students;
          int roll_no;
          real marks;
         }class_room;
  initial begin
    class_room = '{"krishna",57,98};
                   
    $display("class_room=%0p",class_room);
    
    class_room.students = "gokul";
    class_room.marks= 89.7;
    
                   
    $display("class_room=%0p",class_room);
    
   end
                   endmodule
                   
                   
