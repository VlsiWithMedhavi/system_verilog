module top;

bit [3:0] bitA, bitB, bitC;

initial begin
	bitA=$urandom; bitB=$urandom; bitC=$urandom;
	$display("bitA=%0b",bitA);
	$display("bitB=%0b",bitB);
	$display("bitC=%0b",bitC);
	$display("OR operation=%0b", bitA|bitB|bitC);
	$display("AND operation=%0b", bitA&bitB&bitC);
	$display("EXOR operation=%0b", bitA^bitB^bitC);
	$display("slicing operation bitC={bitA[1:0],bitB[1:0]}=%0b", {bitA[1:0],bitB[1:0]});


	// packed array incorrect declaration
	// bit bitA[3:0]
	
	// packed array supports all vector operations i.e
	// arithemetic, logical, equality, relational, shift, concatenation
	// replication, conditional, bitwise, unary, etc

end


endmodule
