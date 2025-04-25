module top;

mailbox mbox;
int a;

initial begin
	mbox=new(); // if you create mbox=new(2), only 2 memory location are allocated, mbox.put(3) will not work

	mbox.put(1);
	mbox.put(2);
	mbox.put(3);
	mbox.put(4);
	mbox.put(5);

	for(int i=0; i<5; i++) begin
		mbox.get(a);
		$display("a=%0d",a);
	end
end

endmodule
