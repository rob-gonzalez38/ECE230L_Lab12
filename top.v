module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    // Hook up binary and one-hot state machines

    wire z_onehot;
    wire z_binary;
    wire [4:0] onehot_state;
    wire [2:0] binary_state;

    onehot onehot_fsm(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(z_onehot),
        .state(onehot_state)
    );

    binary binary_fsm(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(z_binary),
        .state(binary_state)
    );

    assign led[0] = z_onehot;
    assign led[1] = z_binary;
    assign led[6:2] = onehot_state;
    assign led[9:7] = binary_state;

endmodule