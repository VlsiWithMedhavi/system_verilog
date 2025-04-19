module top;

string arr[10:1];

initial begin
	foreach(arr[i]) // automatically iterates "i : 1 to 10" elements in arr
		arr[i]=$sformatf("str%0d", i);
	$display("arr=%p", arr);
end

endmodule
