`timescale 1ns/1ps

module top;

time t;
realtime rt;

initial begin
	#0.7;
	t=$time; // integer type will rounf off 0.7 ~ 1
	rt=$realtime;
	$display("time t=%0f, realtime rt=%0f", t, rt);
end

endmodule
