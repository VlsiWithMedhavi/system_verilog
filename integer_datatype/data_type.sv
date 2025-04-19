module top();

// data type initialisation during declaration itself
string str1="medhavi";
real a=3.14;
int arr[5]={1, 2, 3, 4, 5};
string arr1[3]={"hi", "hello", "bye"};
int arr2[2][4] = {{5, 6, 7, 8} , {1, 2, 3, 4}};

initial begin
	$display("str1=%s",str1);
	$display("a=%0f",a);
	$display("arr=%p",arr);
	$display("arr1=%p",arr1);
	$display("arr2=%p",arr2);

	for(int i=0; i<5; i++) 
		$display("arr[%0d]=%0d", i, arr[i]);
	foreach (arr1[i]) 
		$display("arr1[%0d]=%s", i, arr1[i]);
	for(int i=0; i<2; i++) begin 
		for(int j=0; j<4; j++) 
			$display("arr2[%0d][%0d]=%0d", i, j, arr2[i][j]);
	end
end

endmodule
