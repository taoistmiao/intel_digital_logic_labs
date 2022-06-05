`default_nettype none

// convert SW[3:0] to 2-digit decimal numbers on HEX1, HEX0 (00-15)
module part2 (
    input logic [3:0] SW,
    output logic [6:0] HEX1, HEX0
);

logic [3:0] V;
logic [3:0] d_bcd [1:0];
logic [6:0] d [1:0];

assign V = SW;
assign {HEX1, HEX0} = {d[1], d[0]};

assign {d_bcd[1], d_bcd[0]} = V > 9 ? {4'd1, V-4'd10} : {4'd0, V};

bcd_to_7_seg_n #(.N(2)) decoders (
    .bcd_vals(d_bcd),
    .seven_seg_vals(d)
);

endmodule
