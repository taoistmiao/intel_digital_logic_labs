`default_nettype none

// convert SW[3:0] to 2-digit decimal numbers on HEX1, HEX0 (00-15)
module part2 (
    input logic [3:0] SW,
    output logic [6:0] HEX1, HEX0
);

logic [3:0] bcd_vals [1:0];
logic [6:0] seven_seg_vals [1:0];

assign {HEX1, HEX0} = {seven_seg_vals[1], seven_seg_vals[0]};

hex_to_bcd converter (
    .hex_val(SW),
    .bcd_vals(bcd_vals)
);

bcd_to_7_seg_n #(.N(2)) (
    .bcd_vals(bcd_vals),
    .seven_seg_vals(seven_seg_vals)
);

endmodule
