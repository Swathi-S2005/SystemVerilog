// Code your testbench here
// or browse Examples
typedef enum { PENNY=1, FIVECENTS=5, DIME=10, QUARTER=25, DOLLAR=100 } Cents;

module tb;
	Cents 	myCent;

	initial begin
      $cast (myCent, 10 );
		$display ("Money=%s", myCent.name());
	end
endmodule
