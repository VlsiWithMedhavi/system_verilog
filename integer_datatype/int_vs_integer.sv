module top();

int a; // default value is 0 as it has onlt 2 verilog level values i.e '0' and '1'
integer b; // default is x as it supports 4 logic level values i.e '0', '1', 'x', 'z'

initial begin
	$display("a=%0d, b=%0d", a, b);
end

endmodule

//-------------------------------------------------------------

module tb;

int i1;
integer i2;

initial begin
	i1=8'h8x;
	i2=8'h8x;
	$display("int i1=%0b, integer i2=%0b", i1, i2);

	i1=-50;
	i2=-70;
	$display("int i1=%0d, integer i2=%0d", i1, i2);
end

endmodule
