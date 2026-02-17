
`timescale 100ps/10ps

module alutest;
    reg [15:0] x,y;
    wire s,z,c,p,o;
    wire [15:0] sum;

    ALU DUT(.x(x),.z(sum), .y(y), .sign(s), .zero(z), .carry(c), .parity(p), .overflow(o));

    initial begin
        $monitor($time, "x=%h, y=%h, sum= %h, sign=%b, zero=%b, carry=%b, parity=%b, overflow=%b", x,y,sum,s,z,c,p,o);
        #5 x=16'h8fff; y=16'h8000;
        #5 x=16'hfffe; y=16'h0002;
        #5 x=16'haaaa; y=16'h5555;
        #5 $finish;
    end
endmodule
