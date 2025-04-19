module top();

integer a, b;

initial begin
	a=$urandom_range(10,20);
	b=$urandom_range(10,20);
	$display("a=%0d, b=%0d", a, b);

	// compare using if-else
	if(a==b)
		$display("MATCHED");
	else
		$display("MIS-MATCHED");

	// compare using assert
	assert(a==b)
		$display("MATCHED"); // assert displays a detailed error msg including line number. Used for debugging purposes
end

endmodule
