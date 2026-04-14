// Implement binary state machine
module binary(
    input w,
    input clk,
    input reset,
    output z,
    output [2:0] state
);

    wire [2:0] next;

    //DFF's
    dff dff0(
        .Default(1'b0), //If we reset, go back to default
        .D(next[0]),
        .clk(clk),
        .reset(reset),
        .Q(state[0])
    );

    dff dff1(
        .Default(1'b0),
        .D(next[1]),
        .clk(clk),
        .reset(reset),
        .Q(state[1])
    );

    dff dff2(
        .Default(1'b0),
        .D(next[2]),
        .clk(clk),
        .reset(reset),
        .Q(state[2])
    );



    // z = 1 in states C = 010 and E = 100
    assign z = (~state[2] & state[1] & ~state[0]) |
               ( state[2] & ~state[1] & ~state[0]);



    // Next-state logic
    assign next[2] = (w & state[2]) |
                     (w & state[1] & state[0]);

    assign next[1] = (state[0] & ~state[1]) |
                     (state[1] & ~state[0]) |
                     (w & ~state[0] & ~state[2]);

    assign next[0] = (~w & ~state[0] & ~state[1]) |
                     (~w & state[0] & state[1]) |
                     (w & ~state[0] & ~state[2]) |
                     (w & ~state[1] & ~state[2]);

endmodule