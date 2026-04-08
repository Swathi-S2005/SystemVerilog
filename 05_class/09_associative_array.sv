// Code your testbench here
// or browse Examples
class car_number;
  string array;
  function new(string a);
    array = a;
  endfunction
  
endclass

module tb;
  car_number id[string];
  initial begin
    id["samson"] = new("TN10EF1234");
    id["dube"] = new("TN10Ab10103");
    id["deepak chahar"] = new("TN02AF11408");
    
    foreach(id[i])
      $display("array[%0s]=%0s",i,id[i].array);
    
    if(id.exists("samson"))
       $display("found = %0s",id["samson"].array);
       else
         $display("name not found");
       
      
    id.delete("samson");
     foreach(id[i])
      $display("array[%0s]=%0s",i,id[i].array);
    
   
  end
endmodule


/*

outputs

# run -all
# array[deepak chahar]=TN02AF11408
# array[dube]=TN10Ab10103
# array[samson]=TN10EF1234
# found = TN10EF1234
# array[deepak chahar]=TN02AF11408
# array[dube]=TN10Ab10103
# exit

*/


    
