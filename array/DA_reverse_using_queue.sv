module top;

integer intDA[];
integer intQ[$];

initial begin
	intDA=new[10];
	foreach(intDA[i])
		intDA[i]=$urandom_range(0,20);
	$display("intDA=%p",intDA);
	
	intQ=intDA;
	$display("intQ=%p",intQ);
	
	// reversing queue and copying to DA
	intQ.reverse();
	intDA=intQ;
	$display("reversed intDA=%p",intDA);

end

endmodule
