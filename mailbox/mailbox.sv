// create a FIFO behaviour in SV


module tb();

mailbox mbox1 = new(10);
integer a, count;

initial begin
	// put 5 elements in mbox1
	mbox1.put(10);
	mbox1.put(20);
	mbox1.put(30);
	mbox1.put(40);
	mbox1.put(50);

	// num of elements in mailbox
	count = mbox1.num();
	$display("num of elements in mbox1=%0d", count);

	// get 5 elements from mbox1
	repeat(5) begin
		mbox1.get(a);
		$display("a=%0d",a);
	end
end

endmodule
