`default_nettype none

// not strictly following the requirement of manual design
module part1 (
    input logic [7:0] SW,
    output logic [6:0] HEX1, HEX0
);

logic [3:0] bcd_vals [1:0];
logic [6:0] seven_seg_vals [1:0];

assign {bcd_vals[1], bcd_vals[0]}= SW; // bad_vals = SW; unpacked array can't be assigned packed array
assign {HEX1, HEX0} = {seven_seg_vals[1], seven_seg_vals[0]};

genvar i;
generate
    for (i = 0; i < 2; i = i + 1) begin: decoder
        bcd_to_seven_seg decoder (
            .bcd_val(bcd_vals[i]),
            .seven_seg_val(seven_seg_vals[i])
        );
    end
endgenerate

endmodule
