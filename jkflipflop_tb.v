module jktest;
   reg j,k,clk;
   wire q, qbar;
   JKflipflop DUT(.j(j), .k(k), .q(q), .qbar(qbar), .clk(clk));

   initial begin
    clk = 1'b0;
    forever #5 clk =~clk;
   end

   initial begin
    $monitor($time, "j=%b, k=%b, clk=%b, q=%b",j,k,clk,q);
    #5 j=1'b0;k=1'b0;
    #5 j=1'b1;
    #5 j=1'b0;k=1'b1;
    #5 j=1'b1;
    #5 $finish;
   end
endmodule