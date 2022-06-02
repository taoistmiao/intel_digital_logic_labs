`default_nettype none

module part4 (
    input logic [1:0] SW,
    output logic [6:0] HEX0
);
char_7seg H0 (
    .C(SW),
    .D(HEX0)
);

endmodule
