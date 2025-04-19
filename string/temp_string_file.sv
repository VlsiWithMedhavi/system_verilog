module top;

integer temp_h; // temperature file handler
string str;
real temp_arr[10];
int temp_arr_len;
int min_temp, max_temp;


initial begin

	// reading temp values from "temp.txt" file
	temp_h=$fopen("temp.txt", "r" ); // open temp.txt with read permission
	for(int i=0; !$feof(temp_h); i++) begin // keep adding data to array till "eof" is not found
		$fgets(str, temp_h);
		temp_arr[i]=str.atoreal();
		temp_arr_len++;
	end
	$fclose(temp_h);
	$display("temp_arr=%p temp_arr_len=%0d", temp_arr, temp_arr_len);

	// find min and mx temp value
	min_temp=temp_arr[0]; // initialising initial min and max temo values
	max_temp=temp_arr[0];
	for(int i=1; i<temp_arr_len-1; i++) begin // as eof read for loop one extra time
		if(temp_arr[i] > max_temp)
			max_temp=temp_arr[i];
		if(temp_arr[i] < min_temp)
			min_temp=temp_arr[i];
	end
	$display("min_temp=%0d, max_temp=%0d", min_temp, max_temp);

	// print temp values in ascending order in "temp_out.txt"
	temp_h=$fopen("temp_out.txt", "w");
	temp_arr.sort();
	$display("temp_arr=%p", temp_arr);
	for(int i=0; i<temp_arr_len-1; i++) begin // as eof read for loop one extra time
		$fdisplay(temp_h, temp_arr[i]);
	end
	$fclose(temp_h);

end

endmodule
