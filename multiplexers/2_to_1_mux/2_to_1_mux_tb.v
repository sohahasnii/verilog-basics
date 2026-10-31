`timescale 1ns / 1ps

module mux_2to1_tb;

reg I0;
reg I1;
reg S;

wire Y;

mux_2to1 uut (
    .I0(I0),
    .I1(I1),
    .S(S),
    .Y(Y)
);

initial begin

    // I0=0, I1=0, S=0
    I0 = 0;
    I1 = 0;
    S = 0;
    #100;

    // I0=0, I1=1, S=0
    I0 = 0;
    I1 = 1;
    S = 0;
    #100;

    // I0=1, I1=0, S=0
    I0 = 1;
    I1 = 0;
    S = 0;
    #100;

    // I0=1, I1=1, S=0
    I0 = 1;
    I1 = 1;
    S = 0;
    #100;

    // I0=0, I1=0, S=1
    I0 = 0;
    I1 = 0;
    S = 1;
    #100;

    // I0=0, I1=1, S=1
    I0 = 0;
    I1 = 1;
    S = 1;
    #100;

    // I0=1, I1=0, S=1
    I0 = 1;
    I1 = 0;
    S = 1;
    #100;

    // I0=1, I1=1, S=1
    I0 = 1;
    I1 = 1;
    S = 1;
    #100;

    $finish;

end

endmodule
