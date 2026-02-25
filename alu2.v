module ALU2 #(
    parameter N = 4
) (
    input [N-1:0] x,y, input [2:0] sel, output reg [2*N-1:0] out
);
    always @(*) begin
        case (sel)
           3'b000 : out = x+y;
           3'b001 : out = x-y;
           3'b010 : out = x*y;
           3'b011 : out = x/y;
           3'b100 : out = x^y;
           3'b101 : out = x%y;
           3'b110 : out = x << 1;
           3'b111 : out = x >> 1;

            default: out = 0;
        endcase
    end
endmodule