module top();

// function that output 1 if numbers match else outputs 0
function void compare(input int a, input int b, output flag);
begin
	if(a==b) begin
		flag=1;
		$display("inputs MATCH");
	end
	else begin
		flag=0;
		$error("inputs MIS-MATCH"); // display error msg along with line number
	end
end
endfunction

integer p, q;
bit r;

initial begin
	p=10; q=20;
	compare(p, q, r);
	$display("flag=%0d",r);
	p=30; q=30;
	compare(p, q, r);
	$display("flag=%0d",r);
end

endmodule
