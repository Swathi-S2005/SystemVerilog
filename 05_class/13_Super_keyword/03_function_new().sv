class vehicle;
 string veh_type;
  
  function new(string veh_type);
    this.veh_type =veh_type;
  endfunction
  
endclass

class fuel extends vehicle;
  string fuel_type;
  
  function new(string veh_type,string fuel_type);
    super.new(veh_type);
    $display("veh_type=%0s|fuel_type=%0s",veh_type,fuel_type);
  endfunction
  
endclass

module tb;
  fuel v;
  initial begin
    v =new("caravan","petrol");
    //v.display();
  end
endmodule

    
    
 /*
# run -all
# veh_type=caravan|fuel_type=petrol
# exit

*/

