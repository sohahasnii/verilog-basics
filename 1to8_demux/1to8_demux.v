// 1:8 Demultiplexer

module demux_1to8 (
    input  wire D,
    input  wire EN,
    input  wire S2,
    input  wire S1,
    input  wire S0,
    output wire Y0,
    output wire Y1,
    output wire Y2,
    output wire Y3,
    output wire Y4,
    output wire Y5,
    output wire Y6,
    output wire Y7
);

assign Y0 = EN & D & ~S2 & ~S1 & ~S0;
assign Y1 = EN & D & ~S2 & ~S1 &  S0;
assign Y2 = EN & D & ~S2 &  S1 & ~S0;
assign Y3 = EN & D & ~S2 &  S1 &  S0;
assign Y4 = EN & D &  S2 & ~S1 & ~S0;
assign Y5 = EN & D &  S2 & ~S1 &  S0;
assign Y6 = EN & D &  S2 &  S1 & ~S0;
assign Y7 = EN & D &  S2 &  S1 &  S0;

endmodule
