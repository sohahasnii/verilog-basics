module bit2_downcounter (
    input clk,
    input reset,
    output reg [1:0] count
);

always @(posedge clk or posedge reset)
begin
    if (reset)
        count <= 2'b11;
    else
        count <= count - 1'b1;
end

endmodule
