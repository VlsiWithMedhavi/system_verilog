module top;

integer intA1[5]={1, 2, 3, 4, 5};
integer intA2[2];

initial begin
	intA2=intA1; // not possible as array widths dont match
	foreach (intA2[i])
		$display("intA2[%0d]=%0d", i, intA2[i]);
end

endmodule
