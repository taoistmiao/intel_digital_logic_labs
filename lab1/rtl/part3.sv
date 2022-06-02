`default_nettype none

module part3 (
    input [9:0] SW,
    output [1:0] LEDR
);

mux_2bit_4to1 MUX1 (
    .S(SW[9:8]),
    .U(SW[7:6]),
    .V(SW[5:4]),
    .W(SW[3:2]),
    .X(SW[1:0]),
    .M(LEDR[1:0])
);

endmodule
