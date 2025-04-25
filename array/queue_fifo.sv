module fifo;

parameter FIFO_DEPTH=10; 
`define FIFO_DATATYPE integer

`FIFO_DATATYPE intQ[$:FIFO_DEPTH-1];

// fifo put method : push data into fifo
function void put(integer i);
begin
	intQ.push_back(i);
end
endfunction

// fifo get method : pop data out of fifo
function integer get();
begin
	integer j;
	j=intQ.pop_front();
	return j;
end
endfunction

endmodule


module top;

fifo #(.FIFO_DEPTH(5)) dut(); // fifo module instantiation
//defparam dut.FIFO_DATATYPE ="bit";

integer k;

initial begin
	dut.put(10);
	dut.put(20);
	dut.put(30);
	$display("fifo after put=%p", dut.intQ);

	repeat(3) begin
		k=dut.get();
		$display("k=%0d", k);
	end
	$display("fifo after pop=%p", dut.intQ);
end


endmodule
