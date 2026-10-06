module light(
    input upstairs, downstairs,
    output stairway_light
);

    assign stairway_light = (upstairs ^ downstairs);

endmodule 