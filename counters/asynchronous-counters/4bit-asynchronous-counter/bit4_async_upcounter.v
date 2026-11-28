module bit4_async_upcounter (
    input clk,
    input reset,
    output reg [3:0] q
);

    always @(negedge clk or posedge reset)
    begin
        if (reset)
            q[0] <= 1'b0;
        else
            q[0] <= ~q[0];
    end

   
endmodule
