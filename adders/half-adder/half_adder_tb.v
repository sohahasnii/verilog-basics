module half_adder_tb;
reg A , B;
wire Sum,Cout;

half_adder dut (A,B,Sum,Cout);
initial begin
A = 0 ;  B = 0;
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
