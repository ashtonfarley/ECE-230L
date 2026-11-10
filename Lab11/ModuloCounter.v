module ModuloCounter (
    input wire clk,
    input wire reset,
    output wire [2:0] count,
    output wire out
);

    wire [2:0] incremented_count;
    wire [2:0] next_count;
    wire [3:0] carry;

    wire terminal_count;
    wire next_out;

    // Detect count = 5 (binary 101)
    assign terminal_count = (count == 3'b101);

    // Increment the current count using three full adders
    assign carry[0] = 1'b1;

    FullAdder FA0 (
        .A(count[0]),
        .B(1'b0),
        .Cin(carry[0]),
        .Sum(incremented_count[0]),
        .Cout(carry[1])
    );

    FullAdder FA1 (
        .A(count[1]),
        .B(1'b0),
        .Cin(carry[1]),
        .Sum(incremented_count[1]),
        .Cout(carry[2])
    );

    FullAdder FA2 (
        .A(count[2]),
        .B(1'b0),
        .Cin(carry[2]),
        .Sum(incremented_count[2]),
        .Cout(carry[3])
    );

    // Reset counter to zero when it reaches 5
    assign next_count = terminal_count
                      ? 3'b000
                      : incremented_count;

    // Toggle output whenever count reaches 5
    assign next_out = out ^ terminal_count;

    // Counter state storage
    DFlipFlop DFF0 (
        .D(next_count[0]),
        .clk(clk),
        .reset(reset),
        .Q(count[0])
    );

    DFlipFlop DFF1 (
        .D(next_count[1]),
        .clk(clk),
        .reset(reset),
        .Q(count[1])
    );

    DFlipFlop DFF2 (
        .D(next_count[2]),
        .clk(clk),
        .reset(reset),
        .Q(count[2])
    );

    // Output storage
    DFlipFlop OUT_DFF (
        .D(next_out),
        .clk(clk),
        .reset(reset),
        .Q(out)
    );

endmodule