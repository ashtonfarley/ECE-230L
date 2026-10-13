module half_sub(
    input A,  B,
    output Y, Cout
);

    assign Y = (A ^ B);
    
    assign Cout = (~A & B);
    
endmodule