module part4 (
    input logic D,
    input logic clk,
    output logic Qa, Qb, Qc
);

    // D-latch
    always_latch begin
        if (clk) begin
            Qa = D;        
        end
    end

    // posedge DFF
    always_ff @(posedge clk) begin
        Qb <= D;
    end

    // negedge DFF
    always_ff @(negedge clk) begin
        Qc <= D;
    end

endmodule