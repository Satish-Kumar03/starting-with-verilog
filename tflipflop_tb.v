module ttest;
   reg t,clk,rst;
   wire q, qbar;
   Tflipflop DUT(.t(t),.clk(clk),.q(q),.qbar(qbar),.rst(rst));

   initial begin
    clk = 1'b0; rst=1'b1;
    forever #5 clk =~clk;
   end

   initial begin
    $monitor($time, "t=%b, clk=%b, q=%b",t,clk,q);
    #5 rst=1'b0;
    #5 t=1'b0;
    
    repeat(10) #5 t=~t;
    #50 $finish;
   end
endmodule