`timescale 1ns / 1ps
module full_adder_tb;
reg i0;
reg i1;
reg sel;
wire y;

mux_2x1 uut (i0,i1,sel,y
);

initial begin
i0=0; i1=1; sel=0; #10;
i0=0; i1=1; sel=1; #10;
i0=1; i1=0; sel=0; #10;
i0=1; i1=0; sel=1; #10;
$finish;
end
endmodule
