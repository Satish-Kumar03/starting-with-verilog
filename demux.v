module demux(x,sel,out);
    input x;
    input [1:0] sel;
    output [3:0] out;
    reg [3:0] out;

    always @(sel,x) begin
        case (sel)
          2'b00  : begin
            out[0] = x;
            out[1] = 1'b0;
            out[2] = 1'b0;
            out[3] = 1'b0;
          end
          2'b01 : begin
            out[0] = 1'b0;
            out[1] = x;
            out[2] = 1'b0;
            out[3] = 1'b0;
          end
          2'b10 : begin
            out[0] = 1'b0;
            out[1] = 1'b0;
            out[2] = x;
            out[3] = 1'b0;
          end
          2'b11 : begin
            out[0] = 1'b0;
            out[1] = 1'b0;
            out[2] = 1'b0;
            out[3] = x;
          end
            default : out = 4'b0000;
        endcase
    end
endmodule