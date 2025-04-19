module top();

function void sum (input integer num1, input integer num2, output integer out);
begin
	out=num1+num2;
end
endfunction

integer p, q, r;
integer intA1[5], intA2[5], intA3[5]; 

initial begin
	// add two integer number using "sum" function
	p=10; q=20;
	sum(p, q, r);
	$display("p=%0d, q=%0d, r=%0d", p, q, r);


	// add two elements of array using "sum" function and store it in third array
	foreach (intA1[i]) // SV construct instead of for loop, initialises i upto max array element
	begin
		intA1[i]=$urandom_range(0,10);
		intA2[i]=$urandom_range(0,10);
		sum(intA1[i], intA2[i], intA3[i]);
	end
	$display("intA1= %p", intA1); // display entire array in packed format
	$display("intA2= %p", intA2);
	$display("intA3= %p", intA3);

end

endmodule
