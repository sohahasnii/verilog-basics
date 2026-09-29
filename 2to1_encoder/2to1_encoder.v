// 2:1 Encoder
// Inputs  : D0, D1
// Output  : Y

module encoder_2to1 (
    input  wire D0,
    input  wire D1,
    output wire Y
);

assign Y = D1;

endmodule
