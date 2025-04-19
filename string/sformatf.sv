module top();

string str[10];

initial begin
	for(int i=0; i<10; i++)
		str[i]=$sformatf("string%0d",i);
	$display("str=%p", str);
end

endmodule
