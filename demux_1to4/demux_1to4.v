// 1:4 Demultiplexer
module demux_1to4 (
    input  wire D,EN,S1,S0;
    output wire Y0,Y1,Y2,Y3;
);

assign Y0 = EN & D & ~S1 & ~S0;
assign Y1 = EN & D & ~S1 &  S0;
assign Y2 = EN & D &  S1 & ~S0;
assign Y3 = EN & D &  S1 &  S0;

endmodule
