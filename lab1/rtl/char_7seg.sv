`default_nettype none

module char_7seg(
	input logic [1:0] C,
	output logic [6:0] D
);

assign D[0] = C[1] | ~C[0];
assign D[1] = (C[1] | C[0]) & (~C[1] | C[0]);
assign D[2] = (C[1] | C[0]) & (~C[1] | C[0]);
assign D[3] = (C[1] | C[0]) & (C[1] | ~C[0]);
assign D[4] = (C[1] | C[0]) & (C[1] | ~C[0]);
assign D[5] = C[1] | ~C[0];
assign D[6] = (C[1] | C[0]) & (C[1] | ~C[0]);

endmodule
