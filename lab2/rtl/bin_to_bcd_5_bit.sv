`default_nettype none

// TODO: parameterized this module to n bit conversion
module bin_to_bcd_5_bit (
    input logic [4:0] bin_val,
    output logic [3:0] bcd_vals [1:0]
);
    
    always_comb begin
        bcd_vals[1] = 4'd0;
        bcd_vals[0] = 4'd0;
        if (bin_val > 5'd29) begin
            bcd_vals[1] = 4'd3;
            bcd_vals[0] = bin_val - 5'd30;
        end else if (bin_val > 5'd19) begin
            bcd_vals[1] = 4'd2;
            bcd_vals[0] = bin_val - 5'd20;
        end else if (bin_val > 5'd9) begin
            bcd_vals[1] = 4'd1;
            bcd_vals[0] = bin_val - 5'd10;
        end else begin
            bcd_vals[0] = bin_val;
        end
    end

endmodule