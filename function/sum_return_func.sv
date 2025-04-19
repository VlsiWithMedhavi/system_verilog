module top();

function integer sum (input integer num1, input integer num2);
begin
	sum=num1+num2;
end
endfunction

integer intA1[5], intA2[5], intA3[5]; 

initial begin
	// add two elements of array using "sum" function and store it in third array
	foreach (intA1[i]) // SV construct instead of for loop, initialises i upto max array element
	begin
		intA1[i]=$urandom_range(0,10);
		intA2[i]=$urandom_range(0,10);
		intA3[i]=sum(intA1[i], intA2[i]);
	end
	$display("intA1= %p", intA1); // display entire array in packed format
	$display("intA2= %p", intA2);
	$display("intA3= %p", intA3);

end

endmodule
