module half_adder(input wire A ,
input wire B , 
output wire Sum , 
output wire Cout );
assign Cout = A&B;
assign Sum = ( (A^B) + Cout);

endmodule
