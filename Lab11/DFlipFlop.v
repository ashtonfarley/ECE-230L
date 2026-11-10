module DFlipFlop(
    input D,
    input clk,
    input reset,
    output reg Q,
    output Qbar
);

    initial begin
        Q = 0;
    end

    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 0;
        else
            Q <= D;
    end

    assign Qbar = ~Q;

endmodule