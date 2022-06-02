`default_nettype none

module part1 (
    input logic [9:0] SW,
    output logic [9:0] LEDR
);
    assign LEDR = SW;
endmodule
