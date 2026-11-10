module top(
    input wire btnU,
    input wire btnC,
    output wire [6:0] led
);

    wire [2:0] ripple_count;
    wire [2:0] modulo_count;
    wire modulo_out;

    RippleCounter RC (
        .clk(btnC),
        .reset(btnU),
        .count(ripple_count)
    );

    ModuloCounter MC (
        .clk(btnC),
        .reset(btnU),
        .count(modulo_count),
        .out(modulo_out)
    );

    assign led[2:0] = ripple_count;
    assign led[5:3] = modulo_count;
    assign led[6] = modulo_out;

endmodule