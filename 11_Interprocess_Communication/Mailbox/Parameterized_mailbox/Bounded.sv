// Code your testbench here
// or browse Examples
class shop;
  string sweet;
  mailbox #(string)delivery_boy;
  
  function new(mailbox #(string)delivery_boy);
    this.delivery_boy = delivery_boy;
  endfunction
  
  task delivery();
    begin
      sweet = "jilabi";
      delivery_boy.put(sweet);
      $display("Time=%0t|mailbox=%0d",$time,sweet);
       
      
      sweet = "laddu";
      delivery_boy.put(sweet);
      $display("Time=%0t|mailbox=%0d",$time,sweet);
      
       sweet = "kajukatli";
      delivery_boy.put(sweet);
      $display("Time=%0t|mailbox=%0d",$time,sweet);
      
         end
  endtask
 endclass
   
                   
 class home;
 
   
string sweet;
   mailbox #(string)delivery_boy;
   function new(mailbox #(string)delivery_boy);
    this.delivery_boy = delivery_boy;
    
  endfunction
                     
 task delivery();
   begin
                        
     delivery_boy.get(sweet);
     $display("Time=%0t|receiver=%0d",$time,sweet);
   end
endtask
                     
 endclass
                   
module tb;
                     shop a;
                     home b;
  mailbox #(string)mb = new(6);
                     
                     initial begin
                       
                     
                       a = new(mb);
                       b = new(mb);
                       repeat(3) begin
                         a.delivery ();
                         b.delivery();
                         
                     end
                     end
                   endmodule
                   
/* output 

run -all
# Time=0|mailbox=jilabi
# Time=0|mailbox=laddu
# Time=0|mailbox=kajukatli
# Time=0|receiver=jilabi
# Time=0|mailbox=jilabi
# Time=0|mailbox=laddu
# Time=0|mailbox=kajukatli
# Time=0|receiver=laddu
# Time=0|mailbox=jilabi
# Time=0|mailbox=laddu
# exit

*/

