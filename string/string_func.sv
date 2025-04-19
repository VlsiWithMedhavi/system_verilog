module top();

string str, str1, str2;

initial begin
	str="medhavi kosta";
	$display("str=%s", str);

	// length of string
	$display("str length = %0d", str.len());

	// replace a char at particular position in str
	str.putc(7,"-");
	$display("str after putc = %s", str);

	// get char from particular position in str
	$display("first char of str = %s", str.getc(0));

	// convert lower to upper case
	$display("convert str to upper chars = %s", str.toupper());
	
	// convert upper to lower case
	$display("convert str to low chars = %s", str.tolower());

	// rmeove "-" from str
	$display("removing - from str = %s", {str.substr(0,6), str.substr(8,12)});


	// compare 2 string 
	// returns '0' if string match exactly else prints the integer difference between first char unnmatch
	str1="medhavi";
	str2="medhavj";
	$display(" comparing str1 to str2 = %0d", str1.compare(str2)); // -1 output
	$display(" comparing str1 to str2 = %0d", str2.compare(str1)); // +1 output
	str1="medhavi";
	str2="MEDHAvi";
	$display(" i comparing str1 to str2 = %0d", str2.icompare(str1)); // 0 output case insensitive compare

end

endmodule
