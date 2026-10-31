// Testbench for 2:1 Encoder

module encoder_2to1_tb;

reg D0;
reg D1;
wire Y;

2to1_encoder uut (
    .D0(D0),
    .D1(D1),
    .Y(Y)
);

initial begin

    $monitor("Time=%0t | D0=%b D1=%b | Y=%b",
             $time, D0, D1, Y);

    // D0 active
    D0 = 1; D1 = 0;
    #10;

    // D1 active
    D0 = 0; D1 = 1;
    #10;

    // No input active
    D0 = 0; D1 = 0;
    #10;

    // Both inputs active - invalid condition
    D0 = 1; D1 = 1;
    #10;

    $finish;
end

endmodule
