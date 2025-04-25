module top;

int arr[5];
int arr1[5];
bit [1:0] packed_arr;

initial begin
	for(int i=0; i<5; i++) begin
		arr[i]=$urandom_range(50,100);
		$display("display using for loop: arr[%0d]=%0d", i , arr[i]);
	end
	$display("packed format display: arr=%p",arr);

	foreach(arr[i])
		$display("display using foreach: arr[%0d]=%0d", i , arr[i]);

	for(int i=0; i<5; i++)
		arr1[i]=$urandom_range(10,20);
	$display("packed format display: arr1=%p",arr1);

	// array compare using foreach
	foreach(arr[i]) begin
		if(arr[i]==arr1[i])
			$display("arr and arr1 MATCH");
		else
			$display("arr and arr1 MIS-MATCH");
	end
	
	// array compare using for loop
	for(int i=0; i<5; i++) begin
		if(arr[i]==arr1[i])
			$display("arr and arr1 MATCH");
		else
			$display("arr and arr1 MIS-MATCH");
	end

	// copy arr to arr1 using for loop and compare
	for(int i=0; i<5; i++) begin
		arr1[i]=arr[i];
	end
	for(int i=0; i<5; i++) begin
		if(arr[i]==arr1[i])
			$display("arr and arr1 MATCH");
		else
			$display("arr and arr1 MIS-MATCH");
	end
	
	// assigning vlue to packed arr
	packed_arr=$urandom;
	$display("packed_arr=%0d",packed_arr);

end

endmodule
