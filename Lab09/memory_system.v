
module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output reg [7:0] memory
);

    wire [7:0] data0, data1, data2, data3;
    wire store0, store1, store2, store3;

    wire [7:0] mem0, mem1, mem2, mem3;
    assign data0 = (addr == 2'b00) ? data : 8'b0;
    assign data1 = (addr == 2'b01) ? data : 8'b0;
    assign data2 = (addr == 2'b10) ? data : 8'b0;
    assign data3 = (addr == 2'b11) ? data : 8'b0;

    assign store0 = store && (addr == 2'b00);
    assign store1 = store && (addr == 2'b01);
    assign store2 = store && (addr == 2'b10);
    assign store3 = store && (addr == 2'b11);

    byte_memory b0(.data(data0), .store(store0), .memory(mem0));
    byte_memory b1(.data(data1), .store(store1), .memory(mem1));
    byte_memory b2(.data(data2), .store(store2), .memory(mem2));
    byte_memory b3(.data(data3), .store(store3), .memory(mem3));

    always @(*) begin
        case (addr)
            2'b00: memory = mem0;
            2'b01: memory = mem1;
            2'b10: memory = mem2;
            2'b11: memory = mem3;
        endcase
    end

endmodule
