module top();

integer arrQ[$];
integer arrDA[];

initial begin
	arrDA=new[5];
	foreach(arrDA[i])
		arrDA[i]=$urandom_range(0,20);
	arrQ=arrDA;
	$display("arrDA=%p",arrDA);
	$display("arrQ=%p",arrQ);
end

endmodule
