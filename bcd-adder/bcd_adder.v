module bcd_adder (
    input  [3:0] A,
    input  [3:0] B,
    input        carry_in,

    output reg [3:0] sum,
    output reg       carry_out
);

    reg [4:0] binary_sum;
    reg [4:0] corrected_sum;

    always @(*) begin
        binary_sum = A + B + carry_in;
        if (binary_sum > 5'd9)
            corrected_sum = binary_sum + 5'd6;
        else
            corrected_sum = binary_sum;

        // BCD output
        sum       = corrected_sum[3:0];
        carry_out = corrected_sum[4];

    end

endmodule
