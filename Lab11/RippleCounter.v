module RippleCounter (
    input wire clk,
    input wire reset,
    output wire [2:0] count
);

    TFlipFlop TFF0 (
        .T(1'b1),
        .clk(clk),
        .reset(reset),
        .Q(count[0])
    );

    TFlipFlop TFF1 (
        .T(1'b1),
        .clk(count[0]),
        .reset(reset),
        .Q(count[1])
    );

    TFlipFlop TFF2 (
        .T(1'b1),
        .clk(count[1]),
        .reset(reset),
        .Q(count[2])
    );

endmodule