module demuxtest;
    reg x;
    reg [1:0] s;
    wire [3:0] y;
    demux DUT(.x(x), .sel(s), .out(y));

    initial begin
        $monitor($time, "input = %b, select = %b, output = %b", x,s,y);
        #5 x=1; s=2'b00;
        #5 s=2'b10;
        #5 s=2'b11;
        #5 s=2'b01;
        #5 $finish;

    end
endmodule
