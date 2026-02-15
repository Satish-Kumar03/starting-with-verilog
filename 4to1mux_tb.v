module muxtest;
    reg [15:0] in; reg [3:0] sel;
    wire out;
    mux16 DUT(.in(in), .sel(sel), .out(out));

    initial begin
        $monitor($time, "in = %h, sel = %h, out = %b", in,sel,out);

        #5 in=16'h3f0a;sel=4'h0;
        #5 sel=4'h1;
        #5 sel=4'h6;
        #5 sel=4'hc;
        #5 $finish;
    end
endmodule