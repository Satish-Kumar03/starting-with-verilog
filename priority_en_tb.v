module enc_test;
    reg [7:0] x; wire [2:0] y;
    pri_encoder DUT(.in(x), .out(y));

    initial begin
        $monitor($time, "in = %b, out = %b", x,y);
        #5 x=8'b0101000;
        #5 x=8'b1000101;
        #5 x=8'b1010101;
        #5 x=8'b1000100;
        #5 x=8'b0000111;
        #5 x=8'b0000001;
        #5 x=8'b0011111;
        #5 x=8'b0000000;
        #5 $finish;
    end
endmodule