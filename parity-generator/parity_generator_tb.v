module parity_generator_tb;

reg  [3:0] data;
wire even_parity;
wire odd_parity;

parity_generator dut (
    .data(data),
    .even_parity(even_parity),
    .odd_parity(odd_parity)
);

initial begin
    $monitor("Time=%0t data=%b even=%b odd=%b",
             $time, data, even_parity, odd_parity);

    data = 4'b0000; #10;
    data = 4'b0001; #10;
    data = 4'b0011; #10;
    data = 4'b0111; #10;
    data = 4'b1111; #10;
    data = 4'b1010; #10;

    $finish;
end

endmodule
