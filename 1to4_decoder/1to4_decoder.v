// 1:4 Decoder
// Inputs  : EN, A, B
// Outputs : Y0, Y1, Y2, Y3

module 1to4_decoder (
    input  wire EN,
    input  wire A,
    input  wire B,
    output wire Y0,
    output wire Y1,
    output wire Y2,
    output wire Y3
);

assign Y0 = EN & ~A & ~B;
assign Y1 = EN & ~A &  B;
assign Y2 = EN &  A & ~B;
assign Y3 = EN &  A &  B;

endmodule
