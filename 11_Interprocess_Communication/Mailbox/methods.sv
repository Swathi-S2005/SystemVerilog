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
      for(int i=0;i<4;i++)
        begin
         a++;
          //mb1.put(a);
          //$display("put Time=%0t|mailbox=%0d",$time,a);
          
          if(mb1.try_put(a))
       
            $display("try_put Time=%0t|mailbox=%0d",$time,a);
          else
            $display("failed");
          
          mb1.peek(a);
          $display(" peek Time=%0t|mailbox=%0d",$time,a);
         
          
           $display("no of messages in mailbox=%0d",mb1.num());
            
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
                         for(int i=0;i<4;i++)
                           begin
                             a++;
                            // mb2.get(a);
                             //$display("Get Time=%0t|receiver=%0d",$time,a);
                             
                             if(mb2.try_get(a))
                               $display(" try_getTime=%0t|receiver=%0d",$time,a);
                             else
                               $display("failed");
                             
                             mb2.peek(a);
                             $display(" peek Time=%0t|receiver=%0d",$time,a);
                             
                             
                             $display("no of messages in receiver=%0d",mb2.num());
                           end
                       end
                     endtask
                     
                   endclass
                   
                   module tb;
                     A a;
                     B b;
                     mailbox mb = new(3);
                     
                     initial begin
                       
                     
                       a = new(mb);
                       b = new(mb);
                       repeat(3) begin
                         fork
                         a.trans();
                         b.rec();
                         join
                        
                                  
                     end
                     end
                   endmodule
                   
/* output

run -all
# try_put Time=0|mailbox=1
#  peek Time=0|mailbox=1
# no of messages in mailbox=1
# try_put Time=0|mailbox=2
#  peek Time=0|mailbox=1
# no of messages in mailbox=2
# try_put Time=0|mailbox=2
#  peek Time=0|mailbox=1
# no of messages in mailbox=3
# failed
#  peek Time=0|mailbox=1
# no of messages in mailbox=3
#  try_getTime=0|receiver=1
#  peek Time=0|receiver=2
# no of messages in receiver=2
#  try_getTime=0|receiver=2
#  peek Time=0|receiver=2
# no of messages in receiver=1
#  try_getTime=0|receiver=2
# exit

*/

