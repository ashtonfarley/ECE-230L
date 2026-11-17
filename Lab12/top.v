module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    wire onehotZ;
    wire binaryZ;

    wire [4:0] onehotState;
    wire [2:0] binaryState;

    onehot oh(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(onehotZ),
        .State(onehotState)
    );

    binary bn(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(binaryZ),
        .State(binaryState)
    );

    assign led[0] = onehotZ;
    assign led[1] = binaryZ;

    assign led[6:2] = onehotState;
    assign led[9:7] = binaryState;

endmodule
