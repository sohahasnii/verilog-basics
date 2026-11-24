
module jk_masterslave_tb;

reg J, K, clk;
wire Q, Qbar;

// Instantiate DUT
jk_masterslave uut (
    .J(J),
    .K(K),
    .clk(clk),
    .Q(Q),
    .Qbar(Qbar)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Input stimulus
initial begin
    J = 0;
    K = 0;

    #10;
    J = 0; K = 0;  // Hold

    #10;
    J = 1; K = 0;  // Set

    #10;
    J = 0; K = 0;  // Hold

    #10;
    J = 0; K = 1;  // Reset

    #10;
    J = 1; K = 1;  // Toggle

    #20;
    J = 0; K = 0;

    #10;
    $finish;
end

// Monitor output
initial begin
    $monitor("Time=%0t | CLK=%b | J=%b | K=%b | Q=%b | Qbar=%b",
              $time, clk, J, K, Q, Qbar);
end

endmodule
