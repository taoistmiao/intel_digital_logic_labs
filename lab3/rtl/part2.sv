module part2 (
    input   logic clk, D,
    output  logic Q
);

    wire S, R, R_g, S_g, Qa, Qb;
    assign S = D;
    assign R = ~D;
    assign R_g = R & clk;
    assign S_g = S & clk;
    assign Qa = ~(R_g | Qb);
    assign Qb = ~(S_g | Qa);

    assign Q = Qa;
endmodule