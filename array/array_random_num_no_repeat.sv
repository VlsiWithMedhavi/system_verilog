module top;

parameter RANDOM_NUM_GEN=20;

int arr[RANDOM_NUM_GEN];
int num;
bit match_f; // '1' is repeat num found else '0'

initial begin
	for(int i=0; i<RANDOM_NUM_GEN; i++) begin // next array index
		num=$urandom_range(0,RANDOM_NUM_GEN-1);
		match_f=0; // no match for current index that will be compared
		for(int j=0; j<i; j++) begin // compare for all elements filled in array
			if(num==arr[j]) begin
				i=i-1; // discard and regenarate new random number for that particular index
				match_f=1; // one of the elements is already present in array
			end
			if(match_f!=1)
				arr[i]=num; // assign to array if ne random number is generated
		end
	end
	$display("arr=%p",arr);
end

endmodule
