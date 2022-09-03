module part5 (
    input logic [7:0] SW,
    input logic [1:0] KEY,
    output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5,
    output logic [0:0] LEDR
);
    // internal signals
    logic [7:0] D;
    assign D = SW;
    logic clk;
    assign clk = KEY[1];
    logic rst_n;
    assign rst_n = KEY[0];
    logic [7:0] A, B, S;
    logic cout;

    // input A
    always_ff @(posedge clk, negedge rst_n) begin
        if (!rst_n) begin
            A <= 8'd0;
        end else begin
            A <= D;
        end
    end

    // input B
    assign B = D;
    
    // add A and B
    assign {cout, S} = A + B;

    // visualize
    hex_to_7_seg A_upper (
        .hex_value(A[7:4]),
        .converted_value(HEX3)
    );
    hex_to_7_seg A_lower (
        .hex_value(A[3:0]),
        .converted_value(HEX2)
    );
    hex_to_7_seg B_upper (
        .hex_value(B[7:4]),
        .converted_value(HEX1)
    );
    hex_to_7_seg B_lower (
        .hex_value(B[3:0]),
        .converted_value(HEX0)
    );
    hex_to_7_seg S_upper (
        .hex_value(S[7:4]),
        .converted_value(HEX5)
    );
    hex_to_7_seg S_lower (
        .hex_value(S[3:0]),
        .converted_value(HEX4)
    );
    assign LEDR[0] = cout;

endmodule