module randombench;
    reg [3:0] x,y ;
    reg c;
    wire [3:0] out;
    random DUT(.a(x), .b(y), .temp(c), .d(out));

    initial begin
        $monitor($time, "a=%b, b=%b, temp=%b, d=%b", x,y,c,out);
        #5 x=4'b0010; y=4'b0100; c=1'b0;
        #5 x=4'b1111; y=4'b0000; 
        #5 c=1'b1;
        #5 x=4'b1010; 
        #5 $finish;

    end
endmodule