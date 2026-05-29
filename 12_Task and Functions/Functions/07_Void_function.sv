module tb;
  string str;
  string name;
  
  
  function void display(string str);
    $display("function displaying");
    // name = $display("function displaying");
    //void cannot return the function
    
  endfunction
  
  initial begin
     $display("System Verilog void function");
    
  end
endmodule


// output 

/*
run -all
# System Verilog void function
# exit

*/

