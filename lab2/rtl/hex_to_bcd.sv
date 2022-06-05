`default_nettype none
module hex_to_bcd (
    input logic [3:0] hex_val,
    output logic [3:0] bcd_vals [1:0]
);
    assign {bcd_vals[1], bcd_vals[0]} = hex_val > 9 ? {4'd1, hex_val-4'd10} : {4'd0, hex_val};

endmodule
