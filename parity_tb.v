module paritytest;
   reg clk, x;
   wire state,y;
   peirity P1(.clk(clk), .x(x), .y(y), .state(state));

   initial begin
     clk = 1'b0;
     $dumpfile("parity.vcd");
     $dumpvars(0,paritytest);
   end

   always #5 clk = ~clk;
   
   initial begin
     $monitor("%d , x=%b, state=%b, y=%b", $time, x,state,y);  

    #2 x=1'b0; #10 x=1'b1; #10 x=1'b1; #10 x=1'b1; #10 x=1'b0;
    #10 x=1'b1; #10 x=1'b1; #10 x=1'b0; #10 x=1'b1; #10 x=1'b1;
    #10 x=1'b0; #10 x=1'b1; #10 x=1'b1; #10 x=1'b0; #10 x=1'b1;
    #10 $finish;
   end

endmodule
