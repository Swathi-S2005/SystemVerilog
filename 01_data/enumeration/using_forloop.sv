// Code your testbench here
// or browse Examples
module enumeration;
  typedef enum{porsche=1, BMW , Ferrari, Lambo, Bugatti}cars;
  initial begin
    cars showroom;
    for (int i=1;i<5;i++)
      begin
      showroom =cars'(i);
    $display("showroom=%0d |showroom name = %s",showroom, showroom.name);
      end
  end
endmodule

             
