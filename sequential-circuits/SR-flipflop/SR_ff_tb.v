
`timescale 1ns / 1ps

module SR_ff_tb;

    reg clk;
    reg S, R;
    wire Q, Qbar;

    // Instantiate the design
   SR_ff uut (
        .clk(clk),
        .S(S),
        .R(R),
        .Q(Q),
        .Qbar(Qbar)
    );

    // Generate clock: 10 ns period
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        S = 0;
        R = 1;  // Initialize by resetting Q

        // Reset
        #10;
        $display("Reset: S=%b R=%b Q=%b", S, R, Q);

        // Set
        S = 1;
        R = 0;
        #10;
        $display("Set:   S=%b R=%b Q=%b", S, R, Q);

        // Hold
        S = 0;
        R = 0;
        #10;
        $display("Hold:  S=%b R=%b Q=%b", S, R, Q);

        // Reset again
        S = 0;
        R = 1;
        #10;
        $display("Reset: S=%b R=%b Q=%b", S, R, Q);

        // Forbidden condition — simulation only
        S = 1;
        R = 1;
        #10;
        $display("Invalid: S=%b R=%b Q=%b", S, R, Q);

        $finish;
    end

endmodule
