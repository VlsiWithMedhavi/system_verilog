module top;

int AA[int];
int index;
string index1;
int value;
int DA_value[$];
int DA_index[$];
int num_ele;
int max_value;

int AA1[string];
int DA1_value[$];
string DA1_index[$];

initial begin

	for(int i=0; i<10; i++) begin
		index=$urandom_range(10,40);
		value=$urandom_range(200,300);
		AA[index]=value;
	end
	$display("AA=%p",AA);

	// print elements of AA in reverse order
	AA.first(index);
	DA_value.push_back(AA[index]);
	DA_index.push_back(index);
	num_ele=AA.num();
	for(int i=0; i<num_ele-1; i++) begin
		AA.next(index);
		DA_index.push_back(index);
		DA_value.push_back(AA[index]);
	end
	//$display("DA_index=%p",DA_index);
	DA_value.reverse();
	$display("AA after reverse =%p",DA_value);
	
	/*
	* or can be done manually as below
	for(int i=0; i<num_ele; i++) begin
		index=DA_index[num_ele-1-i];
		value=DA_value[num_ele-1-i];
		$display("DA_index[%0d]=%0d", num_ele-1-i, DA_index[num_ele-1-i]);
	end
	$display("AA after reverse =%p",AA);
	*/

	// find max index 
	AA.last(index); // contains last index value that is largest as AA sorts internally in ascending order
	$display("largest index of AA = %0d", index);

	// find max value
	for(int i=0; i<num_ele-1; i++) begin
		if(DA_value[i] > max_value)
				max_value=DA_value[i];
	end
	$display("largest value stored in AA = %0d", max_value);
	
	
	// string index type A
	for(int i=0; i<10; i++) begin
		index1=$sformatf("str%0d",i);
		value=$urandom_range(0,30);
		AA1[index1]=value;
	end
	$display("AA1=%p",AA1);

	// print elements of AA in reverse order
	AA1.first(index1);
	DA1_value.push_back(AA1[index1]);
	DA1_index.push_back(index1);
	num_ele=AA1.num();
	for(int i=0; i<num_ele-1; i++) begin
		AA1.next(index1);
		DA1_index.push_back(index1);
		DA1_value.push_back(AA1[index1]);
	end
	DA1_value.reverse();
	$display("AA1 after reverse =%p",DA1_value);

	// find max index 
	AA1.last(index1); // contains last index value that is largest as AA1 sorts internally in ascending order
	$display("largest index of AA1 = %0d", index1);

	// find max value
	max_value=0; // used above so reseting max value to 0
	for(int i=0; i<num_ele-1; i++) begin
		if(DA1_value[i] > max_value)
				max_value=DA1_value[i];
	end
	$display("largest value stored in AA1 = %0d", max_value);

end

endmodule
