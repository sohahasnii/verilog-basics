module logic_gates_tb;
reg A, B;
wire  OR_ , AND_ , NOT_ , NOR_ , NAND_ , XOR_ , XNOR_ ;

  logic_gates dut( A , B , OR_ , AND_ , NOT_ , NOR_ , NAND_ , XOR_ , XNOR_);

initial begin
A = 0; B = 0;
#10;
A = 0; B = 1;
#10;
A = 1; B = 0;
#10;
A = 1; B = 1;
#10;
$finish;
end
endmodule
