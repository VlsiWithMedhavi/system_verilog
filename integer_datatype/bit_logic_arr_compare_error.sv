/*
output : compile time error
Array assignment or comparison to type 'bit[4:0] $[0:4]' from type 'reg[4:0] $[0:4]':  Elements must both be 2-state or both be 4-state.
*/

module top();

bit [4:0] c [5]; // bit is 2 state, unsigned
logic [4:0] d [5]; // logic is 4 state, unsigned

initial begin
	c[0]=5'b11x1z;
	c[1]=5'b00x1z;
	c[2]=5'bx1x1z;
	c[3]=5'bzxx1z;
	c[4]=5'b00x11;
	$display("c=%p", c);

	d[0]=5'b11x1z;
	d[1]=5'b00x1z;
	d[2]=5'bx1x1z;
	d[3]=5'bzxx1z;
	d[4]=5'b00x11;
	$display("d=%p", d);

	if(c==d);
end

endmodule
