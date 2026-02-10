module testbench;
   reg [3:0] a,b;
   wire [3:0] y;
   compare DUT(y,a,b);

   initial begin
    $monitor($time, "a= %b, b = %b, y = %b", a,b,y);

    #5 a=4'b0000; b=4'b0000;
    #5 a=4'b0010; b=4'b0100;
    #5 a=4'b1000; b=4'b0001;
    #5 $finish;
   end
endmodule   