// Code your testbench here
// or browse Examples
class A;
  int a;
 
  mailbox mb1;
  
  function new(mailbox mb1);
    this.mb1 = mb1;
  endfunction
  
  task trans();
    begin
      for(int i=0;i<3;i++)
        begin
        
          /*if(mb1.num() == 3)
        begin
          $display("mailbox is full");
    end
       else
         begin*/
           
         a++;
                   
         mb1.put(a);
                   $display("Time=%0t|mailbox=%0d",$time,a);
                   
         end
                   end
 
    
                   endtask
                   
                   
                   endclass
   
                   
                   class B;
                    
                     int a;
                     mailbox mb2;
                     
                     function new(mailbox mb2);
                       this.mb2 = mb2;
                     endfunction
                     
                     task rec();
                       begin
                         for(int i=0;i<3;i++)
                           begin
                             a++;
                             mb2.get(a);
                             $display("Time=%0t|receiver=%0d",$time,a);
                           end
                       end
                     endtask
                     
                   endclass
                   
                   module tb;
                     A a;
                     B b;
                     mailbox mb = new();
                     
                     initial begin
                       
                     
                       a = new(mb);
                       b = new(mb);
                       repeat(3) begin
                         a.trans();
                         b.rec();
                         
                     end
                     end
                   endmodule
                   
/* output 

run -all
# Time=0|mailbox=1
# Time=0|mailbox=2
# Time=0|mailbox=3
# Time=0|receiver=1
# Time=0|receiver=2
# Time=0|receiver=3
# Time=0|mailbox=4
# Time=0|mailbox=5
# Time=0|mailbox=6
# Time=0|receiver=4
# Time=0|receiver=5
# Time=0|receiver=6
# Time=0|mailbox=7
# Time=0|mailbox=8
# Time=0|mailbox=9
# Time=0|receiver=7
# Time=0|receiver=8
# Time=0|receiver=9
# exit
*/

