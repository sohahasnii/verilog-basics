module bit2_downcounter_tb;

reg clk, reset;
wire [1:0] count;

bit2_downcounter uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    reset = 1;
    #10;

    reset = 0;
    #50;

    reset = 1;
    #10;

    reset = 0;
    #50;

    $finish;
end

initial begin
    $monitor("Time=%0t Reset=%b Count=%b",
              $time, reset, count);
end

endmodule
