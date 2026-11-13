
module bit2_upcounter_tb;

reg clk;
reg reset;
wire [1:0] count;

// Instantiate DUT
bit2_upcounter uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Test stimulus
initial begin
    $monitor("Time=%0t | Reset=%b | Count=%b",
              $time, reset, count);

    reset = 1;
    #10;

    reset = 0;
    #100;

    $finish;
end

endmodule
