module top;

int DA[];
int AA[int];
int index;

initial begin
	DA=new[5];

	foreach(DA[i])
		DA[i]=i;
	$display("DA=%p",DA);

	//deleting DA with index value will delete the entire array
	index=1;
	DA.delete(index); // compiler doesnt thrw error on passing index, simply ignores and deletes the entire array
	$display("after delete DA=%p",DA);

	AA[0]=10;
	AA[1]=20;
	AA[2]=30;
	AA[3]=40;
	AA[4]=50;
	$display("AA=%p",AA);
	
	//deleting AA with index value will delete the specific index of associative array
	index=1;
	AA.delete(index);
	$display("after delete AA=%p",AA);
end

endmodule
