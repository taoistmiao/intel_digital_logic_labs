`default_nettype none

module full_adder_n 
#(
    parameter N = 4
)
(
    input logic [N-1:0] a, b,
    input logic ci,
    output logic [N-1:0] s,
    output logic co
);
    
    logic [N:0] c;
    assign c[0] = ci;
    assign co = c[N];

    genvar i;
    generate
        for (i=0; i<N; i=i+1) begin: adders
            full_adder_1 adder (
                .a(a[i]),
                .b(b[i]),
                .ci(c[i]),
                .s(s[i]),
                .co(c[i+1])
            );
        end
    endgenerate

endmodule
