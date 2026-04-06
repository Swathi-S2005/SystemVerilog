module tb;
  typedef union packed{
    bit[31:0] words;
    struct packed{ 
      bit[15:0]low;
      bit[15:0] high;
    }halves;
    struct packed{
      bit[7:0] b0,b1,b2,b3;
    }bytes;
  }note;
  note u;
  
  initial begin
  u.words = 32'ha1b2c3d4;
    u.bytes.b0=8'hff;
    
    $display("words=%0h",u.words);
    $display("low=%0h",u.halves.low);
    $display("high=%0h",u.halves.high);
    $display("b0=%0h",u.bytes.b0);
    $display("b1=%0h",u.bytes.b1);
    $display("b0=%0h",u.bytes.b0);
    $display("b1=%0h",u.bytes.b1);
    $display("b2=%0h",u.bytes.b2);
    $display("b3=%0h",u.bytes.b3);
  end
  
endmodule

  
    
