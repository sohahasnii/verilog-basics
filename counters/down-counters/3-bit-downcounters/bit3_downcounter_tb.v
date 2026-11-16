
module bit3_downcounter_tb;

reg clk;
reg reset;
wire [2:0] count;

bit3_downcounter uut(
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

// Display output
initial begin
    $monitor("Time=%0t Reset=%b Count=%b",
              $time, reset, count);
end

endmodule
