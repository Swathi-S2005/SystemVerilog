module tb;
  logic [3:0]en;
  logic [1:0]y;
  initial begin
    en=4'b0001;
    priority case(en)
      4'b0001:y=2'b00;
      4'b0001:y=2'b01;
      4'b0100:y=2'b10;
      4'b1000:y=2'b11;
     default:y=2'bxx;
    endcase 
    $display("y=%0d",y);
    
  end
endmodule

