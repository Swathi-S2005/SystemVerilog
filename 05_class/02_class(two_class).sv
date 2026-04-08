// Code your testbench here
// or browse Examples
class showroom;
  bit [3:0]porsche;
  bit [7:0]ferrari;
  bit [3:0]dodge;
  bit bmw;
  
  function new(bit [3:0]porsche=4'h7 , bit [7:0]ferrari=8'haa);
    this.porsche=porsche;
    this.ferrari=ferrari;
    this.dodge=4'ha;
    this.bmw=1;
  endfunction
  
  function  display();
    $display("porsche=%0h|ferrari=%0h|dodge=%0h|bmw=%0b",porsche,ferrari,dodge,bmw);
  endfunction
endclass


class service;
  function brand;
   showroom cars1;
  showroom cars2;
    
  cars1 = new(4'ha,4'hb);
  cars1.display();
  
  cars2 = new();
  cars2.display();
  
  endfunction
endclass

  

module tb;
 service s1;
  initial begin
    
    s1 = new();
    s1.brand();
    
    
    
  end
  
endmodule

    
  /* outputs
  
   porsche=a|ferrari=b|dodge=a|bmw=1
# porsche=7|ferrari=aa|dodge=a|bmw=1
# exit

*/

