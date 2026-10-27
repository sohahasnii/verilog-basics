
module JK_ff (
    input wire clk,
    input wire J,
    input wire K,
    output reg Q,
    output wire Qbar
);

    assign Qbar = ~Q;

    always @(posedge clk) begin
        case ({J, K})
            2'b00: Q <= Q;       // Hold
            2'b01: Q <= 1'b0;     // Reset
            2'b10: Q <= 1'b1;     // Set
            2'b11: Q <= ~Q;       // Toggle
        endcase
    end

endmodule
