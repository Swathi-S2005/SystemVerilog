module tb;
  typedef struct packed { bit[2:0] version;
                         bit[3:0] header_length;	
                         bit [7:0]service_type;	
                         bit [15:0]total_length;

                        }data;
  
  data data1,data2;
  initial begin
     data1.version=2;
    data1.header_length=5;
    data1.service_type = 21;
    data1.total_length = 1024;
    data2 = data1;
    data2.version=1;
    
    $display("data1=%0p|data2 = %0p",data1,data2);
    
    
      
      
    
   end
                   endmodule
                   
                   
