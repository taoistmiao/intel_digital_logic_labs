`default_nettype none

module part6 (
    input logic [9:0] SW,
    output logic [9:0] LEDR,
    output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
);

logic [1:0] M0, M1, M2, M3, M4, M5;

// SW[7:6] = 'd'
// SW[5:4] = 'E'
// SW[3:2] = '1'
// SW[1:0] = ' '
mux_2bit_6to1 MUX0 (
    .S(SW[9:7]),
    .U(SW[1:0]), // ' '
    .V(SW[1:0]), // ' '
    .W(SW[1:0]), // ' '
    .X(2'b00), // 'd'
    .Y(SW[5:4]), // 'E'
    .Z(SW[3:2]), // '1'
    .M(M0)
);

char_7seg H0 (
    .C(M0),
    .D(HEX0)
);

mux_2bit_6to1 MUX1 (
    .S(SW[9:7]),
    .U(SW[3:2]),
    .V(SW[1:0]),
    .W(SW[1:0]),
    .X(SW[1:0]),
    .Y(2'b00),
    .Z(SW[5:4]),
    .M(M1)
);

char_7seg H1 (
    .C(M1),
    .D(HEX1)
);

mux_2bit_6to1 MUX2 (
    .S(SW[9:7]),
    .U(SW[5:4]),
    .V(SW[3:2]),
    .W(SW[1:0]),
    .X(SW[1:0]),
    .Y(SW[1:0]),
    .Z(2'b00),
    .M(M2)
);

char_7seg H2 (
    .C(M2),
    .D(HEX2)
);

mux_2bit_6to1 MUX3 (
    .S(SW[9:7]),
    .U(2'b00),
    .V(SW[5:4]),
    .W(SW[3:2]),
    .X(SW[1:0]),
    .Y(SW[1:0]),
    .Z(SW[1:0]),
    .M(M3)
);

char_7seg H3 (
    .C(M3),
    .D(HEX3)
);

mux_2bit_6to1 MUX4 (
    .S(SW[9:7]),
    .U(SW[1:0]),
    .V(2'b00),
    .W(SW[5:4]),
    .X(SW[3:2]),
    .Y(SW[1:0]),
    .Z(SW[1:0]),
    .M(M4)
);

char_7seg H4 (
    .C(M4),
    .D(HEX4)
);

mux_2bit_6to1 MUX5 (
    .S(SW[9:7]),
    .U(SW[1:0]),
    .V(SW[1:0]),
    .W(2'b00),
    .X(SW[5:4]),
    .Y(SW[3:2]),
    .Z(SW[1:0]),
    .M(M5)
);

char_7seg H5 (
    .C(M5),
    .D(HEX5)
);

endmodule
