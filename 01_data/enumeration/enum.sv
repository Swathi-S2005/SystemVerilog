// Code your testbench here
// or browse Examples
module enumeration;
  typedef enum{porsche=1, BMW , Ferrari=6, Lambo, Bugatti}cars;
  initial begin
    cars showroom;
    showroom = Lambo;
    $display("showroom=%0d |showroom name = %s",showroom, showroom.name);
  end
endmodule

             
