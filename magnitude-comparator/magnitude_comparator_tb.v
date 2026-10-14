`timescale 1ns/1ps

module tb_magnitude_comparator;

    reg  [3:0] A, B;
    wire A_greater, A_less, A_equal;

    magnitude_comparator uut (
        .A(A),
        .B(B),
        .A_greater(A_greater),
        .A_less(A_less),
        .A_equal(A_equal)
    );

    initial begin
        $monitor("Time=%0t A=%d B=%d | A>B=%b A<B=%b A==B=%b",
                 $time, A, B,
                 A_greater, A_less, A_equal);

        A = 4'd9; B = 4'd5; //to test
        #10;

        A = 4'd3; B = 4'd7; 
        #10;

        A = 4'd6; B = 4'd6; 
        #10;

        A = 4'd15; B = 4'd2; 
        #10;

        $finish;
    end
