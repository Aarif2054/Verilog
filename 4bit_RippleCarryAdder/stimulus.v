`include "4bit_rippleCarryAdder.v"
module stimulus (
);
    reg [3:0] A,B;
    reg C_in;
    wire [3:0] SUM;
    wire C_out;

    ripple_FA ra(SUM,C_out,A,B,C_in);

    initial 
    begin
        $monitor($time, "A=%b, B=%b, -----SUM=%b, C_out=%b\n" , A, B, SUM, C_out);
    end

    initial begin
        A=4'b0110 ; B=4'b1010; C_in=1'b0;
        #5
        A=4'b1000 ; B=4'b0100;
        #5
        A=4'b1010 ; B=4'b0101; 
    end
endmodule