module top;

string str="medhavi";
string str2;

initial begin
	$display("str=%p",str);
	str2=str; // initialising memory in str2
	for(int i=0; i<str.len(); i++)
		str2[str.len()-1-i]=str[i];
	$display("after reversal str2=%p",str2);

end
endmodule
