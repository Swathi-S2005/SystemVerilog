// Code your testbench here
// or browse Examples
module enumeration;
  typedef enum{porsche, BMW , Ferrari, Lambo, Bugatti}cars1;
  initial begin
    cars1 showroom;
    for (int i=0;i<5;i++)
      begin
      showroom =cars1'(i);
    $display("showroom=%0d |showroom name = %s",showroom, showroom.name);
      end
  end
  
  typedef enum{porsche1=5, BMW1 , Ferrari1, Lambo1, Bugatti1}cars2;
  initial begin
    cars2 showroom;
    for (int i=5;i<9;i++)
      begin
      showroom =cars2'(i);
    $display("showroom=%0d |showroom name = %s",showroom, showroom.name);
      end
  end
  
  typedef enum{porsche2[4], BMW2 , Ferrari2, Lambo2, Bugatti2}cars3;
  initial begin
    cars3 showroom;
    for (int i=0;i<8;i++)
      begin
      showroom =cars3'(i);
    $display("showroom=%0d |showroom name = %s",showroom, showroom.name);
      end
  end
  
  typedef enum{porsche3[4]=5, BMW3 , Ferrari3, Lambo3, Bugatti3}cars4;
  initial begin
    cars4 showroom;
    for (int i=5;i<10;i++)
      begin
      showroom =cars4'(i);
    $display("showroom=%0d |showroom name = %s",showroom, showroom.name);
      end
  end
  
  typedef enum{porsche4[3:5], BMW4 , Ferrari4, Lambo4, Bugatti4}cars5;
  initial begin
    cars5 showroom;
    for (int i=0;i<5;i++)
      begin
      showroom =cars5'(i);
    $display("showroom=%0d |showroom name = %s",showroom, showroom.name);
      end
  end
  
  typedef enum{porsche5[3:5]=5, BMW5 , Ferrari5, Lambo5, Bugatti5}cars6;
  initial begin
    cars6 showroom;
    for (int i=5;i<10;i++)
      begin
      showroom =cars6'(i);
    $display("showroom=%0d |showroom name = %s",showroom, showroom.name);
      end
  end
endmodule

             
