`default_nettype none

module part5 (
    input logic [9:0] SW,
    output logic [9:0] LEDR,
    output logic [6:0] HEX0, HEX1, HEX2, HEX3
);

logic [1:0] M0, M1, M2, M3;

mux_2bit_4to1 MUX0 (
    .S(SW[9:8]+2'd3),
    .U(SW[7:6]),
    .V(SW[5:4]),
    .W(SW[3:2]),
    .X(SW[1:0]),
    .M(M0)
);

char_7seg H0 (
    .C(M0),
    .D(HEX0)
);

mux_2bit_4to1 MUX1 (
    .S(SW[9:8]+2'd2),
    .U(SW[7:6]),
    .V(SW[5:4]),
    .W(SW[3:2]),
    .X(SW[1:0]),
    .M(M1)
);

char_7seg H1 (
    .C(M1),
    .D(HEX1)
);

mux_2bit_4to1 MUX2 (
    .S(SW[9:8]+2'd1),
    .U(SW[7:6]),
    .V(SW[5:4]),
    .W(SW[3:2]),
    .X(SW[1:0]),
    .M(M2)
);

char_7seg H2 (
    .C(M2),
    .D(HEX2)
);

mux_2bit_4to1 MUX3 (
    .S(SW[9:8]),
    .U(SW[7:6]),
    .V(SW[5:4]),
    .W(SW[3:2]),
    .X(SW[1:0]),
    .M(M3)
);

char_7seg H3 (
    .C(M3),
    .D(HEX3)
);

endmodule
