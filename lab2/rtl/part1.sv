`default_nettype none

// not strictly following the requirement of manual design with basic Boolean expressions
// SW[7:4],SW[3:0] represent two BCD digits, displayed on HEX1, HEX2
module part1 (
    input logic [7:0] SW,
    output logic [6:0] HEX1, HEX0
);

logic [3:0] bcd_vals [1:0];
logic [6:0] seven_seg_vals [1:0];

assign {bcd_vals[1], bcd_vals[0]}= SW; // bcd_vals = SW; NOTE: unpacked array can't be assigned packed array
assign {HEX1, HEX0} = {seven_seg_vals[1], seven_seg_vals[0]};

// NOTE: identifier after parameters
bcd_to_7_seg_n #(.N(2)) decoder (
    .bcd_vals(bcd_vals),
    .seven_seg_vals(seven_seg_vals)
);

endmodule
