`default_nettype none

module part2 (
    input logic [9:0] SW,
    output logic [9:0] LEDR
);
    logic [3:0] X, Y, M;
    logic s;

    assign s = SW[9];
    assign X = SW[3:0];
    assign Y = SW[7:4];
    assign M = s ? Y : X;

    assign LEDR[9] = s;
    assign LEDR[8:0] = {5'b0, M};    

endmodule
