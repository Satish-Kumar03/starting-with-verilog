module demux(x,sel,out);
    input x;
    input [1:0] sel;
    output [3:0] out;
    reg [3:0] out;
    pamareter s0=0, s1=1, s2=2, s3=3;
    
    always @(sel,x) begin
        case (sel)
          s0  : begin
            out[0] = x;
            out[1] = 1'b0;
            out[2] = 1'b0;
            out[3] = 1'b0;
          end
          s1 : begin
            out[0] = 1'b0;
            out[1] = x;
            out[2] = 1'b0;
            out[3] = 1'b0;
          end
          s2 : begin
            out[0] = 1'b0;
            out[1] = 1'b0;
            out[2] = x;
            out[3] = 1'b0;
          end
          s3 : begin
            out[0] = 1'b0;
            out[1] = 1'b0;
            out[2] = 1'b0;
            out[3] = x;
          end
            default : out = 4'b0000;
        endcase
    end
endmodule
