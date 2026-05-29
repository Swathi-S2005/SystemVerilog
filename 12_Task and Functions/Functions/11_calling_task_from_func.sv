module tb;
  
  
  function func_call();
    fork
      $display("calling function:");
      task_call;
    join_none
    
  endfunction
  
  task task_call();
    $display("Calling task");
    
  endtask
  
  
    
   initial  begin
     func_call();
   end
endmodule

