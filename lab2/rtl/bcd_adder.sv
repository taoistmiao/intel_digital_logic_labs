`default_nettype none

// Add two BCD digits, output sum as two BCD digits
module bcd_adder (
    input logic [3:0] vals [1:0],
    input logic ci,
    output logic [3:0] results [1:0]
);

    logic [4:0] bin_sum;

    full_adder_n #(.N(4)) (
        .a(vals[1]),
        .b(vals[0]),
        .ci(ci),
        .s(bin_sum[3:0]),
        .co(bin_sum[4])
    );

    bin_to_bcd_5_bit (
        .bin_val(bin_sum),
        .bcd_vals(results)
    );

endmodule