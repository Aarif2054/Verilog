`include "carry_lookahead_4bit.v"

module stimulus (
);  
    reg [3:0] A,B;
    reg C_in;
    wire [3:0] SUM;
    wire C_out;

    carry_lookahead_4bit adder(SUM,C_out,A,B,C_out);

    
    initial begin
        $monitor($time, " A=%b,  B=%b,  SUM=%b,   Carry=%b \n",A,B,SUM,C_out);
    end
    initial begin
        A=4'b0111 ; B=4'b0011; C_in=1'b0;
        #5
        A=4'b1000 ; B=4'b0100; C_in=1'b0;
        #5
        A=4'b1010 ; B=4'b0101; C_in=1'b0;
    end

endmodule