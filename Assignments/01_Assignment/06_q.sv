module tb;
  int A[5] = '{1,2,3,4,5};
  int B[5];
  initial begin
    foreach(A[i])
      begin
        B[i]=A[i];
        $display("b[%0d]=%0d",i,B[i]);
  end
  end
endmodule

