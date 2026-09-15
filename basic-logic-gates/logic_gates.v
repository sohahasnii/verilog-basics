module logic_gates(
    input wire A ,
    input wire B ,
    output wire OR_ ,
    output wire AND_ ,
    output wire NOT_ ,
    output wire NOR_ , 
    output wire NAND_ ,
    output wire XOR_ ,
    output wire XNOR_
);

assign OR_   = A | B;
assign AND_  = A & B;
assign NOT_  = ~A;
assign NOR_  = ~(A | B);
assign NAND_ = ~(A & B);
assign XOR_  = A ^ B;
assign XNOR_ = A ~^ B;

endmodule
