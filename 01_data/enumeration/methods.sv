// Code your testbench here
// or browse Examples
module enumeration;
  typedef enum{porsche=1, BMW , Ferrari=6, Lambo, Bugatti}cars;
  initial begin
    cars showroom;
    showroom = Lambo;
    $display("showroom.first=%0d |showroom.name = %s",showroom.first, showroom.first);
    $display("showroom.last=%0d |showroom.name = %s",showroom.last, showroom.last);
    $display("showroom.prev=%0d |showroom.name = %s",showroom.prev, showroom.prev);
    $display("showroom.next=%0d |showroom.name = %s",showroom.next, showroom.next);
    $display("showroom.num=%0d |showroom.name = %s",showroom.num, showroom.name);
  end
endmodule

             
