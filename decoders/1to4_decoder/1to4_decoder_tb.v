// Testbench for 1:4 Decoder

module 1to4_decoder_tb;

reg EN , A , reg B;

wire Y0 ,Y1 , Y2 , Y3;



1to4_decoder uut (
    .EN(EN),
    .A(A),
    .B(B),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin

    $monitor("Time=%0t | EN=%b A=%b B=%b | Y0=%b Y1=%b Y2=%b Y3=%b",
             $time, EN, A, B, Y0, Y1, Y2, Y3);

    // Enable = 0
    EN = 0; A = 0; B = 0;
    #10;

    // Enable = 1
    EN = 1; A = 0; B = 0;
    #10;

    EN = 1; A = 0; B = 1;
    #10;

    EN = 1; A = 1; B = 0;
    #10;

    EN = 1; A = 1; B = 1;
    #10;

    $finish;
end

endmodule
