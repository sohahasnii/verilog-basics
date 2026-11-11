module t_ff_tb;

reg clk;
reg reset;
reg T;
wire Q;

t_ff uut(
    .clk(clk),
    .reset(reset),
    .T(T),
    .Q(Q)
);

// Clock generation
initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Test cases
initial
begin
    reset = 1;
    T = 0;

    #10 reset = 0;

    // T = 0: No change
    T = 0;
    #10;

    // T = 1: Toggle
    T = 1;
    #10;
    #10;
    #10;

    // T = 0: Hold previous state
    T = 0;
    #20;

    // T = 1: Toggle again
    T = 1;
    #20;

    // Reset test
    reset = 1;
    #10;
    reset = 0;

    #20;
    $finish;
end

initial
begin
    $monitor("Time=%0t | Reset=%b | T=%b | Q=%b",
              $time, reset, T, Q);
end

endmodule
