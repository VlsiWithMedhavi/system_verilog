module top;

reg [2:0] multi_arr[2][5];
int i, j;
initial begin
	// iniitalising all array element
	for(i=0; i<2; i++) begin
		for(j=0; j<5; j++) begin
			multi_arr[i][j]=5*i+j;
			$display("multi_arr[%0d][%0d]=%0b", i, j, multi_arr[i][j]);
		end
	end
	$display("multi_arr[1][1][2]=%0b", multi_arr[1][1][0]);
end


endmodule
