`default_nettype none

module mux_2bit_4to1(
    input logic [1:0] S, U, V, W, X,
    output logic [1:0] M
);

assign M = (S == 2'b00) ? U : (S == 2'b01) ? V : (S == 2'b10) ? W : X;

endmodule
