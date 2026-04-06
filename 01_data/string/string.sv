module tb;
  string data = "hello";
  initial begin
    $display("data=%s",data);
    foreach(data[i])
      begin
        $display("data[%0d]=%c",i,data[i]);
      end
  end
endmodule

