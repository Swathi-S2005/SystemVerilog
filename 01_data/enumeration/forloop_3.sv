// Code your testbench here
// or browse Examples
module enumeration;
  typedef enum{porsche=5, BMW , Ferrari, Lambo, Bugatti}cars;
  initial begin
    cars showroom;
    for (showroom = showroom.first(); ; showroom = showroom.next())
     begin
    $display("showroom=%0d |showroom name = %s",showroom, showroom.name);
      
    if(showroom == showroom.last())
      break;
     end
  end
endmodule

             
