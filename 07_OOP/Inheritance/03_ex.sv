// Code your design here
class vehicle;
  int speed;
  string fuel_type;
  
  function new(int speed,string fuel_type );
   
    
    this.speed = speed;
    this.fuel_type = fuel_type;
    
  endfunction
  
  function void display();
    
    $display("speed=%0d | fuel_type=%0s",speed,fuel_type);
  endfunction
  
endclass

class car extends vehicle;
  string brand;
  string model;
  
  function new(int speed,string fuel_type,string brand, string model);
    super.new(speed,fuel_type);
    
    this.brand = brand;
    this.model = model;
  endfunction
  
  function void display();
    super.display();
    $display("brand=%0s | model=%0s",brand,model);
  endfunction
  
  
endclass

class bike extends car;
   string types;
  
  function new(int speed,string fuel_type,string brand, string model,string types);
    super.new(speed, fuel_type,brand,model);
    this.types = types;
  endfunction
  
  function void display();
    super.display();
    $display("types= %0s",types);
  endfunction
  
endclass

module tb;
  
  
  bike b;
  
  
  initial begin
    
    b = new(130,"petrol","porshe","911","RE");
    
   
    
    b.display();
  end
endmodule


/* outputs

run -all
# speed=130 | fuel_type=petrol
# brand=porshe | model=911
# types= RE
# exit
/*

 
