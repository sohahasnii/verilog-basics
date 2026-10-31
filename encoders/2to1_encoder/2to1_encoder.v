// 2:1 Encoder
// Inputs  : D0, D1
// Output  : Y

module 2to1_encoder (
    input  wire D0,
    input  wire D1,
    output wire Y
);

assign Y = D1 & ~D0;

endmodule
