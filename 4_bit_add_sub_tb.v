module testbench;
   reg [3:0] a,b;
   reg m;
   wire [3:0] sum;
   wire cout;
   bits DUT(sum,cout,a,b,m);

   initial begin
    $monitor("m = %b, a = %b, b = %b, sum = %b, cout = %b", m, a,b, sum, cout);
        //  #5 m=1'b0; a=4'b0000; b=4'b0000;
        //  #5 m=1'b1; a=4'b1000; b=4'b0010;
        //  #5 a=4'b0010; b=4'b1000;
         #5 m=1'b1;a=4'b0111; b=4'b0001; 
         #5 $finish; 
   end
endmodule   