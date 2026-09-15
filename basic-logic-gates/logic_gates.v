module logic_gates(input wire A ,
                   input wire B,
                   output wire OR_ , AND_ , NOT_ , NOR_ , NAND_ , XOR_ , XNOR_ );
assign  OR_   =  A|B; 
assign  AND_  =  A&B; 
assign  NOT_  =  ~A;  // NOT A 
assign  NOR_  =  ~(A|B);    
assign  NAND_ =  ~(A&B);
assign  XOR_  =  ((A&(~B))|((~A)&B));
assign  XNOR_ =  ~(((A&(~B))|((~A)&B)));
endmodule
