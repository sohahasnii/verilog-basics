`timescale 1ns / 1ps

module bcd_7seg_tb;

    reg [3:0] bcd;
    wire [6:0] seg;
    integer i;

    bcd_7seg uut (
        .bcd(bcd),
        .seg(seg)
    );

    initial begin
        $monitor("Time=%0t BCD=%b seg=%b",
                  $time, bcd, seg);

        for (i = 0; i < 10; i = i + 1) begin
            bcd = i;
            #10;
        end

        $finish;
    end

endmodule
