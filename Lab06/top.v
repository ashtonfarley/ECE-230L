module top(
    input [7:0]sw,
    output [5:0]led
);

wire w_Cout;


    light light_inst(
            .downstairs(sw[0]),
            .upstairs(sw[1]),
            .stairway_light(led[0])
            );
       
    adder adder_inst(
            .A(sw[2]),
            .B(sw[3]),
            .Y(led[1]),
            .Cout(led[2])
            );
            
    full_adder full_adder_inst(
            .A(sw[4]),
            .B(sw[6]),
            .Cin(1'b0),
            .Y(led[3]),
            .Cout(w_Cout));
            
     full_adder full_adder2_inst(
            .A(sw[5]),
            .B(sw[7]),
            .Cin(w_Cout),
            .Y(led[4]),
            .Cout(led[5]));
            
      
            
endmodule