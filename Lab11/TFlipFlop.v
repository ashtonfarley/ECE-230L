module TFlipFlop (
    input wire T,
    input wire clk,
    input wire reset,
    output wire Q
);

    wire D;

    assign D = T ^ Q;

    DFlipFlop DFF (
        .D(D),
        .clk(clk),
        .reset(reset),
        .Q(Q)
    );

endmodule