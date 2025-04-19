module top();

// function that output 1 if numbers match else outputs 0
function compare(input int a, input int b);
begin
	if(a==b) begin
		compare=1;
		$display("inputs MATCH");
	end
	else begin
		compare=0;
		$fatal("inputs MIS-MATCH"); // display fatal msg along with line number and stop further simulation
	end
end
endfunction

integer p, q;
bit r;

initial begin
	p=10; q=20;
	r=compare(p, q);
	$display("flag=%0d",r);
	p=30; q=30;
	r=compare(p, q);
	$display("flag=%0d",r);
end

endmodule
