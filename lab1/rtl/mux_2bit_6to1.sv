`default_nettype none

module mux_2bit_6to1(
	input logic [2:0] S,
	input logic [1:0] U, V, W, X, Y, Z,
	output logic [1:0] M
);

assign M =	(S == 3'b000) ? U : (S == 3'b001) ? V : (S == 3'b010) ? W : 
				(S == 3'b011) ? X : (S == 3'b100) ? Y : Z;

endmodule