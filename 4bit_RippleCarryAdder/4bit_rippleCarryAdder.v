`include "FA.v"

module ripple_FA (
    s,cout,A,B,cin
);
    output [3:0] s;
    output cout;
    input [3:0] A, B;
    input cin;

    wire c1,c2,c3;

    fullAdder fa0(s[0] , c1, A[0], B[0], cin) ;
    fullAdder fa1(s[1] , c2, A[1], B[1], c1) ;
    fullAdder fa2(s[2] , c3, A[2], B[2], c2) ;
    fullAdder fa3(s[3] , cout, A[3], B[3], c3) ;
    
endmodule