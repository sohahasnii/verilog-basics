`timescale 1ns / 1ps

module alu_case_tb;

    reg [3:0] a, b;
    reg [2:0] sel;
    wire [3:0] y;
    integer i;

    alu_case uut (
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );

    initial begin
        a = 4'b0101;
        b = 4'b0011;

        $monitor("Time=%0t a=%b b=%b sel=%b y=%b",
                  $time, a, b, sel, y);

        for (i = 0; i < 8; i = i + 1) begin
            sel = i;
            #10;
        end

        $finish;
    end

endmodule
