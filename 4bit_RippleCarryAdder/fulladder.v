module fullAdder (
    sum,Cout,a,b,Cin
);
    input a, b , Cin;
    output reg sum, Cout;

    always @(a or b or Cin) begin
        sum = a^b^Cin;
        Cout = a&b | (a^b)&Cin ;
    end
endmodule
