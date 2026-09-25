// Testbench for 1:8 Demultiplexer

module demux_1to8_tb;

reg D,EN,S2,S1,S0;
wire Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;

1to8_demux uut (
    .D(D),
    .EN(EN),
    .S2(S2),
    .S1(S1),
    .S0(S0),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3),
    .Y4(Y4),
    .Y5(Y5),
    .Y6(Y6),
    .Y7(Y7)
);

initial begin

    $monitor("Time=%0t | EN=%b D=%b S2=%b S1=%b S0=%b | Y=%b%b%b%b%b%b%b%b",
             $time, EN, D, S2, S1, S0,
             Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0);

    // Disable
    EN = 0; D = 1; S2 = 0; S1 = 0; S0 = 0;
    #10;
    EN = 1; D = 1; S2 = 0; S1 = 0; S0 = 0;
    #10;
    S2 = 0; S1 = 0; S0 = 1;
    #10;
    S2 = 0; S1 = 1; S0 = 0;
    #10;
    S2 = 0; S1 = 1; S0 = 1;
    #10;
    S2 = 1; S1 = 0; S0 = 0;
    #10;
    S2 = 1; S1 = 0; S0 = 1;
    #10;
    S2 = 1; S1 = 1; S0 = 0;
    #10;
    S2 = 1; S1 = 1; S0 = 1;
    #10;
    $finish;
end

endmodule
