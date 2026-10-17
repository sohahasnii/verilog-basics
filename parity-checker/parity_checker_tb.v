module parity_checker_tb;

  reg [3:0] in;
    reg parity_bit;
    reg parity_type;
    wire error;

    parity_checker uut (
      .in(in),
        .parity_bit(parity_bit),
        .parity_type(parity_type),
        .error(error)
    );

    initial begin
        // Even parity - correct
        in = 4'b1010;
        parity_bit = 1'b0;
        parity_type = 1'b0;
        #10;

        // Even parity - error
        in = 4'b1010;
        parity_bit = 1'b1;
        parity_type = 1'b0;
        #10;

        // Odd parity - correct
        in = 4'b1010;
        parity_bit = 1'b1;
        parity_type = 1'b1;
        #10;

        // Odd parity - error
        in = 4'b1010;
        parity_bit = 1'b0;
        parity_type = 1'b1;
        #10;

        // Even parity - correct
        in = 4'b1110;
        parity_bit = 1'b1;
        parity_type = 1'b0;
        #10;

        $finish;
    end
