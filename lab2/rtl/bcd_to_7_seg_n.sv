`default_nettype none

// instantiate multiple instances of BCD to 7 segment decoder
module bcd_to_7_seg_n
#(parameter N = 1)
(
    input logic [3:0] bcd_vals [N-1:0],
    output logic [6:0] seven_seg_vals [N-1:0]
);

    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin: decoders
            bcd_to_7_seg_1 decoder (
                .bcd_val(bcd_vals[i]),
                .seven_seg_val(seven_seg_vals[i])
            );
        end
    endgenerate

endmodule
