`default_nettype none

module part4 (
    input logic [8:0] SW,
    output logic [6:0] HEX5, HEX3, HEX1, HEX0,
    output logic [9:9] LEDR
);
    // Do addition
    logic [3:0] bcd_addends [1:0];
    logic [3:0] bcd_sums [1:0];
    
    // TODO: make a module to do packed and unpacked conversion
    assign {bcd_addends[1], bcd_addends[0]} =  SW[7:0];

    bcd_adder adder (
        .vals(bcd_addends),
        .ci(SW[8]),
        .results(bcd_sums),
    );

    // Display results
    logic [3:0] bcd_vals [3:0];
    logic [6:0] seven_segs [3:0];
    assign {bcd_vals[3], bcd_vals[2], bcd_vals[1], bcd_vals[0]} = {bcd_addends[1], bcd_addends[0], bcd_sums[1], bcd_sums[0]};
    assign {HEX5, HEX3, HEX1, HEX0} = {seven_segs[3], seven_segs[2], seven_segs[1], seven_segs[0]};

    bcd_to_7_seg_n #(.N(4)) (
        .bcd_vals(bcd_vals),
        .seven_seg_vals(seven_segs)
    );
    // Error checker
    assign LEDR[9] = (bcd_addends[1] > 9) || (bcd_addends[0] > 9);

endmodule