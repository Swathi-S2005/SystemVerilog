class vehicle;
 string veh_type;
  
  function void display();
    veh_type = "4wheeler";
    $display("veh_type=%0s",veh_type);
  endfunction
  
endclass

class fuel extends vehicle;
  string fuel_type="petrol";
  
  function void display();
    super.display();
    $display("fuel_type=%0s",fuel_type);
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
 
 # run -all
# veh_type=4wheeler
# fuel_type=petrol
# exit

*/

