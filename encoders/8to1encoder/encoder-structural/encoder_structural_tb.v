
`timescale 1ns / 1ps

module encoder_structural_tb;

    reg [7:0] d;
    wire [2:0] y;
   integer i;

    encoder_structural uut (
        .d(d),.y(y)
    );

    initial begin
       
        $monitor("Time=%0t D=%b Y=%b", $time, d, y);

        for (i = 0; i < 8; i = i + 1)
        begin
            d = 8'b00000001 << i;
            #10;
        end

        $finish;
    end

endmodule
