interface fa_inf;
  logic a;
  logic b;
  logic cin;
  logic sum;
  logic carry;
  
  modport dut(input a, input b, input cin, output sum, output carry);
  modport dri(output a, output b, output cin, input sum, input carry);
  modport mon(input a, input b, input cin, input sum, input carry);
  
  
  
  
endinterface
