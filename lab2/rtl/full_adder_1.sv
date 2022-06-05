`default_nettype none

module full_adder_1 (
    input logic a, b, ci,
    output logic s, co
);
    assign s = ^{a, b, ci};
    assign co = (a ^ b) ? ci : b;

endmodule
