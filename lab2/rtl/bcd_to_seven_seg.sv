`default_nettype none

module bcd_to_seven_seg (
    input logic [3:0] bcd_val,
    output logic [6:0] seven_seg_val
);

always_comb begin
    case(bcd_val)
        4'h1: seven_seg_val = 7'b1111001;
        4'h2: seven_seg_val = 7'b0100100;
        4'h3: seven_seg_val = 7'b0110000;
        4'h4: seven_seg_val = 7'b0011001;
        4'h5: seven_seg_val = 7'b0010010;
        4'h6: seven_seg_val = 7'b0000010;
        4'h7: seven_seg_val = 7'b1111000;
        4'h8: seven_seg_val = 7'b0000000;
        4'h9: seven_seg_val = 7'b0011000;
        default: seven_seg_val = 7'b1111111;
    endcase
end
endmodule
