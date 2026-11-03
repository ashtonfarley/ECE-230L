
module t_flip_flop(
    input T,
    input clk,
    output Q,
    output Qbar
);

    jk_flip_flop t_storage(
        .J(T),
        .K(T),
        .clk(clk),
        .Q(Q),
        .Qbar(Qbar)
    );

endmodule
