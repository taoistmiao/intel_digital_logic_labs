module part3 (
    input logic [1:0] SW,
    output logic [0:0] LEDR
);

    logic Qm;

    part2 first (
        .clk(~SW[1]),
        .D(SW[0]),
        .Q(Qm)
    );

    part2 second (
        .clk(SW[1]),
        .D(Qm),
        .Q(LEDR[0])
    );

endmodule