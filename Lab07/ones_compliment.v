module ones_compliment(
    input [3:0] A, B,
    input Cin,
    output [3:0] Y, Cout
);

wire [3:0] w_carry1;
wire [3:0] w_carry2;
wire [3:0] APlusB;
wire around;

     full_adder full_adder1_inst(
            .A(A[0]),
            .B(B[0]),
            .Cin(1'b0),
            .Y(APlusB[0]),
            .Cout(w_carry1[0]));
            
      full_adder full_adder2_inst(
            .A(A[1]),
            .B(B[1]),
            .Cin(w_carry1[0]),
            .Y(APlusB[1]),
            .Cout(w_carry1[1]));
            
     full_adder full_adder3_inst(
            .A(A[2]),
            .B(B[2]),
            .Cin(w_carry1[1]),
            .Y(APlusB[2]),
            .Cout(w_carry1[2]));
            
     full_adder full_adder4_inst(
            .A(A[3]),
            .B(B[3]),
            .Cin(w_carry1[2]),
            .Y(APlusB[3]),
            .Cout(around));
            
     full_adder full_adder5_inst(
            .A(APlusB[0]),
            .B(1'b0),
            .Cin(around),
            .Y(Y[0]),
            .Cout(w_carry2[0]));
            
     full_adder full_adder6_inst(
            .A(APlusB[1]),
            .B(1'b0),
            .Cin(w_carry2[0]),
            .Y(Y[1]),
            .Cout(w_carry2[1]));
            
     full_adder full_adder7_inst(
            .A(APlusB[2]),
            .B(1'b0),
            .Cin(w_carry2[1]),
            .Y(Y[2]),
            .Cout(w_carry2[2]));
            
     full_adder full_adder8_inst(
            .A(APlusB[3]),
            .B(1'b0),
            .Cin(w_carry2[2]),
            .Y(Y[3]),
            .Cout(w_carry2[3]));

endmodule