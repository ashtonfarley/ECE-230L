
module jk_flip_flop(
    input J,
    input K,
    input clk,
    output Q,
    output Qbar
);

    wire D;

    assign D = (J & Qbar) | (~K & Q);

    d_flip_flop jk_storage(
        .D(D),
        .clk(clk),
        .Q(Q),
        .Qbar(Qbar)
    );

endmodule
