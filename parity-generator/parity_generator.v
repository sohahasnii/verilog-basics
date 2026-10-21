module parity_generator (
    input  wire [3:0] data,
    output wire even_parity,
    output wire odd_parity
);

assign even_parity = ^data;
assign odd_parity  = ~^data;

endmodule
