`default_nettype none

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

// TODO: make a n-bit BCD to 7-seg decoder
genvar i;
generate
    for (i = 0; i < 2; i = i + 1) begin: converter
        bcd_to_seven_seg decoder (
            .bcd_val(d_bcd[i]),
            .seven_seg_val(d[i])
        );
    end
endgenerate

endmodule