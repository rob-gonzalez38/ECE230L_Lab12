// Implement one-hot state machine
module onehot(
    input w,
    input clk,
    input reset,
    output z,
    output [4:0] state
);

    wire A_next, B_next, C_next, D_next, E_next;
    wire A_state, B_state, C_state, D_state, E_state;

    dff A_dff(
        .Default(1'b1),
        .D(A_next),
        .clk(clk),
        .reset(reset),
        .Q(A_state)
    );

    dff B_dff(
        .Default(1'b0),
        .D(B_next),
        .clk(clk),
        .reset(reset),
        .Q(B_state)
    );

    dff C_dff(
        .Default(1'b0),
        .D(C_next),
        .clk(clk),
        .reset(reset),
        .Q(C_state)
    );

    dff D_dff(
        .Default(1'b0),
        .D(D_next),
        .clk(clk),
        .reset(reset),
        .Q(D_state)
    );

    dff E_dff(
        .Default(1'b0),
        .D(E_next),
        .clk(clk),
        .reset(reset),
        .Q(E_state)
    );

    assign z = C_state | E_state;

    assign A_next = 1'b0;
    assign B_next = ~w & (A_state | D_state | E_state);
    assign C_next = ~w & (B_state | C_state);
    assign D_next =  w & (A_state | B_state | C_state);
    assign E_next =  w & (D_state | E_state);

    assign state = {E_state, D_state, C_state, B_state, A_state};

endmodule