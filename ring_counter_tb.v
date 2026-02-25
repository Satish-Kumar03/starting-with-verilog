module ringtest;
 parameter N=8;
 reg init, clk;
 wire [N-1:0]count;
 ring_counter DUT(.init(init), .clk(clk), .count(count));

 initial begin
    clk = 1'b0;
   forever #5 clk=~clk;
 end

 initial begin
    $monitor($time, "clk=%b, init=%b, count=%b", clk, init, count );
    #5 init=1'b1;
    #5 init=1'b0;
    #95 $finish;
 end
endmodule
