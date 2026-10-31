// Testbench for 1:4 Demultiplexer

module demux_1to4_tb;

reg D,EN,S1,S0;
wire Y0,Y1,Y2,Y3;


demux_1to4 uut (
    .D(D),
    .EN(EN),
    .S1(S1),
    .S0(S0),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin

    $monitor("Time=%0t | EN=%b D=%b S1=%b S0=%b | Y0=%b Y1=%b Y2=%b Y3=%b",
             $time, EN, D, S1, S0, Y0, Y1, Y2, Y3);

    // Enable = 0
    EN = 0; D = 1; S1 = 0; S0 = 0;
    #10;
    EN = 1; D = 1; S1 = 0; S0 = 0;
    #10;
    EN = 1; D = 1; S1 = 0; S0 = 1;
    #10;
    EN = 1; D = 1; S1 = 1; S0 = 0;
    #10;
    EN = 1; D = 1; S1 = 1; S0 = 1;
    #10;
    EN = 1; D = 0; S1 = 0; S0 = 0;
    #10;
    $finish;
end

endmodule
