// Testbench for 1:2 Decoder

module decoder_1to2_tb;

reg A;
reg EN;
wire Y0;
wire Y1;

// Instantiate the decoder
decoder_1to2 uut (
    .A(A),
    .EN(EN),
    .Y0(Y0),
    .Y1(Y1)
);

initial begin

    // Display results
    $monitor("Time=%0t | EN=%b A=%b | Y0=%b Y1=%b",
             $time, EN, A, Y0, Y1);

    // Test cases
    EN = 0; A = 0;
    #10;

    EN = 0; A = 1;
    #10;

    EN = 1; A = 0;
    #10;

    EN = 1; A = 1;
    #10;

    $finish;
end

endmodule
