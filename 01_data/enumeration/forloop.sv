// Code your testbench here
// or browse Examples
module enumeration;
  typedef enum{porsche, BMW , Ferrari, Lambo, Bugatti}cars;
  initial begin
    cars showroom;
    for (int i=0;i<showroom.num();i++)
      begin
      showroom =cars'(i);
    $display("showroom=%0d |showroom name = %s",showroom, showroom.name);
      end
  end
endmodule

             
