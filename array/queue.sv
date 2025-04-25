module top;

integer arrQ[$]; // declaring queue of infinite size
int arrQ1[$:4]; // declring Queue of max size 5

initial begin
	/*
	foreach(arrQ[i]) // cant be used because memory is not llocated
		arrQ[i]=$urandom_range(50,100);
	$display("arrQ=%p",arrQ); // empty
	*/

   	for(int i=0; i<5; i++)
		arrQ[i]=$urandom_range(50,100);
	$display("arrQ=%p",arrQ);
	
   	for(int i=0; i<5; i++)
		arrQ1[i]=$urandom_range(10,20);
	$display("arrQ1=%p",arrQ1);

	// comparing both queues
	if(arrQ==arrQ1) 
		$display("queues match");
	else
		$display("queues donot match");
	// copying one queue to another and compring
	arrQ1=arrQ; // error cant be compared as both are of different datatype int and integer
	$display("arrQ=%p",arrQ);
	$display("arrQ1=%p",arrQ1);
	if(arrQ==arrQ1) 
		$display("queues match");
	else
		$display("queues donot match");

end

endmodule
