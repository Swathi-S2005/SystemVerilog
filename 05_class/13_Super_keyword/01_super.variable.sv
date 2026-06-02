class vehicle;
 string veh_type ="2wheeler";
 
endclass

class fuel extends vehicle;
  string fuel_type="petrol";
  
  function void display();
    $display("veh_type=%0s|fuel_type=%0s",super.veh_type,this.fuel_type);
  endfunction
  
endclass

module tb;
  fuel v;
  initial begin
    v =new();
    v.display();
  end
endmodule

    
    
 /*
 
 run -all
# veh_type=2wheelerpetrol
# exit

*/

