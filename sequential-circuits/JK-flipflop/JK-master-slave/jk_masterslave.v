module jk_master_slave (
    input J, K, clk,
    output reg Q,
    output wire Qbar
);

reg Qm;

assign Qbar = ~Q;

// Master latch
always @(J or K or clk)
begin
    if (clk == 1'b1)
        Qm <= (J & ~K & Q) |
              (~J & K & 1'b0) |
              (~J & ~K & Qm) |
              (J & K & ~Q);
end

// Slave latch
always @(Qm or clk)
begin
    if (clk == 1'b0)
        Q <= Qm;
end

endmodule
