module top;

integer intA[5];
string SA[5];

initial begin
	intA={1, 2, 3, 4, 5};
	SA={"a", "b", "c", "d", "e"};
	$display("intA=%p",intA);
	$display("SA=%p",SA);

	// assigning strig arr to int type array
	//intA=SA; // error
	//$display("after assigning SA to intA=%p",intA);

	// static casting
	for(int i=0; i<5; i++) 
		intA[i]=integer'(SA[i]); // casting cant be performed on entire array at once, only element by element 
	$display("after assigning SA to intA=%p",intA);

end

endmodule
