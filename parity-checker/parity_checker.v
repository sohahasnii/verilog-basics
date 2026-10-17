module parity_checker (
  input  [3:0] in,
    input        parity_bit,
    input        parity_type,
    output       error
);

    wire calcd_parity;

    assign calcd_parity = ^in;

    assign error = (calcd_parity ^ parity_bit)
                   ^ ~parity_type;

endmodule
