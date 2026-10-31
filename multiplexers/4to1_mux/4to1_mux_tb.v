`timescale 1ns / 1ps

module mux_4to1_tb;

reg I0, I1, I2, I3;
reg S0, S1;

wire Y;

mux_4to1 uut (
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .S0(S0),
    .S1(S1),
    .Y(Y)
);

initial begin

    I0 = 0; I1 = 0; I2 = 0; I3 = 0;

    S1 = 0; S0 = 0;
    #100;

    S1 = 0; S0 = 1;
    #100;

    S1 = 1; S0 = 0;
    #100;

    S1 = 1; S0 = 1;
    #100;

    I0 = 1; I1 = 0; I2 = 0; I3 = 0;
    S1 = 0; S0 = 0;
    #100;

    I0 = 0; I1 = 1; I2 = 0; I3 = 0;
    S1 = 0; S0 = 1;
    #100;

    I0 = 0; I1 = 0; I2 = 1; I3 = 0;
    S1 = 1; S0 = 0;
    #100;

    I0 = 0; I1 = 0; I2 = 0; I3 = 1;
    S1 = 1; S0 = 1;
    #100;

    $finish;

end

endmodule
