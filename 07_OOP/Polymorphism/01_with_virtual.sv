class car;
  string brand;
  string fuel_type;
  string model;
  string engine;
  int horse_power;
  int speed;
  
  function new();
    brand = "ferrari";
    model = "599 GTO";
    fuel_type = "petrol";
    engine = "V12";
    horse_power = 661;
    speed = 208;
  endfunction
  
  virtual function void display();
    $display("brand= %0s \n fuel_type =%0s \n model =%0s \n engine =%0s \n horse_power =%0d \n speed =%0d ",brand,fuel_type,model,engine,horse_power,speed);
  endfunction
  
endclass

class lambo extends car;
  string name;
  
  function new();
    name = "super car";
    brand = "Lamboghini";
    model = "Hurracan";
    fuel_type = "petrol";
    engine = "V10";
    horse_power = 640;
    speed = 325;
  endfunction
  
  function void display();
     $display("brand= %0s \n fuel_type =%0s \n model =%0s \n engine =%0s \n horse_power =%0d \n speed =%0d \n name ",brand,fuel_type,model,engine,horse_power,speed,name);
  endfunction
  
endclass

class dodge extends lambo;
  string name;
  
  function new();
    name = "super car";
    brand = "Dodge";
    model = "HEMI";
    fuel_type = "petrol";
    engine = "V8";
    horse_power = 1025;
    speed = 203;
  endfunction
  
  function void display();
     $display("brand= %0s \n fuel_type =%0s \n model =%0s \n engine =%0s \n horse_power =%0d \n speed =%0d \n name ",brand,fuel_type,model,engine,horse_power,speed,name);
  endfunction
  
endclass

class porsche extends dodge;
  string name;
  
  function new();
    name = "super car";
    brand = "PORSCHE";
    model = "911 GT3rs";
    fuel_type = "petrol";
    engine = "V12";
    horse_power = 960;
    speed = 350;
  endfunction
  
  function void display();
     $display("brand= %0s \n fuel_type =%0s \n model =%0s \n engine =%0s \n horse_power =%0d \n speed =%0d \n name ",brand,fuel_type,model,engine,horse_power,speed,name);
  endfunction
  
endclass

module tb;
  car c1,c2;
  lambo l;
  //dodge d;
  porsche p;
  
  initial begin
    //overriding parent to the porsche
    p = new();
    c1 = new p;
    c1.display();
    // overiding parent to the lambo
    l = new();
    c2 = l;
    c2.display();
    
  end
endmodule

/*

# run -all
# brand= PORSCHE 
#  fuel_type =petrol 
#  model =911 GT3rs 
#  engine =V12 
#  horse_power =960 
#  speed =350 
#  name super car
# brand= Lamboghini 
#  fuel_type =petrol 
#  model =Hurracan 
#  engine =V10 
#  horse_power =640 
#  speed =325 
#  name super car
# exit

*/







    
    
