module top;

int arr[]; // dynamic array declaration
int arr1[]; // dynamic array declaration

initial begin
	arr=new[5]; // allocating 5 memory location to dynamic array

	foreach (arr[i])
		arr[i]=$urandom_range(50,100);
	$display("arr=%p",arr);
	
	arr1=new[5]; // allocating 5 memory location to dynamic array

	foreach (arr1[i])
		arr1[i]=$urandom_range(10,20);
	$display("arr1=%p",arr1);

	//comparing arr and arr1
	for(int i=0; i<arr.size(); i++) 
	begin
		if(arr[i]==arr1[i])
			$display("arr[%0d] and arr1[%0d] MATCH", i, i);
	   	else	
			$display("arr[%0d] and arr1[%0d] MIS-MATCH", i, i);
	end

	// copy arr to arr1
	arr1=arr;
	if(arr==arr)
		$display("arr and arr1 MATCH");
	else	
    	$display("arr and arr1 MIS-MATCH");

	// resize arr to 10 elements retaining initial elements
	arr=new[10](arr);
	$display("arr=%p",arr);
	
end

endmodule
