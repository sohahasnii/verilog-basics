module bit3_upcounter_tb;

reg clk, reset;
wire [2:0] count;

bit3_upcounter uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Test sequence
initial begin
    reset = 1;
    #10;

    reset = 0;

    #100;

    $finish;
end

endmodule
