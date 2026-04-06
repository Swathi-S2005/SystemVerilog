module tb;
  int q_b[$:4]='{1,2,3,4,5};
  int q_ub[$]='{22,33,44,55,66,7,88,9,32};
  
  initial begin
    
    $display("q_b=%0p | q_ub=%0p", q_b,q_ub);
    
    $display("size of q_b=%0p | size of q_ub=%0p", q_b.size(),q_ub.size());
    
    q_b.delete(3);
    q_ub.delete(3);
    $display("q_b.delete=%0p | q_ub.delete=%0p", q_b,q_ub);
    
    q_b.insert(1,7);
    q_ub.insert(1,11);
    
    $display("q_b.insert=%0p | q_ub.insert=%0p", q_b,q_ub);
    
   
    
    q_b.push_front(9);
    q_ub.push_front(99);
    $display("q_b.push=%0p | q_ub.push=%0p", q_b,q_ub);
    
    
    $display("q_b.pop=%0p | q_ub.pop=%0p", q_b.pop_front(),q_ub.pop_front());
    
    
    q_b.push_back(9);
    q_ub.push_back(99);
    $display("q_b.pushback=%0p | q_ub.pushback=%0p", q_b,q_ub);
    
    
    $display("q_b.popback=%0p | q_ub.popback=%0p", q_b.pop_back(),q_ub.pop_back());
    
    q_b = {};
    q_ub = {};
    
    $display("q_b=%0p | q_ub=%0p", q_b,q_ub);
    
  end
endmodule

  
