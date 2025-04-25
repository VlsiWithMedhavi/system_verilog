module top;

integer intA1[4:0]={1, 2, 3, 4, 5};
integer intA2[1:5];
integer intA3[5:1]={1, 2, 3, 4, 5};
integer intA4[-2:2];

initial begin
	intA2=intA1;
	foreach (intA2[i])
		$display("intA2[%0d]=%0d", i, intA2[i]);
	intA4=intA3;
	foreach (intA4[i])
		$display("intA4[%0d]=%0d", i, intA4[i]);
end

endmodule

/*
# intA2[1]=1
# intA2[2]=2
# intA2[3]=3
# intA2[4]=4
# intA2[5]=5
# intA4[-2]=1
# intA4[-1]=2
# intA4[0]=3
# intA4[1]=4
# intA4[2]=5
*
*/
