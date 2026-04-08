/*

Declares an associative array (string index)
Perform:
Insert 3 car entries
Display all cars using foreach
Check if a car "TN01AB1234" exists
Delete one specific car
Print remaining entries
*/

module tb;
  string array[string];
  initial begin
    
    array = '{ "samson" : "TN10EF1234",
              "dube" : "TN10Ab10103",
              "deepak chahar" : "TN02AF11408"
             };
    foreach(array[i])
      $display("array[%0s]=%0s",i,array[i]);
    if(array.exists("deepak chahar"))
      $display("found = %0s",array["deepak chahar"]);
    
    else
      $display("not found ");
    
    array.delete("samson");
    foreach(array[i])
     $display("array[%0s]=%0s",i,array[i]);
  end
endmodule

  
