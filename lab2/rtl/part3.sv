`default_nettype none

module part3 (
    input [8:0] SW,
    output [4:0] LEDR
);
    
    full_adder_n #(.N(4)) adder (
        .a(SW[7:4]),
        .b(SW[3:0]),
        .ci(SW[8]),
        .s(LEDR[3:0]),
        .co(LEDR[4])
    );

endmodule