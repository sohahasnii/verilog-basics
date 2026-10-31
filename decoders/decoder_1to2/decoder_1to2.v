// 1:2 Decoder
// Input : A
// Enable: EN
// Outputs: Y0, Y1

module decoder_1to2 (
    input  wire A,
    input  wire EN,
    output wire Y0,
    output wire Y1
);

assign Y0 = EN & ~A;
assign Y1 = EN & A;

endmodule
